# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { github: "decidim/decidim", branch: "release/0.30-stable" }.freeze
gem "decidim", DECIDIM_VERSION
gem "decidim-decidim_awesome", github: "decidim-ice/decidim-module-decidim_awesome", branch: "main"
gem "decidim-file_authorization_handler", github: "CodiTramuntana/decidim-file_authorization_handler", branch: "master"
gem "decidim-templates", DECIDIM_VERSION
gem "decidim-term_customizer", github: "openpoke/decidim-module-term_customizer", branch: "release/0.30-stable"

gem "bootsnap"
gem "deface"
gem "health_check"
gem "puma"
gem "rails_semantic_logger"
gem "sentry-rails"
gem "sentry-ruby"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "brakeman"
  gem "decidim-dev", DECIDIM_VERSION
end

group :development do
  gem "letter_opener_web"
  gem "listen"
  gem "web-console"
end

group :production do
  gem "sidekiq"
  gem "sidekiq-cron"
end
