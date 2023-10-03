# frozen_string_literal: true

class Company < ApplicationRecord
    has_many :company_links
    has_many :users, through: :company_links
end
