source "https://rubygems.org"

ruby "3.3.5"
# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.0"
gem "devise"
gem "importmap-rails"
gem "jbuilder"
gem "ostruct"
gem "propshaft"
gem "puma", ">= 5.0"
gem "stimulus-rails"
gem "sqlite3", ">= 2.1"
gem "tailwindcss-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

group :development, :test do
  gem "factory_bot_rails"
  gem "rspec-rails"
end

group :test do
  gem "capybara"
  gem "shoulda-matchers", "~> 6.0"
end
