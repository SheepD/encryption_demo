require 'test_helper'

class EncryptedObjectsControllerTest < ActionController::TestCase
  setup do
    @encrypted_object = encrypted_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:encrypted_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create encrypted_object" do
    assert_difference('EncryptedObject.count') do
      post :create, encrypted_object: { secret_stuff2: @encrypted_object.secret_stuff2, secret_stuff: @encrypted_object.secret_stuff, tell_this_to_the_world: @encrypted_object.tell_this_to_the_world }
    end

    assert_redirected_to encrypted_object_path(assigns(:encrypted_object))
  end

  test "should show encrypted_object" do
    get :show, id: @encrypted_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @encrypted_object
    assert_response :success
  end

  test "should update encrypted_object" do
    patch :update, id: @encrypted_object, encrypted_object: { secret_stuff2: @encrypted_object.secret_stuff2, secret_stuff: @encrypted_object.secret_stuff, tell_this_to_the_world: @encrypted_object.tell_this_to_the_world }
    assert_redirected_to encrypted_object_path(assigns(:encrypted_object))
  end

  test "should destroy encrypted_object" do
    assert_difference('EncryptedObject.count', -1) do
      delete :destroy, id: @encrypted_object
    end

    assert_redirected_to encrypted_objects_path
  end
end
