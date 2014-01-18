class AddAttachmentPortfolioToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.text :portfolio
    end
  end
end
