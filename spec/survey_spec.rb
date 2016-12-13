require('spec_helper')

describe(Survey) do
  it('validates the presence of a title') do
    survey = Survey.new({title: '', description: 'a survey'})
    expect(survey.save()).to(eq(false))
  end

  describe('#questions') do
    it('returns all questions that belong to the survey') do
      test_survey = Survey.create({title: 'Favorite Butter', description: 'A survey of peoples favorite butter flavors'})
      test_question1 = Question.create({description: 'Do you enjoy margarine?', survey_id: test_survey.id()})
      test_question2 = Question.create({description: 'Do you like toast and/or biscuits?', survey_id: test_survey.id()})
      expect(test_survey.questions()).to(eq([test_question1, test_question2]))
    end
  end
end
