source 'http://rubygems.org'

gem 'rails', '3.0.5'
gem "paperclip", "2.3.8"

if defined?(JRUBY_VERSION)
  gem 'activerecord-jdbc-adapter'
else
  gem 'mysql2'

  group :development, :test do
    gem 'ruby-debug19', :require => 'ruby-debug'
  end
end

