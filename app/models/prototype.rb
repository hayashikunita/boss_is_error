class Prototype < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :folder
  belongs_to :level
  belongs_to :errortittle
  belongs_to_active_hash :errortittle
  # belongs_to :category

  has_many :comments,   dependent: :destroy
  belongs_to :user

  validates :title,         presence: true
  validates :catch_copy,   presence: true
  validates :folder_id,       numericality: {other_than: 0, message: "can't be blank"}
  validates :level_id,        numericality: {other_than: 0, message: "can't be blank"}
  validates :errortittle_id,  numericality: {other_than: 0, message: "can't be blank"}



  def self.search(search)
    if search != ""
      Prototype.where('title LIKE(?)', "%#{search}%").
      or(where('catch_copy LIKE(?)', "%#{search}%"))
    else
      Prototype.all
    end
  end
end
