
require 'bundler/setup'
Bundler.require 
require_all 'app'

ENV['SINATRA_ENV'] ||= 'development'

ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: "db/#{ENV['SINATRA_ENV']}.sqlite"
)

configure :development do
    set :database, 'sqlite3:db/development.sqlite'
end