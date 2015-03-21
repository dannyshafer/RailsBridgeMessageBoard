require 'test_helper'

class FakepostsControllerTest < ActionController::TestCase
  setup do
    @fakepost = fakeposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fakeposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fakepost" do
    assert_difference('Fakepost.count') do
      post :create, fakepost: { content: @fakepost.content, title: @fakepost.title }
    end

    assert_redirected_to fakepost_path(assigns(:fakepost))
  end

  test "should show fakepost" do
    get :show, id: @fakepost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fakepost
    assert_response :success
  end

  test "should update fakepost" do
    patch :update, id: @fakepost, fakepost: { content: @fakepost.content, title: @fakepost.title }
    assert_redirected_to fakepost_path(assigns(:fakepost))
  end

  test "should destroy fakepost" do
    assert_difference('Fakepost.count', -1) do
      delete :destroy, id: @fakepost
    end

    assert_redirected_to fakeposts_path
  end
end
