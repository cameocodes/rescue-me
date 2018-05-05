require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user => nil,
      :first_name => "MyString",
      :last_name => "MyString",
      :contact_number => "MyString",
      :suburb => "MyString",
      :state => "MyString",
      :postcode => "MyString",
      :rescue => false,
      :rescue_name => "MyString",
      :rescue_email => "MyString",
      :about_rescue => "MyText",
      :adoption_details => "MyText",
      :website_url => "MyString",
      :logo_image => "MyText",
      :looking_for_fosters => false,
      :taking_surrenders => false
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[user_id]"

      assert_select "input[name=?]", "profile[first_name]"

      assert_select "input[name=?]", "profile[last_name]"

      assert_select "input[name=?]", "profile[contact_number]"

      assert_select "input[name=?]", "profile[suburb]"

      assert_select "input[name=?]", "profile[state]"

      assert_select "input[name=?]", "profile[postcode]"

      assert_select "input[name=?]", "profile[rescue]"

      assert_select "input[name=?]", "profile[rescue_name]"

      assert_select "input[name=?]", "profile[rescue_email]"

      assert_select "textarea[name=?]", "profile[about_rescue]"

      assert_select "textarea[name=?]", "profile[adoption_details]"

      assert_select "input[name=?]", "profile[website_url]"

      assert_select "textarea[name=?]", "profile[logo_image]"

      assert_select "input[name=?]", "profile[looking_for_fosters]"

      assert_select "input[name=?]", "profile[taking_surrenders]"
    end
  end
end
