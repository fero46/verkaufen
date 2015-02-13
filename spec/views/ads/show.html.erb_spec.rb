require 'rails_helper'

RSpec.describe "ads/show", type: :view do
  before(:each) do
    @ad = assign(:ad, Ad.create!(
      :user_id => 1,
      :titel => "Titel",
      :description => "MyText",
      :price => "9.99",
      :price_type => "Price Type",
      :postal_code => "Postal Code",
      :place_id => 2,
      :street => "Street",
      :ad_type => false,
      :contact_name => "Contact Name",
      :phonenumber => "Phonenumber",
      :in_galery => false,
      :top_ad => false,
      :highlight => false,
      :repeat_to_top => false,
      :main_image => 3,
      :category_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Titel/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Price Type/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Phonenumber/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
