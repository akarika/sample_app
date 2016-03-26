class UsersController < ApplicationController
  before_filter :authenticate, only: [:edit, :index, :update]
  before_filter :correct_user, only: [:edit, :update]
  before_filter :admin_user, only: :destroy
  def new
    @titre = 'Inscription'
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @titre = @user.nom
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Bienvenue dans l'application Exemple!"
      redirect_to @user
    else
      @titre = 'Inscription'
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    @titre = "Édition profil"
    # code
  end

  def update
    if @user.update_attributes(params[:user])
      flash[:succes] = "Profil actualisé."
      redirect_to @user
    else
      @titre = 'Edition profil'
      render 'edit'
    end
  end

  def edit
    @titre = 'Edition profil'
  end

  def index
    @titre = 'Tous les utilisateurs'
    @users = User.paginate(page: params[:page])
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Utilisateur supprimé."
    redirect_to users_path
  end

  private

  def authenticate
    deny_acces unless signed_in?
      # code
    end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end
  def admin_user
    redirect_to(root_path) unless current_user.admin?
    #code
  end
end
