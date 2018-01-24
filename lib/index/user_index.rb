# frozen_string_literal: true

module Index
  # Index for User data
  class UserIndex < Chewy::Index
    define_type ::User do
      field :slug, type: 'text'
      field :display_name, type: 'text'
    end
  end
end
