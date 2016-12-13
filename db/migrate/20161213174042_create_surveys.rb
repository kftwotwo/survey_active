class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table(:surveys) do |t|
      t.column(:title, :string)
      t.column(:description, :string)

      t.timestamps()
    end
  end
end
