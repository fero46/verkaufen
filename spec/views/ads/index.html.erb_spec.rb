require 'rails_helper'

RSpec.describe "ads/index", type: :view do
  before(:each) do
    assign(:ads, [
      Ad.create!(
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
      ),
      Ad.create!(
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
      )
    ])
  end

  it "renders a list of ads" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Titel".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Price Type".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phonenumber".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
