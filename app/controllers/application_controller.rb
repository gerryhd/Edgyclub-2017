class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!, only: [:make_a_rent, :remove_rent_item, :empty_rents,
                                            :confirm_rent]

  def index
    @movies = Movie.order('created_at').paginate(page: params[:page], per_page: 8)
    @premiers = Premiere.order('created_at').paginate(page: params[:page], per_page: 8)

  end

  def make_a_rent
    @page = params[:page]
    @movies = Movie.order('created_at').paginate(page: params[:page], per_page: 4)
    @item = Movie.find_by(slug: params[:slug]) || Premiere.find_by(slug: params[:slug])

    unless (@item.nil?)
      result, message = add_to_rent_cart @item
      flash.now[result] = message
    end

    @rent_cart = rent_cart_items
    #@rent = current_rent
    #@rent_cart = current_rent.rent_items
    #@movies = Movie.paginate(page: params[:page], per_page: 4)
    
    respond_to do |format|
      format.html
      format.json
    end
  end

  def remove_rent_item
    remove_from_rent_cart params[:title]
   
    redirect_to make_a_rent_path
  end

  def empty_rents
    clean_movie_list

    redirect_to make_a_rent_path

  end

  def confirm_rent

    if should_it_pass?
      @redirect = true

      clean_movie_list

      flash.now[:success] = "Su renta fue concretada satisfactoriamente."
    else
      flash.now[:danger] = "Su renta no pudo ser concreatada porque presenta adeudos en rentas."
    end

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
  
  private

  def clean_movie_list
    session[:rent_cart] = []
  end
  def should_it_pass?
    [true, true, true, false].sample
  end

  def rent_cart_items
    @rent_cart_items = []

    return @rent_cart_items if session[:rent_cart].nil?

    session[:rent_cart].each do |rent_item_title|
      @rent_cart_items << Movie.find_by(movie_id: rent_item) || Premiere.find_by(title: rent_item_title)
    end

    @rent_cart_items
  end

  def add_to_rent_cart(item)
    rent_cart = session[:rent_cart]
    
    if rent_cart.include? item
      return :error, "La película ya está en su lista."
    elsif rent_cart.count >= 5
      return :error, "¡No puede rentar más en una sola renta!"
    else
      session[:rent_cart] << item.title
      return :success, "La película fue agregada."
    end
  end

  def remove_from_rent_cart(item)
    session[:rent_cart].delete(item)
  end

end
