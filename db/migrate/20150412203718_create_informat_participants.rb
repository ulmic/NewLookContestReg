class CreateInformatParticipants < ActiveRecord::Migration
  def change
    create_table :informat_participants do |t|

      t.timestamps
    end
  end
end
