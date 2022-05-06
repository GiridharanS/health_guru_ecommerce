# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates_presence_of :name, :price, :image
end
