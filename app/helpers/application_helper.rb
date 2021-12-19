# frozen_string_literal: true

module ApplicationHelper
    def show_role(user)
        if !user.role.nil?
          user.role.name
        else
          'The user`s role is not assigned yet'
        end
      end
end
