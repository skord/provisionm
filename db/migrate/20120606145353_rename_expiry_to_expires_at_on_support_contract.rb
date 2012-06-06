class RenameExpiryToExpiresAtOnSupportContract < ActiveRecord::Migration
  def up
    rename_column :support_contracts, :expiry, :expires_at
  end

  def down
    rename_column :support_contracts, :expires_at, :expiry
  end
end