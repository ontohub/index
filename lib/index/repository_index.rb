# frozen_string_literal: true

module Index
  # Index for Repository data
  class RepositoryIndex < Chewy::Index
    define_type ::Repository do
      field :slug, type: 'text'
      field :name, type: 'text'
      field :description, type: 'text'
      field :content_type, type: 'text'
      field :remote_address, type: 'text'
      field :remote_type, type: 'text'
      field :created_at, type: 'date'
      field :updated_at, type: 'date'
    end
  end
end
