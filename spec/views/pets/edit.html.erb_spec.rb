require 'rails_helper'

RSpec.describe "pets/edit", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      :adopted => false,
      :foster => false,
      :name => "MyString",
      :species => "MyString",
      :breed => "MyString",
      :sex => "MyString",
      :age => "MyString",
      :state => "MyString",
      :suburb => "MyString",
      :desexed => false,
      :vaccinated => false,
      :about_pet => "MyText",
      :health_concerns => "MyText",
      :profile => nil,
      :adoption_fee => "MyString"
    ))
  end

  it "renders the edit pet form" do
    render

    assert_select "form[action=?][method=?]", pet_path(@pet), "post" do

      assert_select "input[name=?]", "pet[adopted]"

      assert_select "input[name=?]", "pet[foster]"

      assert_select "input[name=?]", "pet[name]"

      assert_select "input[name=?]", "pet[species]"

      assert_select "input[name=?]", "pet[breed]"

      assert_select "input[name=?]", "pet[sex]"

      assert_select "input[name=?]", "pet[age]"

      assert_select "input[name=?]", "pet[state]"

      assert_select "input[name=?]", "pet[suburb]"

      assert_select "input[name=?]", "pet[desexed]"

      assert_select "input[name=?]", "pet[vaccinated]"

      assert_select "textarea[name=?]", "pet[about_pet]"

      assert_select "textarea[name=?]", "pet[health_concerns]"

      assert_select "input[name=?]", "pet[profile_id]"

      assert_select "input[name=?]", "pet[adoption_fee]"
    end
  end
end
