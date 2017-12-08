class PremieresController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :create, :edit, :update]

  def show
    @item = Premiere.find_by(slug: params[:slug])
  end

end