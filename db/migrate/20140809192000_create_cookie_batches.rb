class CreateCookieBatches < ActiveRecord::Migration
  def change
    create_table :cookie_batches do |t|
      t.integer :number_of_cookies
      t.belongs_to :sender, index: true
      t.belongs_to :recipient, index: true

      t.timestamps
    end
  end
end
