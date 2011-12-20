require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "make a person" do
    puts 'step 1: make a person'
    assert_equal 0, Person.count
    Person.create :name => 'Brian'
    assert_equal 1, Person.count
  end

  test "the db should have been cleaned" do
    puts 'step 2: see if the db has been cleaned'
    assert_equal 0, Person.count
  end
end
