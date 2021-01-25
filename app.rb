# frozen_string_literal: true

require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

# The BookmarkManager class is the main class.
class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    bookmarks = [
      'https://www.google.co.uk/'
    ]
  end
end