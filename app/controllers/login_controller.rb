class LoginController < ApplicationController
  def index
	
  end
  def show
	login_email=params[:person][:email]
	login_pass=params[:person][:password]
	@person=Person.where(email:login_email,password:login_pass).ids
	val = @person.first
	if @person.count==0
	  flash[:notice]="Invalid Email or Password"
		redirect_to :back
	else
		redirect_to person_path("#{val}")
	end
  end
end
