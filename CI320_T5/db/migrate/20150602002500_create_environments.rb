class CreateEnvironments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
      t.string :environment_name

      t.timestamps
    end
  end
end
