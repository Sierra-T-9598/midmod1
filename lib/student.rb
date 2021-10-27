class Student
  attr_accessor :name, :age, :scores
  def initialize(about)
    @about = {}
    @name = about[:name]
    @age = about[:age]
    @scores = []
  end

  def log_score(score)
    scores << score
  end

  def grade
    scores.sum / scores.length.to_f
  end
end
