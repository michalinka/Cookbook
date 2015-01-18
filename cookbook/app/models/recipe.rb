class Recipe < ActiveRecord::Base
  belongs_to :user
  # ensure that a user_id is present
  validates :user_id, presence: true
=begin
  # ensure that title is present and at least 10 chars long
  validates :title, length: { minimum: 10 }, presence: true

  # ensure the url is present, and respects the URL format for http/https
  validates :url, format: {with: Regexp.new(URI::regexp(%w(http https)))}, presence: true
=end
  validates :name, presence: true
  validates :content, presence: true
  validates :preparing_time, presence: true
  validates :difficulty, presence: true
  
  has_many :ingredients_in_recipes
  has_many :ingredients, :through => :ingredients_in_recipes
  
  belongs_to :category
end
