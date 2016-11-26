class PersonController < ApplicationController
  def index
  end
  def new
  end
  def create
 	@person=Person.new(params.fetch(:person,{}).permit(:name, :email, :password, :age, :gender, :country, :accept))
	if @person.save
		flash[:notice] = "Succes"
		render  :action => "show"
	else
		flash[:notice]="error"
		render :action => "create"
	end
  end
  def show
	@person=Person.find(params[:id])
  end
end
