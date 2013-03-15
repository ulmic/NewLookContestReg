require 'spec_helper'

describe Admin do
  before(:each) do
    @attr = { :login => "admin", :password => "123" }
  end

  it "should create a new instance given valid attributes" do
    Admin.create!(@attr)
  end

  it "should require a login" do
    no_login = Admin.new(@attr.merge(:login => ""))
    no_login.should_not be_valid 
  end
end
