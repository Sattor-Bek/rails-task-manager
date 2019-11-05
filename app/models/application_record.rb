class ApplicationRecord < ActiveRecord::Base
  # self.abstract_class = true
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :details
      t.boolean completed: false

      t.timestapms
    end
  end
end
