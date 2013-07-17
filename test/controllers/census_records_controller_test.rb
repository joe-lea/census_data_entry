require 'test_helper'

class CensusRecordsControllerTest < ActionController::TestCase
  setup do
    @census_record = census_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:census_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create census_record" do
    assert_difference('CensusRecord.count') do
      post :create, census_record: { age: @census_record.age, forename: @census_record.forename, house_number: @census_record.house_number, industry: @census_record.industry, occupation: @census_record.occupation, parish: @census_record.parish, place_of_birth: @census_record.place_of_birth, street: @census_record.street, surname: @census_record.surname }
    end

    assert_redirected_to census_record_path(assigns(:census_record))
  end

  test "should show census_record" do
    get :show, id: @census_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @census_record
    assert_response :success
  end

  test "should update census_record" do
    patch :update, id: @census_record, census_record: { age: @census_record.age, forename: @census_record.forename, house_number: @census_record.house_number, industry: @census_record.industry, occupation: @census_record.occupation, parish: @census_record.parish, place_of_birth: @census_record.place_of_birth, street: @census_record.street, surname: @census_record.surname }
    assert_redirected_to census_record_path(assigns(:census_record))
  end

  test "should destroy census_record" do
    assert_difference('CensusRecord.count', -1) do
      delete :destroy, id: @census_record
    end

    assert_redirected_to census_records_path
  end
end
