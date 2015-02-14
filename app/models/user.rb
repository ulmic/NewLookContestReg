class User < ActiveRecord::Base
  attr_accessible :birth_date,      :building,          :city,
                  :email,           :municipality,      :first_name,
                  :flat,            :group,             :home_phone,
                  :house,           :skype,             :job,
                  :last_name,       :middle_name,       :mobile_phone,
                  :role,            :school,            :street,
                  :image,           :events,            :honors,
                  :media,           :portfolio,         :confirm_state,
                  :password,        :accept_agreement

  has_one :public_work
  mount_uploader :portfolio, PortfolioUploader

  validates :first_name, presence: true,
                         length: { maximum: 20 }
  validates :middle_name, presence: true,
                          length: { maximum: 20 }
  validates :last_name, presence: true,
                          length: { maximum: 20 }
  validates :city, presence: true
  validates :school, presence: true
  validates :group, presence: true
  validates :mobile_phone, presence: true,
                           phone: true
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    email: true
  validates :portfolio, presence: true
  validates :password, presence: true, length: { minimum: 3, maximum: 16 }
  validates :municipality, presence: true
  validates :accept_agreement, presence: true

  extend Enumerize
  include Municipalities
  enumerize :municipality, in: Municipalities.list, default: Municipalities.list.first

  state_machine :confirm_state, initial: :new do
    state :new
    state :accepted
    state :busted
    state :reserved

    event :accept do
      transition [ :new, :reserved ] => :accepted
    end

    event :bust do
      transition [ :new, :reserved ] => :busted
    end

    event :reserve do
      transition [ :new ] => :reserved
    end
  end
end
