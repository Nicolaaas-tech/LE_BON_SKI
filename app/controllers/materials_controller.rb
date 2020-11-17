class MaterialsController < ApplicationController

  def index
    @materials = Material.all
  end

  def show
    @material = Material.find(params[:id])
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new(material_params)
    if @material.save
      redirect_to material_path(@material)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def material_params
    params.require(:material).permit(:category, :size, :description, :localisation)

  end
end
