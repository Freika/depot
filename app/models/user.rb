class User < ActiveRecord::Base
  validate :name, pesence: true, uniqueness: true
  has_secure_password
  after_destroy :ensure_an_admin_remains


private
  def ensure_an_admin_remains
    if User.count.zero?
      raise "Last user can't be deleted"
    end    
  end
end
