require 'mongodb_logger/server' # required
# this secure you web interface by basic auth, but you can skip this, if you no need this
MongodbLogger::Server.use Rack::Auth::Basic do |username, password|
  [username, password] == ['admin', 'password']
end