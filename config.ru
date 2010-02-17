# Rackup for Membership Management
require 'rubygems'
require 'thread'
require 'vendor/environment'
require 'sinatra'
require 'dm-core'
require 'rack-flash'
require 'erb'

Dir[Pathname(__FILE__).dirname + "models" + "**/*.rb"].each { |file| require file }

set :environment, :production
set :port, 3000

disable :run, :reload

require 'killddit'

run Killddit
