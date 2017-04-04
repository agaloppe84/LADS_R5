class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]
  before_action :find_product, only: [ :new, :create, :edit, :update, :destroy, :show, :index ]

  def index
    @brands = Brand.all
  end

  def show
  end

  def new
    @brand = Brand.new
    render layout: false
  end

  def create
    @brand = @product.brands.build(brand_params)
    if @brand.save
      redirect_to dashboard_path, notice: "La marque #{@brand.name} à été crée"
    else
      render :new
    end
  end

  def edit
    render layout: false
  end

  def update
    @brand.update(brand_params)
    redirect_to dashboard_path, notice: "La marque #{@brand.name} à été mise à jour"
  end

  def destroy
    @brand.destroy
    redirect_to dashboard_path, notice: "La marque #{@brand.name} à été effacée"
  end




  private

  def set_brand
    @brand = Brand.find(params[:id])
  end

  def find_product
    @product = Product.find(params[:product_id])
  end

  def brand_params
    params.require(:brand).permit(:name, :product_id, :logo)
  end
end
