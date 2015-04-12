class Informat::ParticipantFillingType < Informat::Participant
  include ApplicationType

  permit :email, :first_name, :last_name, :birth_date, :municipality, :patronymic, :school, :group, :mobile_phone, :street, :city, :house, :building, :flat, :accept_agreement, :confirm_state, :experience, :activity_line, :home_phone
end
