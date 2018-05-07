require 'rails_helper'

RSpec.describe "pets/show", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      :adopted => false,
      :foster => false,
      :name => "Name",
      :species => "Species",
      :breed => "Breed",
      :sex => "Sex",
      :age => "Age",
      :state => "State",
      :suburb => "Suburb",
      :desexed => false,
      :vaccinated => false,
      :about_pet => "MyText",
      :health_concerns => "MyText",
      :profile => nil,
      :adoption_fee => "Adoption Fee"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Species/)
    expect(rendered).to match(/Breed/)
    expect(rendered).to match(/Sex/)
    expect(rendered).to match(/Age/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Adoption Fee/)
  end
end
