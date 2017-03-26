require 'test_helper'

class PaginasControllerTest < ActionController::TestCase
  test "should get acerca_de" do
    get :acerca_de
    assert_response :success
  end

end
