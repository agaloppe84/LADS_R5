class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :services, :devis, :contact, :promo, :photos]

  def home
    @fontastic_icons = Info.iconsarray
    @products = Product.all
    @promos = Promo.all
    @albums = Album.all
    @last_promo = Promo.where("current = 'true'").last
    @types = Type.all
    @random_album = @albums.all.map { |album| album.photos.sample(2) }
  end

  def services
  end

  def devis
  end

  def photos
    @albums = Album.all
  end

  def contact
  end

  def dashboard
    @products = Product.all
    @albums = Album.all
    @infos = Info.all
    @promos = Promo.all
    @types = Type.all
    @brands = Brand.all
    @photos = @albums.all.map { |album| album.photos.count }
  end

  def quotaconfirm
  end

  def promotions
    @last_promo = Promo.all.last
  end

end
