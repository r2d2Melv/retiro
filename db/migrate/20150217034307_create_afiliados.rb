class CreateAfiliados < ActiveRecord::Migration
  def change
    create_table :afiliados do |t|
      t.string :codigo
      t.string :nombre
      t.string :apellido
      t.string :genero
      t.integer :edad
      t.string :estado_civil
      t.string :string
      t.text :tipo_id
      t.text :no_id
      t.string :direccion1
      t.string :direccion2
      t.string :ciudad
      t.string :municipio
      t.string :departamento
      t.string :pais
      t.string :actividad

      t.timestamps null: false
    end
  end
end
