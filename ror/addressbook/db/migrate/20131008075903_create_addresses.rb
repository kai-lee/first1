class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :zip
      t.text :fav_color

      t.timestamps
    end
  end
end
