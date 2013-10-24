require 'sinatra/base'
require 'airbrake'

Airbrake.configure do |config|
  config.api_key = '29cfc3598cb07e8e39f596a29431ec0d'

  config.proxy_host = 'localhost'
  config.proxy_port = 10001

  config.proxy_user = 'mikz'
  config.proxy_pass = 'fsdfdsfdsfdsf'
end

class BrainslugTest < Sinatra::Base
  use Airbrake::Rack
  enable :raise_errors

  get "/" do
    raise "Sinatra has left the building"
  end
end
