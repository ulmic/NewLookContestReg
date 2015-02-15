class User < ActiveRecord::Base
  has_secure_password validations: false
  has_one :public_work
  mount_uploader :portfolio, PortfolioUploader
  mount_uploader :avatar, AvatarUploader

  validates :first_name, presence: true,
                         length: { maximum: 20 }
  validates :last_name, presence: true,
                          length: { maximum: 20 }
  validates :patronymic, presence: true,
                          length: { maximum: 20 }
  validates :city, presence: true
  validates :school, presence: true
  validates :group, presence: true
  validates :mobile_phone, presence: true,
                           phone: true
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    email: true
  validates :municipality, presence: true
  validates :accept_agreement, presence: true

  extend Enumerize
  include Municipalities
  enumerize :municipality, in: Municipalities.list, default: Municipalities.list.first
  enumerize :role, in: [ :participant, :admin ], default: :participant

  scope :participants, -> { where role: :participant  }
  scope :fresh, -> { where confirm_state: :fresh  }
  scope :accepted, -> { where confirm_state: :accepted  }
  scope :busted, -> { where confirm_state: :busted  }

  state_machine :confirm_state, initial: :fresh do
    state :fresh
    state :accepted
    state :busted

    event :accept do
      transition all => :accepted
    end

    event :bust do
      transition all => :busted
    end

    event :reserve do
      transition all => :reserved
    end
  end
end
