source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'pg'
gem 'rails', '~> 5.0.2'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'coffee-script-source', '~> 1.12', '>= 1.12.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'haml', '~> 4.0', '>= 4.0.7'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'simple_form', '~> 3.4'						  
gem 'devise', '~> 4.2', '>= 4.2.1'                
gem 'carrierwave', '~> 1.0'                       #avatar
gem 'mini_magick', '~> 4.6'                       
gem 'kaminari', '~> 1.0', '>= 1.0.1'              #pagination
gem 'ransack', '~> 1.8', '>= 1.8.2'               #search
gem 'cancan', '~> 1.6', '>= 1.6.10'               #authorization outdated/not used
gem 'cancancan', '~> 1.16'
gem 'morrisjs-rails', '~> 0.5.1.2' 
gem 'raphael-rails', '~> 2.1', '>= 2.1.2' 
gem 'gon', '~> 6.2'
gem "fog-aws"
gem "figaro"





# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end
group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

