require 'test_helper'

class HandlersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @handler = handlers(:one)
  end

  test "should get index" do
    get handlers_url, as: :json
    assert_response :success
  end

  test "should create handler" do
    assert_difference('Handler.count') do
      post handlers_url, params: { handler: { city: @handler.city, date_of_birth: @handler.date_of_birth, description: @handler.description, first_name: @handler.first_name, hour_rate: @handler.hour_rate, last_name: @handler.last_name, thumbnail: @handler.thumbnail } }, as: :json
    end

    assert_response 201
  end

  test "should show handler" do
    get handler_url(@handler), as: :json
    assert_response :success
  end

  test "should update handler" do
    patch handler_url(@handler), params: { handler: { city: @handler.city, date_of_birth: @handler.date_of_birth, description: @handler.description, first_name: @handler.first_name, hour_rate: @handler.hour_rate, last_name: @handler.last_name, thumbnail: @handler.thumbnail } }, as: :json
    assert_response 200
  end

  test "should destroy handler" do
    assert_difference('Handler.count', -1) do
      delete handler_url(@handler), as: :json
    end

    assert_response 204
  end
end
