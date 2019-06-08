require 'test_helper'

class Api::V1::CampaignControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_campaign_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_campaign_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_campaign_update_url
    assert_response :success
  end

  test "should get delete" do
    get api_v1_campaign_delete_url
    assert_response :success
  end

end
