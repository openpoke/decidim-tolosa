# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { github: "decidim/decidim", branch: "release/0.28-stable" }.freeze
gem "decidim", DECIDIM_VERSION
# gem "decidim-conferences", DECIDIM_VERSION
# gem "decidim-design", DECIDIM_VERSION
# gem "decidim-elections", DECIDIM_VERSION
# gem "decidim-initiatives", DECIDIM_VERSION
gem "decidim-decidim_awesome"
gem "decidim-templates", DECIDIM_VERSION
gem "decidim-term_customizer", github: "mainio/decidim-module-term_customizer", branch: "l10n_main"

gem "bootsnap", "~> 1.3"
gem "deface"
gem "health_check"
gem "puma", ">= 6.3.1"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "brakeman", "~> 5.4"
  gem "decidim-dev", DECIDIM_VERSION
  gem "net-imap", "~> 0.2.3"
  gem "net-pop", "~> 0.1.1"
  gem "net-smtp", "~> 0.3.1"
  gem "rubocop-rspec", "~> 2.20.0"
end

group :development do
  gem "letter_opener_web", "~> 2.0"
  gem "listen", "~> 3.1"
  gem "web-console", "~> 4.2"
end

group :production do
  gem "appsignal"
  gem "sidekiq"
  gem "sidekiq-cron"
end
