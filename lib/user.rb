class User
  attr_accessor :age, :email
  @@user_list = []
  
  def initialize(user_mail, user_age)
    @age = user_age
    @email = user_mail
    @@user_list << self
  end

  def self.all
    return @@user_list
  end

  def self.find_by_email(mail_to_find)
    @@user_list.each do |user|
      if user.email == mail_to_find 
        return user
      end
    end
  end
end