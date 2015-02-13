json.array!(@ads) do |ad|
  json.extract! ad, :id, :user_id, :titel, :description, :price, :price_type, :postal_code, :place_id, :street, :ad_type, :contact_name, :phonenumber, :in_galery, :galery_end, :top_ad, :top_ad_end, :highlight, :highlight_end, :repeat_to_top, :repeat_to_top_end, :main_image, :category_id
  json.url ad_url(ad, format: :json)
end
