class AddDefautltoOwnerValidation < ActiveRecord::Migration[6.0]
  def change
    change_column_default :bookings, :owner_validation, default: false
  end
end
