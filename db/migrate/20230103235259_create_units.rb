class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.string  :address
      t.string  :current_tenant
      t.boolean :open_request?

      t.integer :owner_id

      t.timestamps
    end
  end
end
