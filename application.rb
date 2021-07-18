# frozen_string_literal: true

require 'sinatra/base'
require 'http'
require 'pry'
require 'pp'

class Application < Sinatra::Base
  post '/test' do
    request.body.rewind
    @payload = JSON.parse(request.body.read)
    pry
    content_type 'text/xml'
    @payload
  end
end
