require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :text => "MyString",
      :profile_image_url => "MyString",
      :from_user => "MyString",
      :from_user_name => "MyString",
      :source => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_text", :name => "user[text]"
      assert_select "input#user_profile_image_url", :name => "user[profile_image_url]"
      assert_select "input#user_from_user", :name => "user[from_user]"
      assert_select "input#user_from_user_name", :name => "user[from_user_name]"
      assert_select "input#user_source", :name => "user[source]"
    end
  end
end
