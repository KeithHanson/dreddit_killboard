DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/apo15-sqlite3-v1.db")

class Killddit < Sinatra::Base
  enable :sessions
  use Rack::Flash
  
  set :root, File.dirname(__FILE__)
  set :public, File.dirname(__FILE__) + "/public"
  enable :static
  
  # Routes
  
end