class Recipe < ActiveRecord::Base
  include HTTParty

  key_value = '9ff0224486848a2f617edcc7f8a29883'
  host_port = 'www.food2fork.com'

  base_uri "http://#{host_port}/api"
  default_params key: key_value
  format :json

  def self.for(keyword)
    get('/search', query: {q: keyword})['recipes']
  end
end
