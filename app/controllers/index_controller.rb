class IndexController < ApplicationController
  def studentform
    @student = Student.new
  end
end
