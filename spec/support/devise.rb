RSpec.configure do |config|
  config.include Devise::TestHelpers, type: [:controllers, :requests]
end
