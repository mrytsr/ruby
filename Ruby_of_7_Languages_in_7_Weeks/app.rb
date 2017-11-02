#!/bin/env ruby
require "sinatra/base"

require "sinatra/reloader"

require './ruby_helper'

class MyApp < Sinatra::Base

  include RubyHelper

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  get '/test/:name.rb' do

    filename = File.expand_path("#{params[:name]}.rb", 'exam')
    if File.exists?(filename)
       result = eval_script_method(filename, params[:method])
       # binding.pry
       result
    else
      'File not found'
    end
  end
  
  get '/dashboard/:file_name' do
    erb :dashboard
  end
  
  get '/result' do
    
    @arr_str = []
    (1..5).each_with_index do |item, i|
      result = run_test_by_filename item
      result = result.slice(0, result.length-1)
      arr = result ? result.split('|') : '__测试执行错误__'
      @arr_str.push(arr)
    end
    
    erb :result
  end

  # start the server if ruby file executed 
  run! if app_file == $0
end
