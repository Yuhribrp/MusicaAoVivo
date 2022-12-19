class AddProfileRefToMusicians < ActiveRecord::Migration[7.0]
  def change
    add_reference :musicians, :profile, null: false, foreign_key: true
  end
end
