require_relative "./config/environment"

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# Our application
run ApplicationController
run MaintenanceRequestsControllers
# use OwnersControllers
# use UnitsControllers


##will i need a use ModelControllers here? yes, for each model
#for run MaintenanceRequest - match class name
#for controllers, match file name