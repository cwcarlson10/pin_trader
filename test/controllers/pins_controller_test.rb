require "test_helper"

class PinsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_response :success
  end

  def test_show
    get :show
    assert_response :success
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_edit
    get :edit
    assert_response :success
  end

end
