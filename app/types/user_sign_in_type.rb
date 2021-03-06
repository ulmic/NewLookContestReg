class UserSignInType
  include ApplicationTypeWithoutActiveRecord

  attribute :email, String
  attribute :password, String

  validates :email, presence: true, email: true
  validates :password, presence: true

  validate :check_authenticate, if: :email

  def user
    ::User.find_by(email: email.mb_chars.downcase)
  end

  private

  def check_authenticate
    if !user.try(:password_digest?) || !user.try(:authenticate, password)
      errors.add(:password, :user_or_password_invalid)
    end
  end

  def check_banned_user
    if user.try(:inactive?)
      errors.add(:email, :user_inactive)
    end
  end

  def check_new_user
    if user.try(:waiting_confirmation?)
      errors.add(:email, :user_new)
    end
  end

end
