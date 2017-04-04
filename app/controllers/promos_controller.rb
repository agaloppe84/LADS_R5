class PromosController < ApplicationController
  before_action :set_promo, only: [:show, :edit, :update, :destroy]
  before_action :find_type, only: [ :new, :create, :edit, :update, :destroy, :show ]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @promos = Promo.all
    @active_promos = Promo.where(current: true)
  end

  def show
  end

  def new
    @promo = Promo.new
    render layout: false
  end

  def create
    @promo = @type.promos.build(promo_params)
    if @promo.save
      redirect_to dashboard_path, notice: "La promo #{@promo.title} à été crée"
    else
      render :new
    end
  end

  def edit
    render layout: false
  end

  def update
    @promo.update(promo_params)
    redirect_to dashboard_path, notice: "La promo #{@promo.title} à été mise à jour"
  end

  def destroy
    @promo.destroy
    redirect_to dashboard_path, notice: "La promo #{@promo.title} à été effacée"
  end



  private

  def set_promo
    @promo = Promo.find(params[:id])
  end

  def find_type
    @type = Type.find(params[:type_id])
  end

  def promo_params
    params.require(:promo).permit(:title, :description, :start, :current, :end, :type_id, photos: [])
  end

end
