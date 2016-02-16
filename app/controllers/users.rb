

class UsersController < ApplicationController

#
# get '/users' do
#   @params =  params
#   erb :'users/index'
# end

post 'new' do

  @user=User.new(name: params[:name], username: params[:username], email: params[:email], password: params[:password])

  # if @user.save
  #   authorize(@user)
  #   redirect "/users/#{@user.id}"
  # else
  #   session[:errors] = @user.errors
  #   redirect "/users/new"
  # end

end

# get '/users/new' do
#   # @errors = session[:errors]
#   # render'users/new'
# end

get '/users/:id' do
  # if authorized? user
  #   @user=User.find(session[:id])
  #   #current_user = @user
  #   @sessions = session
  # erb :'users/index'
  # else
  #   @errors = "Please login to your account"
  #  redirect 'tmp/regerror'
  # end
end

end


