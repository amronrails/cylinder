require 'test_helper'

class CarSpecificSpecsControllerTest < ActionController::TestCase
  setup do
    @car_specific_spec = car_specific_specs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_specific_specs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_specific_spec" do
    assert_difference('CarSpecificSpec.count') do
      post :create, car_specific_spec: { car_id: @car_specific_spec.car_id, hary: @car_specific_spec.hary, specific_spec_id: @car_specific_spec.specific_spec_id, value: @car_specific_spec.value, value_ar: @car_specific_spec.value_ar }
    end

    assert_redirected_to car_specific_spec_path(assigns(:car_specific_spec))
  end

  test "should show car_specific_spec" do
    get :show, id: @car_specific_spec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_specific_spec
    assert_response :success
  end

  test "should update car_specific_spec" do
    patch :update, id: @car_specific_spec, car_specific_spec: { car_id: @car_specific_spec.car_id, hary: @car_specific_spec.hary, specific_spec_id: @car_specific_spec.specific_spec_id, value: @car_specific_spec.value, value_ar: @car_specific_spec.value_ar }
    assert_redirected_to car_specific_spec_path(assigns(:car_specific_spec))
  end

  test "should destroy car_specific_spec" do
    assert_difference('CarSpecificSpec.count', -1) do
      delete :destroy, id: @car_specific_spec
    end

    assert_redirected_to car_specific_specs_path
  end
end
