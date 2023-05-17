require "test_helper"

class PadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pad = pads(:one)
  end

  test "should get index" do
    get pads_url, as: :json
    assert_response :success
  end

  test "should create pad" do
    assert_difference("Pad.count") do
      post pads_url, params: { pad: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show pad" do
    get pad_url(@pad), as: :json
    assert_response :success
  end

  test "should update pad" do
    patch pad_url(@pad), params: { pad: {  } }, as: :json
    assert_response :success
  end

  test "should destroy pad" do
    assert_difference("Pad.count", -1) do
      delete pad_url(@pad), as: :json
    end

    assert_response :no_content
  end
end
