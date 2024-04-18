# frozen_string_literal: true

require 'application_system_test_case'

class ContentsTest < ApplicationSystemTestCase
  setup do
    @content = contents(:one)
  end

  test 'visiting the index' do
    visit contents_url
    assert_selector 'h1', text: 'Contents'
  end

  test 'should create content' do
    visit contents_url
    click_on 'New content'

    fill_in 'File path', with: @content.file_path
    fill_in 'Lesson', with: @content.lesson_id
    fill_in 'Title', with: @content.title
    fill_in 'Type', with: @content.type
    click_on 'Create Content'

    assert_text 'Content was successfully created'
    click_on 'Back'
  end

  test 'should update Content' do
    visit content_url(@content)
    click_on 'Edit this content', match: :first

    fill_in 'File path', with: @content.file_path
    fill_in 'Lesson', with: @content.lesson_id
    fill_in 'Title', with: @content.title
    fill_in 'Type', with: @content.type
    click_on 'Update Content'

    assert_text 'Content was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Content' do
    visit content_url(@content)
    click_on 'Destroy this content', match: :first

    assert_text 'Content was successfully destroyed'
  end
end
