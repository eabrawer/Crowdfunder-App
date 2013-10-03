class Pledge < ActiveRecord::Base
  attr_accessible :amount
  belongs_to :user
  belongs_to :project
  validates :amount, numericality: {greater_than: 0}
  validates :user, presence: true
  validates :project, presence: true

  end
