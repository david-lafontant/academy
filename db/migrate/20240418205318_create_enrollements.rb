# frozen_string_literal: true

class CreateEnrollements < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollements do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
