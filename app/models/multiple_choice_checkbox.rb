class MultipleChoiceCheckbox < QuizQuestion
  def edit(count)
  end

  def complete(count, answer = nil)
  end

  def view_completed_question(count, answer)
  end

  def view_question_text
    html = "<b>" + self.txt + '</b><br />'
    html += "Question Type: " + self.type + '<br />'
    if self.quiz_question_choices
      self.quiz_question_choices.each do |choices|
        html += if choices.iscorrect?
                  "  - <b>" + choices.txt + "</b><br /> "
                else
                  "  - " + choices.txt + "<br /> "
                end
      end
      html += '<br />'
    end
    html.html_safe
  end
end
