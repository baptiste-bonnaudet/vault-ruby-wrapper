require 'vault'

module Vault
  VALID_NAME = /^[\.\-[:alnum:]_]+$/

  def self.validate_name!(name)
    unless name =~ VALID_NAME
      raise "DataBags must have a name matching #{VALID_NAME.inspect}, you gave #{name.inspect}"
    end
  end

  def self.secret_data(secret)
    mysecret = nil
    Vault.with_retries(Vault::HTTPConnectionError, attempts: 5) do
        mysecret = Vault.logical.read("secret/#{secret}") # rubocop:disable Lint/AssignmentInCondition
    end
    return mysecret.data if mysecret
    raise "Secret '#{secret}' returned an empty value"
  end

  def self.data_bag(secret)
    validate_name!(secret)
    return secret_data(secret).keys.collect{|k| k.to_s}
  end
  
  def self.data_bag_item(secret, item)
    validate_name!(secret)
    validate_name!(item)

    data = secret_data(secret)[item.to_sym]
    unless data.to_s.strip.empty?
      return JSON.parse(data)
    end
    raise 'item does not exist'
  end
end
