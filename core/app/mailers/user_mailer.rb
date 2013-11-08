class UserMailer < ActionMailer::Base
  default :from => '"喜马拉雅账户中心"<service@ximalaya.com>'

  def register(address)
  	mail(:to => address, :subject => 'Welcome')
  end
end
