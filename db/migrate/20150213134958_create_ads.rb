class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.integer :user_id
      t.string :titel
      t.text :description
      t.decimal :price
      t.string :price_type
      t.string :postal_code
      t.integer :place_id
      t.string :street
      t.boolean :ad_type
      t.string :contact_name
      t.string :phonenumber
      t.boolean :in_galery
      t.datetime :galery_end
      t.boolean :top_ad
      t.datetime :top_ad_end
      t.boolean :highlight
      t.datetime :highlight_end
      t.boolean :repeat_to_top
      t.datetime :repeat_to_top_end
      t.integer :main_image
      t.integer :category_id

      t.timestamps
    end
  end
end
