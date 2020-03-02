class Student
attr_accessor :name, :cohort


  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_chat()
    return "I can talk!"
  end

  def say_favourite_language(favourite)
    return "I love #{favourite}"
  end
end
