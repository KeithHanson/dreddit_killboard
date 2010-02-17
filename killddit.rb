DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/apo15-sqlite3-v1.db")

class Killddit < Sinatra::Base
  enable :sessions
  use Rack::Flash
  
  set :root, File.dirname(__FILE__)
  set :public, File.dirname(__FILE__) + "/public"

  enable :static
  
  def config
    @@config ||= YAML.load(File.read("#{Dir.pwd}/config/settings.yml"))
  end

  # Routes

  get '/' do
    config.inspect
  end
  
end
