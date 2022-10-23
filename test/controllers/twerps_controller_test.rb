require 'test_helper'

class TwerpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twerp = twerps(:one)
  end

  test 'should get index' do
    get twerps_url
    assert_response :success
  end

  test 'should get new' do
    get new_twerp_url
    assert_response :success
  end

  test 'should create twerp' do
    assert_difference('Twerp.count') do
      post twerps_url, params: { twerp: { content: @twerp.content, name: @twerp.name } }
    end

    assert_redirected_to twerp_url(Twerp.last)
  end

  test 'should show twerp' do
    get twerp_url(@twerp)
    assert_response :success
  end

  test 'should get edit' do
    get edit_twerp_url(@twerp)
    assert_response :success
  end

  test 'should update twerp' do
    patch twerp_url(@twerp), params: { twerp: { content: @twerp.content, name: @twerp.name } }
    assert_redirected_to twerp_url(@twerp)
  end

  test 'should destroy twerp' do
    assert_difference('Twerp.count', -1) do
      delete twerp_url(@twerp)
    end

    assert_redirected_to twerps_url
  end

  test 'should have right home page title' do
    get '/'
    assert_response :success
    assert_select 'h1', 'Welcome to the AWESOME Jitter Homepage!'
  end
end
