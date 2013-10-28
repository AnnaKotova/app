class CreateAddIssues < ActiveRecord::Migration
  def change
    create_table :add_issues do |t|
      t.string :user
      t.string :repo      
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
