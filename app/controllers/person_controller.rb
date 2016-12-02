class PersonController < ApplicationController
  def index
  end
  def new
  end
  def edit
	@person=Person.find(params[:id])
  end
  def create
 	@person=Person.new(params.fetch(:person,{}).permit(:name, :email, :password,:password_confirmation, :age, :gender, :country, :accept))
	if @person.save
		flash[:notice] = "Succes"
		render  :action => "show"
	else
		error=@person.errors.full_messages.first if @person.errors.any?
		flash[:notice]=error
		render :action => "new"
	end
  end
  def show
	@person=Person.find(params[:id])
  end
  def update
  	@person=Person.find(params[:id])
	if @person.update_attributes(params.fetch(:person,{}).permit(:name, :email, :password, :age, :gender, :country))
		flash[:notice] = "Updated Successfully"
                render  :action => "show"
	else
		Rails.logger.info(@user.errors.messages.inspect)
		flash[:notice] = "Update Fails"
                redirect_to  :action => "show"
	end
  end
  def destroy
  	@person=Person.find(params[:id])
        @person.destroy
	flash[:notice]="Deleted Successfully"
	redirect_to "/"
        
  end
end
