class AccountsController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    @user = User.find(paramas[:id])
    @user.update(event_params)
    redirect_to accounts_update_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to accounts_destroy
  end

end

 private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
