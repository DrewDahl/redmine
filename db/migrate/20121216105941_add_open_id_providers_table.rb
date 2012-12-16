class AddOpenIdProvidersTable < ActiveRecord::Migration
  def self.up
  create_table :open_id_providers, :force => true do |t|
    t.string :url,                :null => false
    t.string :name, :limit => 30, :null => false
  end

  end

  def self.down
    drop_table :open_id_providers
  end
end
