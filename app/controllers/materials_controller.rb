class MaterialsController < ApplicationController
  before_action :set_material, only: [:show, :edit, :update, :destroy]

  def index
    @materials = Material.all
  end

  def show
    # @material = Material.find(params[:id])
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new(materials_params)
    if @material.save
      redirect_to material_path(@material)
    else
      render :new
    end
  end

  def edit
    # @material = Material.find(params[:id])
  end

  def update
    # @material = Material.find(params[:id])
    @material.update(materials_params)
    if @material.save
      redirect_to material_path(@material)
    else
      render :new
    end
  end

  def destroy
    # @material = Material.find(params[:id])
    @material.destroy
    redirect_to materials_path()
  end

  private

  def materials_params
    params.require(:material).permit(:category, :size, :description)
  end

  def set_material
    @material = Material.find(params[:id])
  end
end
