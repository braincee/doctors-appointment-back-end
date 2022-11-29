class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :city
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
