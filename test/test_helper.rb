ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'ruby-debug'

class ActiveSupport::TestCase
  self.use_transactional_fixtures = false
  db_cleaner = DatabaseCleaner[:active_record, :connection => Person]
  db_cleaner.strategy = :transaction

  setup do
    db_cleaner.start
  end

  teardown do
    db_cleaner.clean
  end
end
