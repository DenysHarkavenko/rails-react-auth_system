Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # change this to the desired address
    origin 'http://localhost:5137'
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end
end
