source 'http://rubygems.org'

gem 'rails', '3.0.4'

if defined?(JRUBY_VERSION)
  gem 'activerecord-jdbc-adapter'
  gem 'jdbc-sqlserver'
else
  gem 'tiny_tds'
  gem 'activerecord-sqlserver-adapter'
end

group :development, :test do
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'rspec-rails'
end
