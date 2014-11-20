# Capistrano::Froxlor

Add Froxlor cli functions to capistrano. This gem does not deploy Froxlor itself.

# Requirements

capistrano 3.x

## Cap configuration

```ruby
set :frx_db_auth, 'froxlor:froxlor_db_password@localhost'

set :frx_customer, 'customer_user_name'
set :frx_domains, -> do
  [
    "subdomain2.parent_domain.com" => {
      :customer => 'customer_user_name',
      :domain_docroot => "/var/customers/webs/customer_user_name/mywebroot",
      :openbasedir_path_home => true,
      :sub_domain_parent => 'parent_domain.com'
    },
    'subdomain2.parent_domain.com' => {
      :customer => 'customer_user_name',
      :domain_docroot => "/var/customers/webs/customer_user_name/mywebroot",
      :openbasedir_path_home => true,
      :sub_domain_parent => 'parent_domain.com'
    }
  ]
end
```

## Usage

```bash
cap froxlor:admin:master_cronjob     # run master cron job
cap froxlor:customer:create_db       # create db for customer based on latest name
cap froxlor:customer:create_domains  # create or recreate (sub)domains
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-froxlor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-froxlor

Add this line to your Capfile

```ruby
require 'capistrano/froxlor'
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/capistrano-froxlor/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
