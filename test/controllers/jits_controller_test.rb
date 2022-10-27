require "test_helper"

class JitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jit = jits(:one)
  end

  test "should get index" do
    get jits_url
    assert_response :success
  end

  test "should get new" do
    get new_jit_url
    assert_response :success
  end

  test "should create jit" do
    assert_difference("Jit.count") do
      post jits_url, params: { jit: { content: @jit.content, user_id: @jit.user_id } }
    end

    assert_redirected_to jit_url(Jit.last)
  end

  test "should show jit" do
    get jit_url(@jit)
    assert_response :success
  end

  test "should get edit" do
    get edit_jit_url(@jit)
    assert_response :success
  end

  test "should update jit" do
    patch jit_url(@jit), params: { jit: { content: @jit.content, user_id: @jit.user_id } }
    assert_redirected_to jit_url(@jit)
  end

  test "should destroy jit" do
    assert_difference("Jit.count", -1) do
      delete jit_url(@jit)
    end

    assert_redirected_to jits_url
  end
end
