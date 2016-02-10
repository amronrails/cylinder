require 'test_helper'

class CarSpecsControllerTest < ActionController::TestCase
  setup do
    @car_spec = car_specs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_specs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_spec" do
    assert_difference('CarSpec.count') do
      post :create, car_spec: { car_id: @car_spec.car_id, hary: @car_spec.hary, spec_id: @car_spec.spec_id, value: @car_spec.value, value_ar: @car_spec.value_ar }
    end

    assert_redirected_to car_spec_path(assigns(:car_spec))
  end

  test "should show car_spec" do
    get :show, id: @car_spec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_spec
    assert_response :success
  end

  test "should update car_spec" do
    patch :update, id: @car_spec, car_spec: { car_id: @car_spec.car_id, hary: @car_spec.hary, spec_id: @car_spec.spec_id, value: @car_spec.value, value_ar: @car_spec.value_ar }
    assert_redirected_to car_spec_path(assigns(:car_spec))
  end

  test "should destroy car_spec" do
    assert_difference('CarSpec.count', -1) do
      delete :destroy, id: @car_spec
    end

    assert_redirected_to car_specs_path
  end
end
