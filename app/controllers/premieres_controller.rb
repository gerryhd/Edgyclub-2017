class PremieresController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :create, :edit, :update]

  def show
    @premiere = Premiere.find_by(slug: params[:slug])
  end

end