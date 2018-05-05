require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Contact Number/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Rescue Name/)
    expect(rendered).to match(/Rescue Email/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Website Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
