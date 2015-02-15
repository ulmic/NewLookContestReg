class UserRegistrationType < User
  include ApplicationType

  validates :email, presence: true
  validates :password, presence: true
  validates :birth_date, presence: true,
                         timeliness: { on_or_after: lambda { Date.parse('31 May 1992') } }
  validates :municipality, presence: true
  validates :school, presence: true
  validates :group, presence: true
  validates :city, presence: true

  permit :email, :password, :avatar, :first_name, :last_name, :birth_date, :municipality, :patronymic, :school, :group, :mobile_phone,  :street, :city, :house, :building, :flat, :skype, :events, :honors, :media, :portfolio, :accept_agreement, :avatar_cache, :job, :role

  def email=(email)
    write_attribute(:email, email.mb_chars.downcase)
  end

  def accept_agreement=(accept_agreement)
    if accept_agreement
      write_attribute :accept_agreement, true
    else
      write_attribute :accept_agreement, false
    end
  end
end
