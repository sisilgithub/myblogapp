class SessionsController < ApplicationController
  def new
  	@latest_posts= Post.all
  end


  def create
  	@latest_posts= Post.all


  	user=User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		log_in user
  		redirect_to user
  	else
  		flash.now[:danger] = 'Invalid email/password combination'
  		render 'new'
  	end
  end	

  def destroy
    log_out
    redirect_to root_url  
  end

 end
