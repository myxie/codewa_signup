class SignupsController < ApplicationController

  def index
      @signup = Signup.all
  end   
  def new
    @signup= Signup.new
  end

  def create
    @signup = Signup.new(params.require(:signup).permit(:email))
      if @signup.save
      	redirect_to root_path, notice: "Signed up #{@signup.email}."
    else
      render 'new'
    end
  end

end
