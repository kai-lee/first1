class CreateAddBooks < ActiveRecord::Migration
  def change
    create_table :add_books do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.int :zipcode
      t.text :fav_color

      t.timestamps
    end
  end
end
