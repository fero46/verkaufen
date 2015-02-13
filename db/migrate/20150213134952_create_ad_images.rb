class CreateAdImages < ActiveRecord::Migration
  def change
    create_table :ad_images do |t|
      t.string :image
      t.integer :ad_id

      t.timestamps
    end
  end
end
