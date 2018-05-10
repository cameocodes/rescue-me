class PetPolicy < ApplicationPolicy
    def index?
      true
    end
  
    def create?
      true if user.present? && user.profile.rescue == 1
    end
  
    def update?
      true if user.present? && user == record.user 
    end
  
    def destroy?
      true if user.present? && user == record.user
    end

    
  end