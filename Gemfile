source 'http://rubygems.org'

gem 'rails', '3.1'
gem "paperclip", "2.3.8"
gem 'active_scaffold', :git => 'git://github.com/activescaffold/active_scaffold.git'
gem 'devise'
gem 'thin'

if defined?(JRUBY_VERSION)
  gem 'activerecord-jdbc-adapter'
else
  gem 'mysql2'

  group :development, :test do
    gem 'ruby-debug19', :require => 'ruby-debug'
  end
end

