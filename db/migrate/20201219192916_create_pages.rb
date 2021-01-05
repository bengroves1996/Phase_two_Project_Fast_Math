class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :word
      t.integer :comment_id
    end 
  end
end
