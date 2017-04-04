class InfosController < ApplicationController
  before_action :find_product, only: [ :new, :create, :edit, :update, :destroy, :show, :index ]
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @infos = Info.all
  end

  def show
  end

  def new
    @info = Info.new
    render layout: false
  end

  def create
    @info = @product.infos.build(info_params)
    if @info.save
      redirect_to dashboard_path, notice: "L'info pour #{@product.title} à été crée"
    else
      render :new
    end
  end

  def edit
    @info = Info.find(params[:id])
    render layout: false
  end

  def update
    @info = Info.find(params[:id])
    @info.update(info_params)
    redirect_to dashboard_path, notice: "L'info #{@info.title} à été mise à jour"
  end

  def destroy
    @info = Info.find(params[:id])
    @info.destroy
    redirect_to dashboard_path, notice: "L'info #{@info.title} à été effacée"
  end


  private

  def info_params
    params.require(:info).permit(:title, :product_id, :content, :icon)
  end
  def find_product
    @product = Product.find(params[:product_id])
  end
end
