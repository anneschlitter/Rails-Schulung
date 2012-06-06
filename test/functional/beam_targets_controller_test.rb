require 'test_helper'

class BeamTargetsControllerTest < ActionController::TestCase
  setup do
    @beam_target = beam_targets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beam_targets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beam_target" do
    assert_difference('BeamTarget.count') do
      post :create, beam_target: { density: @beam_target.density, volume: @beam_target.volume }
    end

    assert_redirected_to beam_target_path(assigns(:beam_target))
  end

  test "should show beam_target" do
    get :show, id: @beam_target
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beam_target
    assert_response :success
  end

  test "should update beam_target" do
    put :update, id: @beam_target, beam_target: { density: @beam_target.density, volume: @beam_target.volume }
    assert_redirected_to beam_target_path(assigns(:beam_target))
  end

  test "should destroy beam_target" do
    assert_difference('BeamTarget.count', -1) do
      delete :destroy, id: @beam_target
    end

    assert_redirected_to beam_targets_path
  end
end
