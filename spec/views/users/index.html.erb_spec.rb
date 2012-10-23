require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :text => "Text",
        :profile_image_url => "Profile Image Url",
        :from_user => "From User",
        :from_user_name => "From User Name",
        :source => "Source"
      ),
      stub_model(User,
        :text => "Text",
        :profile_image_url => "Profile Image Url",
        :from_user => "From User",
        :from_user_name => "From User Name",
        :source => "Source"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Profile Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "From User".to_s, :count => 2
    assert_select "tr>td", :text => "From User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
  end
end
