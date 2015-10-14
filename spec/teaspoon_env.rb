Teaspoon.configure do |config|
  config.suite do |suite|
    suite.use_framework :mocha
    suite.javascripts += ["support/expect", "support/sinon"]
  end
end
