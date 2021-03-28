class Prototype < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :folder
  belongs_to :level


  has_many :comments,   dependent: :destroy
  belongs_to :user

  validates :title,         presence: true
  validates :catch_copy,   presence: true
  validates :folder_id,  numericality: {other_than: 0, message: "can't be blank"}
  validates :level_id,  numericality: {other_than: 0, message: "can't be blank"}
end
