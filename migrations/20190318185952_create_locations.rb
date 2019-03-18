Sequel.migration do
  up do
    create_table(:locations) do
      primary_key :id
      String :name, null: false
      String :value, null: false
    end
  end

  down do
    drop_table(:locations)
  end
end
