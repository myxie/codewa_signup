class SignupsController < ApplicationController
  
  def new
    @signup= Signup.new
  end

  def create
    @signup = Signup.new(params.require(:signup).permit(:email))
      if @visitor.save
      redirect_to root_path, notice: "Signed up #{@signup.email}."
    else
      render :new
    end
  end

end
