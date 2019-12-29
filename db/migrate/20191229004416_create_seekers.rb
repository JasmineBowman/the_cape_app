class CreateSeekers < ActiveRecord::Migration[6.0]
  def change
    create_table :seekers do |t|
      t.string :first_name
      t.string :last_name
      t.string :hero_handle
      t.text :address
      t.string :city
      t.integer :zip
      t.text :email
      t.integer :phone

      t.timestamps
    end
  end
end
