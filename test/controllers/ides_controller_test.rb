require 'test_helper'

class IdesControllerTest < ActionController::TestCase
  setup do
    @ide = ides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ide" do
    assert_difference('Ide.count') do
      post :create, ide: { description: @ide.description, name: @ide.name, picture: @ide.picture, string: @ide.string, string: @ide.string }
    end

    assert_redirected_to ide_path(assigns(:ide))
  end

  test "should show ide" do
    get :show, id: @ide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ide
    assert_response :success
  end

  test "should update ide" do
    patch :update, id: @ide, ide: { description: @ide.description, name: @ide.name, picture: @ide.picture, string: @ide.string, string: @ide.string }
    assert_redirected_to ide_path(assigns(:ide))
  end

  test "should destroy ide" do
    assert_difference('Ide.count', -1) do
      delete :destroy, id: @ide
    end

    assert_redirected_to ides_path
  end
end
