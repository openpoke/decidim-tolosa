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
    author: ENV["AUTHOR"],
    description: ENV["DESCRIPTION"],
    email: ENV["EMAIL"]
  }
) if ENV["RORVSWILD_API_KEY"].present?