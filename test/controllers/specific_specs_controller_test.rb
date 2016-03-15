require 'test_helper'

class SpecificSpecsControllerTest < ActionController::TestCase
  setup do
    @specific_spec = specific_specs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specific_specs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specific_spec" do
    assert_difference('SpecificSpec.count') do
      post :create, specific_spec: { extra: @specific_spec.extra, info: @specific_spec.info, key: @specific_spec.key, position: @specific_spec.position, visible: @specific_spec.visible }
    end

    assert_redirected_to specific_spec_path(assigns(:specific_spec))
  end

  test "should show specific_spec" do
    get :show, id: @specific_spec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specific_spec
    assert_response :success
  end

  test "should update specific_spec" do
    patch :update, id: @specific_spec, specific_spec: { extra: @specific_spec.extra, info: @specific_spec.info, key: @specific_spec.key, position: @specific_spec.position, visible: @specific_spec.visible }
    assert_redirected_to specific_spec_path(assigns(:specific_spec))
  end

  test "should destroy specific_spec" do
    assert_difference('SpecificSpec.count', -1) do
      delete :destroy, id: @specific_spec
    end

    assert_redirected_to specific_specs_path
  end
end
