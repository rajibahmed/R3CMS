require 'spec_helper'

describe User do

  before(:each) do
    @attr = {:name => 'rajib ahmed', :email=>'rajib@d32.com.bd'}
  end

  it "should have all valid attribute" do
    User.create!(@attr)   
  end

  it "should require a name" do
    user_with_no_name = User.create @attr.merge({:name=>''})
    user_with_no_name.should_not be_valid
  end

  it "should require a email address" do
    user_with_no_email = User.create @attr.merge({:email=>''})
    user_with_no_email.should_not be_valid
  end

  it "should have more than 4 character in name" do
    short_name = "a"*3
    short_user_name = User.create(@attr.merge({:name=>short_name}))
    short_user_name.should_not be_valid
  end

  it "should have less than 50 character in name" do
    long_name = "a"*51
    long_user_name = User.create(@attr.merge({:name=>long_name}))
    long_user_name.should_not be_valid
  end

  it "should have valid email address" do
    addresses = ['user@exaple.com','User@d32.com.bd']
    addresses.each do |email_address|
      user_with_proper_email_address = User.create(@attr.merge({:email => email_address }))
      user_with_proper_email_address.should be_valid   
    end
  end

  it "should reject invalid email address" do
    addresses = ['user@com','Userd32.com.bd']
    addresses.each do |email_address| 
      user_with_wrong_email_address = User.create( @attr.merge({:email=>email_address})) 
      user_with_wrong_email_address.should_not be_valid   
    end
  end

  it "should reject user with duplicate email address" do
   User.create(@attr)
   user_with_duplicate_email = User.new(@attr)
   user_with_duplicate_email.should_not be_valid
  end

     
end
