class Question < ActiveRecord::Base
  attr_accessible :answer, :category_id, :quiz_id, :text, :w, :x, :y, :z

  before_create :default_values

  belongs_to :quiz

  def as_json(options = {})
    {
      text: text,
      answer: answer,
      category_id: category_id,
      w: w,
      x: x,
      y: y,
      z: z
    }
  end

  private
    def default_values
      self.text ||= ""
      self.answer ||= ""
      self.category_id ||= 0
      self.w ||= ""
      self.x ||= ""
      self.y ||= ""
      self.z ||= ""
    end
end
