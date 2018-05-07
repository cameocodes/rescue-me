require 'rails_helper'

RSpec.describe "pets/index", type: :view do
  before(:each) do
    assign(:pets, [
      Pet.create!(
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
      ),
      Pet.create!(
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
      )
    ])
  end

  it "renders a list of pets" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Species".to_s, :count => 2
    assert_select "tr>td", :text => "Breed".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "Age".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Adoption Fee".to_s, :count => 2
  end
end
