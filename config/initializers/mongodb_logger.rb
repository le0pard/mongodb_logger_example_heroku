require 'mongodb_logger/server' # required

# callback for errors

MongodbLogger::Base.configure do |config|
  config.on_log_exception do |mongo_record|
    STDOUT.puts "##################### Error begin ###########################"
    STDOUT.puts mongo_record.inspect
    STDOUT.puts "#####################  Error end  ###########################"
  end
end


# this secure you web interface by basic auth, but you can skip this, if you no need this
MongodbLogger::Server.use Rack::Auth::Basic do |username, password|
  [username, password] == ['demo', 'password']
end