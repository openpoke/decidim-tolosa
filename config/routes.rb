# frozen_string_literal: true

require "sidekiq/web"
require "sidekiq/cron/web"

Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  end

  namespace :admin do
    resources :iframe, only: [:index]
  end

  mount Decidim::FileAuthorizationHandler::AdminEngine => "/admin"
  mount Decidim::Core::Engine => "/"
end
