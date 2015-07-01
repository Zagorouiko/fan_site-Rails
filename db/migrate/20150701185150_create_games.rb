class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.column :name, :string
      t.column :company_id, :integer

      t.timestamps
    end
  end
end
