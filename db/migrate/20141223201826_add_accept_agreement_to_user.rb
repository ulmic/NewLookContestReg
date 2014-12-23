class AddAcceptAgreementToUser < ActiveRecord::Migration
  def change
    add_column :users, :accept_agreement, :boolean
  end
end
