class AddActioncodeToOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_reference :organizations, :actioncode, foreign_key: true
  end
end
