source "https://rubygems.org"

# Declare your gem's dependencies in lines.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

group :development do
  gem 'capistrano'
  gem 'yard'
  gem 'autoprefixer-rails'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.14.0'
  gem 'factory_girl_rails', require: false
  gem 'railroady'
  gem 'thor'
end

group :test do
  gem 'faker'
  gem 'capybara'
  gem 'guard-rspec', '= 4.2.0'
  gem 'rb-inotify', '~> 0.9'
  gem 'launchy'
end
