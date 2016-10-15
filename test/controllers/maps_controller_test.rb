require 'test_helper'

class MapsControllerTest < ActionDispatch::IntegrationTest
  test "should get data_binding" do
    get maps_data_binding_url
    assert_response :success
  end

  test "should get directions" do
    get maps_directions_url
    assert_response :success
  end

  test "should get flyby" do
    get maps_flyby_url
    assert_response :success
  end

  test "should get geocoder" do
    get maps_geocoder_url
    assert_response :success
  end

  test "should get languages" do
    get maps_languages_url
    assert_response :success
  end

  test "should get navigation_controls" do
    get maps_navigation_controls_url
    assert_response :success
  end

  test "should get restriction_pane" do
    get maps_restriction_pane_url
    assert_response :success
  end

end
