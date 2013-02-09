module TestForRoot
  class Root
    attr_accessor :name
    attr_reader :user

    def initialize(*name)
      @name = name.join
      @user = user
      @user = TestForRoot::User.new


    end



  end
end