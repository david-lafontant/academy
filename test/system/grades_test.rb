# frozen_string_literal: true

require 'application_system_test_case'

class GradesTest < ApplicationSystemTestCase
  setup do
    @grade = grades(:one)
  end

  test 'visiting the index' do
    visit grades_url
    assert_selector 'h1', text: 'Grades'
  end

  test 'should create grade' do
    visit grades_url
    click_on 'New grade'

    fill_in 'Course', with: @grade.course_id
    fill_in 'Grade', with: @grade.grade
    fill_in 'User', with: @grade.user_id
    click_on 'Create Grade'

    assert_text 'Grade was successfully created'
    click_on 'Back'
  end

  test 'should update Grade' do
    visit grade_url(@grade)
    click_on 'Edit this grade', match: :first

    fill_in 'Course', with: @grade.course_id
    fill_in 'Grade', with: @grade.grade
    fill_in 'User', with: @grade.user_id
    click_on 'Update Grade'

    assert_text 'Grade was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Grade' do
    visit grade_url(@grade)
    click_on 'Destroy this grade', match: :first

    assert_text 'Grade was successfully destroyed'
  end
end
