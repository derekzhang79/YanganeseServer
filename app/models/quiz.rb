class Quiz < ActiveRecord::Base
  CATEGORIES = ["Astro", "Bio", "Chem", "Earth", "Gen", "Math", "Phys"]

  attr_accessible :author, :category_id, :download_count, :rating_count, :rating_value, :title

  before_create :default_values

  has_many :questions

  def as_json(options = {})
    {
      title: title,
      author: author,
      category_id: category_id,
      rating_percent: rating_count == 0 ? 0.0 : rating_value.to_f/rating_count
    }
  end

  private
    def default_values
      self.title ||= ""
      self.author ||= ""
      self.category_id ||= 0
      self.download_count ||= 0
      self.rating_count ||= 0
      self.rating_value ||= 0
    end
end
