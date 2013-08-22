require 'test_helper'

class GlsControllerTest < ActionController::TestCase
  setup do
    @gl = gls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gl" do
    assert_difference('Gl.count') do
      post :create, gl: { grocery_list_id: @gl.grocery_list_id, user_id: @gl.user_id }
    end

    assert_redirected_to gl_path(assigns(:gl))
  end

  test "should show gl" do
    get :show, id: @gl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gl
    assert_response :success
  end

  test "should update gl" do
    patch :update, id: @gl, gl: { grocery_list_id: @gl.grocery_list_id, user_id: @gl.user_id }
    assert_redirected_to gl_path(assigns(:gl))
  end

  test "should destroy gl" do
    assert_difference('Gl.count', -1) do
      delete :destroy, id: @gl
    end

    assert_redirected_to gls_path
  end
end
