class AddDefaultToOwnerValidation < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :owner_validation, :boolean, default: false
  end
end
