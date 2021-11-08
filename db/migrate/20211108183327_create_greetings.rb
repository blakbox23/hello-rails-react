class CreateGreetings < ActiveRecord::Migration[6.1]
  def change
    create_table :greetings do |t|
      t.text :Message

      t.timestamps
    end
  end
end
