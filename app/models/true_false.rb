class TrueFalse < QuizQuestion
  def edit(count)
  end

  def complete(count, answer = nil)
  end

  def view_completed_question(count, answer)
    @question = self
    html=""
    html+= "Correct Answer is: "
    html+= QuizQuestionChoice.where(question_id: @question.id,iscorrect: 1).first.txt
    html+= ""
    html+= "Your answer is: "
    html+= answer.first.coments + ""
    if(answer.first.answer == 1)
      html+= "<img src=/assets/Check-icon.png/>"
    else
      html+= "<img src=/assets/delete_icon.png/>"
    end
    html+= ""
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
