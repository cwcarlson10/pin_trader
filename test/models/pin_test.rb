require "test_helper"

class PinTest < ActiveSupport::TestCase
  def pin
    @pin ||= Pin.new
  end

  def test_valid
    assert pin.valid?
  end
end
