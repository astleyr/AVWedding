require 'sinatra'
require 'pony'

get '/' do
    erb :index
end

post '/' do
    # name = params[:name]
    # mail = params[:email]
    # body = params[:body]
    # Pony.mail(:to => 'astleyrampersad@gmail.com', :from => mail, :subject => 'Wedding' + name, :body => body)
    redirect to '/'
end


error do
  @error = request.env['sinatra_error']
  erb :error
end

not_found do
  erb :page_missing
end

