require 'sinatra/base'
require 'airbrake'

Airbrake.configure do |config|
  config.api_key = '29cfc3598cb07e8e39f596a29431ec0d'
end

class BrainslugTest < Sinatra::Base
  use Airbrake::Rack
  enable :raise_errors

  get "/" do
    raise "Sinatra has left the building"
  end
end
