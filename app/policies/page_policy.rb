class ProfilePolicy < ApplicationPolicy
  
    def apply?
      true if user.present?
    end

    
end