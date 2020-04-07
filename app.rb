require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "|Pk=*H}zFe]-|+E]7Gchn5q8|~B9VDDBmsV@&g. z+z!B/|+/|P_#^)SwT}%WLzt"
  end

  get '/' do
    @session = session
    # binding.pry
    erb :index
  end

  post '/checkout' do
    @session = session
    @session[:item] = params[:item]

    erb :cart
  end

end
