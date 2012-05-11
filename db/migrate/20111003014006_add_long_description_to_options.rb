class AddLongDescriptionToOptions < ActiveRecord::Migration
  def self.up
    add_column :options, :long_description, :text
    add_column :options, :additional_details, :text
  end

  def self.down
    remove_column :options, :long_description
    remove_column :options, :additional_details        
  end
end
