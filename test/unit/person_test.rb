require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "make a person" do
    Person.create name: 'Brian'
  end
end
