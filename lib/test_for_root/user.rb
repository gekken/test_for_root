module TestForRoot
  class User

    attr_reader :user, :member_of, :user_id

    def initialize
      @user = `id -un`.chomp
      @member_of = (`groups #{@user}`.chomp.split(":"))[1].split
      @user_id = %x{id -u}.chomp.to_i
    end

    def name
      @user
    end

    def groups
      @member_of
    end

    def member? (group_name)
      @member_of.include? group_name
    end

    def uid
      @user_id
    end
  end
end
