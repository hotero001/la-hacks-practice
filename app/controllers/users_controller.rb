class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update]

	def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def show
  	
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:notice] = "You have successfuly registered a new Cowboy"
  		redirect_to root_path
  	else
  		flash[:notice] = "That cowboy's name is already taken. Pick another."
  		render :new
  	end
  end

  def update
  	if @user.update(user_params)
  		flash[:notice] = "You have successfully saved a new Cowboy, go on now and let er buck"
  		redirect_to user_path(@user)
  	else
  		flash[:notice] = "NOT SAVED"
  	end
  end

  def destroy

  end

  def edit

  end

  private

  def user_params
  	params.require(:user).permit(:username)
  end

  def set_user
  	@user = User.find(params[:id])
  end
end
