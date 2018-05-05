require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :user => nil,
        :first_name => "First Name",
        :last_name => "Last Name",
        :contact_number => "Contact Number",
        :suburb => "Suburb",
        :state => "State",
        :postcode => "Postcode",
        :rescue => false,
        :rescue_name => "Rescue Name",
        :rescue_email => "Rescue Email",
        :about_rescue => "MyText",
        :adoption_details => "MyText",
        :website_url => "Website Url",
        :logo_image => "MyText",
        :looking_for_fosters => false,
        :taking_surrenders => false
      ),
      Profile.create!(
        :user => nil,
        :first_name => "First Name",
        :last_name => "Last Name",
        :contact_number => "Contact Number",
        :suburb => "Suburb",
        :state => "State",
        :postcode => "Postcode",
        :rescue => false,
        :rescue_name => "Rescue Name",
        :rescue_email => "Rescue Email",
        :about_rescue => "MyText",
        :adoption_details => "MyText",
        :website_url => "Website Url",
        :logo_image => "MyText",
        :looking_for_fosters => false,
        :taking_surrenders => false
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Number".to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Rescue Name".to_s, :count => 2
    assert_select "tr>td", :text => "Rescue Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Website Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
