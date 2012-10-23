require 'spec_helper'

describe "tweets/new" do
  before(:each) do
    assign(:tweet, stub_model(Tweet,
      :text => "MyString",
      :profile_image_url => "MyString",
      :from_user => "MyString",
      :from_user_name => "MyString",
      :source => "MyString"
    ).as_new_record)
  end

  it "renders new tweet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tweets_path, :method => "post" do
      assert_select "input#tweet_text", :name => "tweet[text]"
      assert_select "input#tweet_profile_image_url", :name => "tweet[profile_image_url]"
      assert_select "input#tweet_from_user", :name => "tweet[from_user]"
      assert_select "input#tweet_from_user_name", :name => "tweet[from_user_name]"
      assert_select "input#tweet_source", :name => "tweet[source]"
    end
  end
end
