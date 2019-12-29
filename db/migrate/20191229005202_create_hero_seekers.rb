class CreateHeroSeekers < ActiveRecord::Migration[6.0]
  def change
    create_table :hero_seekers do |t|
      t.integer :hero_id
      t.integer :seeker_id

      t.timestamps
    end
  end
end
