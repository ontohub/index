# frozen_string_literal: true

module Index
  # Index for Organization data
  class OrganizationIndex < Chewy::Index
    define_type ::Organization do
      field :slug, type: 'text'
      field :display_name, type: 'text'
      field :description, type: 'text'
    end
  end
end
