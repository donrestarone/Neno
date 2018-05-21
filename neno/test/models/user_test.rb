require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "valid_user_can_be_created" do
    assert_equal([], create_valid_user.errors.full_messages)
  end

  test "valid_user_cannot_be_created" do
    refute create_invalid_user.valid?
  end

  def create_valid_user
  	user = User.new
  	user.first_name = 'John'
  	user.last_name = 'Appleseed'
  	user.email = 'japple@seed.com'
  	user.password = '123'
  	user.password_confirmation = '123'
  	user.match = false
  	#user.save
  	return user
  end
  def create_invalid_user
  	user = User.new
  	user.first_name = 'John'
  	user.last_name = 'Appleseed'
  	user.email = 'japple@seed.com'
  	user.password = '123'
  	user.password_confirmation = '123'
  	user.match = false
  	#user.save
  	return user
  end
end
