class CreateMessageTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :message_templates do |t|
      t.string :message
    end
  end
end
