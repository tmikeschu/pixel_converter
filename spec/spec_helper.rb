# frozen_string_literal: true

require "simplecov"
SimpleCov.start

require "pry-state"

RSpec.configure do |c|
  c.filter_gems_from_backtrace ""
end
