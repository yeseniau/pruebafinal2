class CreateJoinTableServicesAppoiments < ActiveRecord::Migration[7.0]
  def change
    create_join_table :services, :appointments do |t|
      # t.index [:service_id, :appointment_id]
      # t.index [:appointment_id, :service_id]
    end
  end
end
