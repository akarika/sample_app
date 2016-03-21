class SessionsController < ApplicationController
  def new
    @titre = "S'identifier"
  end

  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    session[:current_user_id] = @user.id
    if user.nil?
      flash.now[:danger] = 'Combinaison Email/Mot de passe invalide.'
      @titre = "S'identifier"
      render 'new'
    else
      sign_in user
      redirect_to user
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end