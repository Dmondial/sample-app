class AddFileToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :file, :string
  end
end
