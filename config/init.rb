require 'rubygems'
require 'bundler'

Bundler.require :default, ENV['RACK_ENV'] || :development
Dotenv.load
Sequel::Model.db = Sequel.connect(ENV['DATABASE_URL'])

Dir.glob(Dir.pwd + '/lib/**/*.rb').each { |file| require_relative(file) }
Dir.glob(Dir.pwd + '/models/**/*.rb').each { |file| require_relative(file) }
Dir.glob(Dir.pwd + '/concepts/**/*.rb').each { |file| require_relative(file) }
