class AlbumsController < ApplicationController
  before_action :find_type, only: [ :new, :create, :edit, :update, :destroy, :show, :index ]
  skip_before_action :authenticate_user!, only: [ :show, :index, :edit, :update, :new, :create ]

  def index
    @albums = Album.all
  end

  def show
  end

  def new
    @album = Album.new
    render layout: false
  end

  def create
    @album = @type.albums.build(album_params)
    if @album.save
      redirect_to dashboard_path, notice: "Album crée pour #{@type.name}"
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
    render layout: false
  end

  def update
    @album = Album.find(params[:id])
    @album.update(album_params)
    redirect_to dashboard_path, notice: "Album mis à jour pour #{@type.name}"
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to dashboard_path, notice: "Album effacé pour #{@type.name}"
  end


  private

  def album_params
    params.require(:album).permit(:name, :type_id, photos: [])
  end
  def find_type
    @type = Type.find(params[:type_id])
  end
end
