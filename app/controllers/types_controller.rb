class TypesController < ApplicationController
  before_action :set_type, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @types = Type.all
  end

  def show
  end

  def new
    @type = Type.new
    render layout: false
  end

  def create
    @type = Type.new(type_params)
    if @type.save
      redirect_to dashboard_path, notice: "Nouvelle catégorie crée: #{@type.name}"
    else
      render :new
    end
  end

  def edit
    render layout: false
  end

  def update
    if @type.update(type_params)
      redirect_to dashboard_path, notice: "La catégorie #{@type.name} à été mise à jour"
    else
      render :new
    end
  end

  def destroy
    @type.destroy
    redirect_to dashboard_path, notice: "Catégorie effacée : #{@type.name}"
  end




  private

  def set_type
    @type = Type.find(params[:id])
  end

  def type_params
    params.require(:type).permit(:name, :color)
  end


end
