class ProductsController < ApplicationController
  before_action :find_type, only: [ :new, :create, :edit, :update, :destroy, :show, :index ]
  skip_before_action :authenticate_user!, only: [:show, :index, :edit, :update]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    render layout: false
  end

  def new
    @product = Product.new
    render layout: false
  end

  def create
    @product = @type.products.build(product_params)
    if @product.save
      redirect_to dashboard_path(@product), notice: "#{@product.title} à été crée"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    render layout: false
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to dashboard_path(@product), notice: "#{@product.title} à été mis à jour"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to dashboard_path, notice: "#{@product.title} à été effacé"
  end


  private

  def set_product
    @product = Product.find(params[:id])
  end

  def find_type
    @type = Type.find(params[:type_id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :type_id, photos: [])
  end
end
