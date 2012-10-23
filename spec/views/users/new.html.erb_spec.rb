require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :text => "MyString",
      :profile_image_url => "MyString",
      :from_user => "MyString",
      :from_user_name => "MyString",
      :source => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_text", :name => "user[text]"
      assert_select "input#user_profile_image_url", :name => "user[profile_image_url]"
      assert_select "input#user_from_user", :name => "user[from_user]"
      assert_select "input#user_from_user_name", :name => "user[from_user_name]"
      assert_select "input#user_source", :name => "user[source]"
    end
  end
end
