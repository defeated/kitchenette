class User < ActiveRecord::Base
  with_options presence: true do |validator|
    validator.validates :first_name
    validator.validates :last_name
    validator.validates :email, uniqueness: { case_sensitive: false }
  end

  def full_name
    "#{ first_name } #{ last_name }"
  end
end
