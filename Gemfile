source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.3'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'bootstrap-sass', '~> 3.3.6'
gem 'devise', '~> 4.2'

gem 'toastr-rails', '~> 1.0'

gem 'figaro'

gem 'omniauth', '~> 1.6'
gem 'omniauth-facebook', '~> 4.0'

gem 'paperclip', '~> 5.1.0'
gem 'aws-sdk', '~> 2.8'

gem 'geocoder', '~> 1.4'
gem 'jquery-ui-rails', '~> 5.0'

gem 'ransack', '~> 1.7'
