class AddPriceToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :price, :integer
  end
end
