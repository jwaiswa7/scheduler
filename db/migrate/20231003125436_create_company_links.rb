class CreateCompanyLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :company_links do |t|
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.string :role
      t.string :status

      t.timestamps
    end
  end
end
