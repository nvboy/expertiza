class MultipleChoiceCheckbox < QuizQuestion
  def edit(count)


    html = '<table id="questions_table">'
    html = '<tr>'
    html += '<td align="center"><a rel="nofollow" data-method="delete" href="/questions/' + self.id.to_s + '">Remove</a></td>'
    html += '<td><input size="6" value="' + self.seq.to_s + '" name="question[' + self.id.to_s + '][seq]" id="question_' + self.id.to_s + '_seq" type="text"></td>'
    html += '<td><textarea cols="50" rows="1" name="question[' + self.id.to_s + '][txt]" id="question_' + self.id.to_s + '_txt" placeholder="Edit question content here">' + self.txt + '</textarea></td>'
    html += '<td><input size="20" disabled="disabled" value="' + self.type + '" name="question[' + self.id.to_s + '][type]" id="question_' + self.id.to_s + '_type" type="text">''</td>'
    html += '</tr>'

    questionnum=@question.id
    @quiz_question_choices = QuizQuestionChoice.where(question_id: @question.id)

=begin
     for @quiz_question_choice in @quiz_question_choices
      html = '<tr>'
      html += '<td>'
      hidden_field_tag("quiz_question_choices[#{questionnum}][MultipleChoiceCheckbox][#{count}][iscorrect]",'0')
      check_box_tag("quiz_question_choices[#{questionnum}][MultipleChoiceCheckbox][#{count}][iscorrect]",'1', @quiz_question_choice.iscorrect)
      html = '&nbsp;'
      text_field_tag "quiz_question_choices[#{questionnum}][MultipleChoiceCheckbox][#{count}][txt]", @quiz_question_choice.txt, :size=>40

      html += '</td>'
      html += '</tr>'
=end

      html.html_safe
  end
end
  def complete(count, answer = nil)
  end

  def view_completed_question(count, answer)
  end
end
