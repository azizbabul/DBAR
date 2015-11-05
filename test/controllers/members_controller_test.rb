require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { acknowledgement_name: @member.acknowledgement_name, acknowledgement_relation: @member.acknowledgement_relation, cancel_roll: @member.cancel_roll, created_by_id: @member.created_by_id, date_of_cancel: @member.date_of_cancel, date_of_enrollment: @member.date_of_enrollment, date_of_membership: @member.date_of_membership, date_of_past_enrollment: @member.date_of_past_enrollment, district: @member.district, district: @member.district, father_name: @member.father_name, husband: @member.husband, membership_id: @member.membership_id, name: @member.name, phone: @member.phone, postOffice: @member.postOffice, present_address: @member.present_address, roll: @member.roll, status: @member.status, thana: @member.thana, updated_by_id: @member.updated_by_id, village: @member.village }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { acknowledgement_name: @member.acknowledgement_name, acknowledgement_relation: @member.acknowledgement_relation, cancel_roll: @member.cancel_roll, created_by_id: @member.created_by_id, date_of_cancel: @member.date_of_cancel, date_of_enrollment: @member.date_of_enrollment, date_of_membership: @member.date_of_membership, date_of_past_enrollment: @member.date_of_past_enrollment, district: @member.district, district: @member.district, father_name: @member.father_name, husband: @member.husband, membership_id: @member.membership_id, name: @member.name, phone: @member.phone, postOffice: @member.postOffice, present_address: @member.present_address, roll: @member.roll, status: @member.status, thana: @member.thana, updated_by_id: @member.updated_by_id, village: @member.village }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
