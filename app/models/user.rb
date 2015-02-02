class User < ActiveRecord::Base
  def time_stamp
    (created_at - 6.hours).strftime('Created at %m/%d/%Y at %I:%M%p')
  end

  def filter
    @new_user = self.message.gsub('bitch', '****')
    @new_user = @new_user.gsub('fuck', '*****')
    @new_user = @new_user.gsub('shit', '*****')
    @new_user = @new_user.gsub('damn', '*****')
    @new_user = @new_user.gsub('Bitch', '*****')
    @new_user = @new_user.gsub('Fuck', '*****')
    @new_user = @new_user.gsub('Shit', '*****')
    @new_user = @new_user.gsub('Damn', '*****')
    @new_user = @new_user.gsub('BITCH', '*****')
    @new_user = @new_user.gsub('FUCK', '*****')
    @new_user = @new_user.gsub('SHIT', '*****')
    @new_user = @new_user.gsub('DAMN', '*****')

  end
end
