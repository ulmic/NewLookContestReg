require 'spec_helper'

describe "admins/edit" do
  before(:each) do
    @admin = assign(:admin, stub_model(Admin,
      :login => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_path(@admin), "post" do
      assert_select "input#admin_login[name=?]", "admin[login]"
      assert_select "input#admin_password[name=?]", "admin[password]"
    end
  end
end
