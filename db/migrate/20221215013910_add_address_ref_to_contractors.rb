class AddAddressRefToContractors < ActiveRecord::Migration[7.0]
  def change
    add_reference :contractors, :address, null: false, foreign_key: true
  end
end
