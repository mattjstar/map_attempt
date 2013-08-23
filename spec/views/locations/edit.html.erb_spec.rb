require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "MyString",
      :address => "MyString",
      :longitude => 1.5,
      :latitude => 1.5,
      :gmaps => false
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", location_path(@location), "post" do
      assert_select "input#location_name[name=?]", "location[name]"
      assert_select "input#location_address[name=?]", "location[address]"
      assert_select "input#location_longitude[name=?]", "location[longitude]"
      assert_select "input#location_latitude[name=?]", "location[latitude]"
      assert_select "input#location_gmaps[name=?]", "location[gmaps]"
    end
  end
end
