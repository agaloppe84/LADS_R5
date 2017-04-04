class PowersController < ApplicationController
  before_action :find_product, only: [ :new, :create, :edit, :update, :destroy, :show, :index ]
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @powers = Power.all
  end

  def show
  end

  def new
    @power = Power.new
    render layout: false
  end

  def create
    @power = @product.powers.build(power_params)
    if @power.save
      redirect_to dashboard_path, notice: "Le pouvoir pour #{@product.title} a été crée"
    else
      render :new
    end
  end


  def edit
    @power = Power.find(params[:id])
    render layout: false
  end


  def update
    @power = Power.find(params[:id])
    @power.update(power_params)
    redirect_to dashboard_path, notice: "Le pouvoir pour #{@product.title} à été mis à jour"
  end

  def destroy
    @power = Power.find(params[:id])
    @power.destroy
    redirect_to dashboard_path, notice: "Le pouvoir pour #{@product.title} à été effacé"
  end


  private

  def power_params
    params.require(:power).permit(
      :product_id,
      :wind,
      :cold,
      :hot,
      :humidity,
      :energysaver,
      :taxsaver,
      :insects,
      :security,
      :sun,
      :rain,
      :inside,
      :outside,
      :certification
    )
  end

  def find_product
    @product = Product.find(params[:product_id])
  end

end
