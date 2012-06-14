class CreateInitialUserIfNone < ActiveRecord::Migration
  def up
    if User.count == 0
      User.create(:email => 'admin@admin.local', :password => 'password')
    end
  end

  def down
    User.find_by_email('admin@admin.local').destroy
  end
end
