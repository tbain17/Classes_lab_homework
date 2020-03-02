class Student
attr_accessor :name, :cohort


  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_chat()
    return "I can talk!"
  end
end
