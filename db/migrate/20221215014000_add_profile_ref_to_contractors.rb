class AddProfileRefToContractors < ActiveRecord::Migration[7.0]
  def change
    add_reference :contractors, :profile, null: false, foreign_key: true
  end
end
