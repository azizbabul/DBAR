json.array!(@members) do |member|
  json.extract! member, :id, :membership_id, :name, :father_name, :husband, :village, :postOffice, :thana, :district, :present_address, :district, :phone, :acknowledgement_name, :acknowledgement_relation, :date_of_enrollment, :roll, :date_of_past_enrollment, :date_of_cancel, :cancel_roll, :status, :date_of_membership, :created_by_id, :updated_by_id
  json.url member_url(member, format: :json)
end
