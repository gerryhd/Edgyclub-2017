class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    @movies = Movie.order('created_at').paginate(page: params[:page], per_page: 16)
    @premieres = Premiere.order('created_at').paginate(page: params[:page], per_page: 16)
     
    render 'landing/index'

  end

  def after_sign_in_path_for(resource)
    movies_path
  end

  protected

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to user_login_path, notice: "Debe iniciar sesión primero."
    end
  end


end
