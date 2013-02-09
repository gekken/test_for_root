require 'spec_helper'

describe TestForRoot do


  it 'should have a version number' do
    TestForRoot::VERSION.should_not be_nil
  end

  describe TestForRoot::User do
    before :each do
      @demo = TestForRoot::User.new
    end

    context 'it should respond to the various methods' do
      it 'should respond to #name' do
        @demo.should respond_to :name
      end


=begin    these don't work
    it 'should respond to #membership' do

      TestForRoot::User.should respond_to :membership("#{@demo.name}")

    end

    it 'should respond to #member?' do

      TestForRoot::User.should respond_to :member?

    end
=end

    end

    context "#new" do
      it 'should create a new User object' do
        @demo.should be_an_instance_of TestForRoot::User
      end

      #it 'should take no parameters' do
      #  TestForRoot::User.new(parameter).should raise_error
      #end
    end


    context "#name" do

      it "should return the current username" do
        @demo.name.should eq `id -un`.chomp
      end
    end

    context "#groups" do

      it 'should be an array' do
        @demo.groups.should be_a Array
      end

      it 'should return group membership' do
        @demo.groups.should eq (`groups #{@demo.name}`.chomp.split(":"))[1].split
      end
    end

    context "#member?" do

      #it 'should take 1 argument' do
      #  @demo.member?.should raise_error
      #end

      it 'should return true if #name is a member of the supplied group' do
        @demo.member? "#{@demo.name}".should be_true
      end

    end

    context '#uid' do

      it 'should return the $EUID of the program executor' do
        @demo.uid.should == %x{id -u}.chomp.to_i
      end
    end

  end
end
