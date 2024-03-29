require 'spec_helper'

describe "tweets/show" do
  before(:each) do
    @tweet = assign(:tweet, stub_model(Tweet,
      :text => "Text",
      :profile_image_url => "Profile Image Url",
      :from_user => "From User",
      :from_user_name => "From User Name",
      :source => "Source"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Text/)
    rendered.should match(/Profile Image Url/)
    rendered.should match(/From User/)
    rendered.should match(/From User Name/)
    rendered.should match(/Source/)
  end
end
