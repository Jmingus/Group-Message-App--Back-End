class User < ActiveRecord::Base
  def time_stamp
    (created_at - 6.hours).strftime('Created at %m/%d/%Y at %I:%M%p')
  end
end
