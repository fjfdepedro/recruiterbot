class CreateTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :terms do |t|
      t.string :term
      t.string :category
    end
  end
end
