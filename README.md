# vault-ruby-wrapper 

This is a tiny gem to wrap the vault ruby api to one line call Vault generic secrets!

## Installation
Build and install gem:
```
clone the repository
gem uninstall vault-ruby-wrapper ; rm vault-ruby-wrapper-* ; gem build *.gemspec ; gem install vault-ruby-wrapper-*
```

## Usage
Within a ruby script:
```
require 'vault-ruby-wrapper'
dev_list = Vault.data_bag('developer-accounts')
dev = Vault.data_bag_item('developer-accounts', 'peregrin_took')
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request ;)
