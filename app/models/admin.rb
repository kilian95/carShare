class Admin < ApplicationRecord
  
  #https://github.com/plataformatec/devise/wiki/How-To:-Add-an-Admin-Role
  
  #timeoutable : user must sign in after certain amount of time.
  #lockable : locks acount after too many failed login attempts
  #timeoutable : user must sign in after certain amount of time.
  #trackable: track sign in details

  devise :database_authenticatable, :trackable, :timeoutable, :lockable

  
end
