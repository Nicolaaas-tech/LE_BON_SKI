class MaterialsController < ApplicationController
  before_action only: [:index, :new, :edit]

  def index
    query = {}
    query["localisation"] = params[:localisation] if params[:localisation]
    query["category"] = params[:category] if params[:category]
    query["size"] = params[:size] if params[:size]
    if query.empty?
      @materials = Material.all
    else
      sqlquery = ""
      query.each do |key, value|
        sqlquery += " AND " if !sqlquery.empty?
        sqlquery += "#{key} ILIKE :#{key}"
      end
      @materials = Material.where(sqlquery, localisation: "%#{params[:localisation]}%" , category: "%#{params[:category]}%", size: "%#{params[:size]}%")
    end
  end

  def show
    @booking = Booking.new
    set_material
    @reviews = []
    Review.all.each do |review|
      @reviews << review if review.booking.material == @material
    end
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new(material_params)
    @material.user = current_user
    if @material.save
      redirect_to materials_path()
    else
      render :new
    end
  end

  def edit
    set_material
  end

  def update
    set_material
    @material.update(material_params)
    redirect_to materials_path
  end

  def destroy
    @material = Material.find(params[:id])
    @material.destroy

    redirect_to materials_path
  end

  private

  def material_params
    params.require(:material).permit(:category, :price, :size, :description, :localisation, :photo)
  end

  def set_material
    @material = Material.find(params[:id])
  end
end
