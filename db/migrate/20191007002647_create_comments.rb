class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true

      # this line adds an integer column called `article_id`. Clave Foranea
      # t.references :article, index: true

      t.timestamps
    end
  end
end
