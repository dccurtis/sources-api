require "sources/api/clowder_config"

if !Rails.env.test? && Sources::Api::ClowderConfig.instance['metricsPort'].to_s != '0'
  # require 'prometheus_exporter/middleware'

  # This reports stats per request like HTTP status and timings
  # Rails.application.middleware.unshift(PrometheusExporter::Middleware)
end
