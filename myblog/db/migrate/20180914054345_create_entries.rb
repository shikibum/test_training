class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :title, :string, :null => false
      t.text :body, :text, :null => false
      t.date :posted_on, :date
      t.timestamp :created_at, :timestamp
      t.timestamp :updated_at, :timestamp
      t.integer :blog_id, :integer, :null => false

      t.timestamps
    end
  end
end
