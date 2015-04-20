class Informat::Participant < User

  extend Enumerize
  enumerize :activity_line, in: [ :radio, :periodicals, :internet, :tv ]

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :patronymic, presence: true
  validates :municipality, presence: true
  validates :city, presence: true
  validates :school, presence: true
  validates :group, presence: true
  validates :street, presence: true
  validates :house, presence: true
  validates :mobile_phone, presence: true
  validates :email, presence: true
  validates :accept_agreement, presence: true
  validates :activity_line, presence: true
end
