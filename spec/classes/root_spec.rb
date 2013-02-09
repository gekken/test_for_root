require 'spec_helper'

  @subject = TestForRoot::Root.new


  describe TestForRoot::Root do
    it 'should be a class' do
      @subject.class.should be_a Class
    end

    it 'should accept an optional "name" argument' do
      demo = TestForRoot::Root.new("peter")
      demo.name.should eq demo.user.name
    end



  end

