require 'rails_helper'

RSpec.describe "ads/new", type: :view do
  before(:each) do
    assign(:ad, Ad.new(
      :user_id => 1,
      :titel => "MyString",
      :description => "MyText",
      :price => "9.99",
      :price_type => "MyString",
      :postal_code => "MyString",
      :place_id => 1,
      :street => "MyString",
      :ad_type => false,
      :contact_name => "MyString",
      :phonenumber => "MyString",
      :in_galery => false,
      :top_ad => false,
      :highlight => false,
      :repeat_to_top => false,
      :main_image => 1,
      :category_id => 1
    ))
  end

  it "renders new ad form" do
    render

    assert_select "form[action=?][method=?]", ads_path, "post" do

      assert_select "input#ad_user_id[name=?]", "ad[user_id]"

      assert_select "input#ad_titel[name=?]", "ad[titel]"

      assert_select "textarea#ad_description[name=?]", "ad[description]"

      assert_select "input#ad_price[name=?]", "ad[price]"

      assert_select "input#ad_price_type[name=?]", "ad[price_type]"

      assert_select "input#ad_postal_code[name=?]", "ad[postal_code]"

      assert_select "input#ad_place_id[name=?]", "ad[place_id]"

      assert_select "input#ad_street[name=?]", "ad[street]"

      assert_select "input#ad_ad_type[name=?]", "ad[ad_type]"

      assert_select "input#ad_contact_name[name=?]", "ad[contact_name]"

      assert_select "input#ad_phonenumber[name=?]", "ad[phonenumber]"

      assert_select "input#ad_in_galery[name=?]", "ad[in_galery]"

      assert_select "input#ad_top_ad[name=?]", "ad[top_ad]"

      assert_select "input#ad_highlight[name=?]", "ad[highlight]"

      assert_select "input#ad_repeat_to_top[name=?]", "ad[repeat_to_top]"

      assert_select "input#ad_main_image[name=?]", "ad[main_image]"

      assert_select "input#ad_category_id[name=?]", "ad[category_id]"
    end
  end
end
