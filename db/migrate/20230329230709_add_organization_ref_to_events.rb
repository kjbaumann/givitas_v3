class AddOrganizationRefToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :organization, index: true
  end
end
