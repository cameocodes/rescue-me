class ProfilePolicy < ApplicationPolicy
    def index?
      false
    end
  
    def create?
      user.present?
    end
  
    def update?
      true if user.present? && user == record.user 
    end
  
    def destroy?
      true if user.present? && user == record.user
    end

    
  end