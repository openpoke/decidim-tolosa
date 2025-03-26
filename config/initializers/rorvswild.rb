# frozen_string_literal: true

if ENV["RORVSWILD_API_KEY"].present?
  RorVsWild.start(
    api_key: ENV["RORVSWILD_API_KEY"],
    ignore_exceptions: [
      "ActionController::RoutingError",
      "ActiveRecord::RecordNotFound",
      "ActionView::MissingTemplate",
      "ActionController::InvalidCrossOriginRequest",
      "ActionController::InvalidAuthenticityToken"
    ],
    deployment: {
      revision: ENV.fetch("REVISION", ENV.fetch("APP_REVISION", "")),
      author: ENV.fetch("AUTHOR", nil),
      description: ENV.fetch("DESCRIPTION", nil),
      email: ENV.fetch("EMAIL", nil)
    }
  )
end
