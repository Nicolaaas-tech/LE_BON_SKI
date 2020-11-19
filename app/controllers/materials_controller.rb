class MaterialsController < ApplicationController
  before_action only: [:index, :new, :edit]

  def index
    @materials = Material.all
  end

  def show
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
