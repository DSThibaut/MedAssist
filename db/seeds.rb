User.destroy_all
Medicament.destroy_all
MedicalCenter.destroy_all
MedicalCare.destroy_all
Appointment.destroy_all
MedicalCareMedicament.destroy_all

User.create!(email: "test@test.com", first_name: "Jean", last_name: "Durant", password: "password")
User.create!(email: "test2@test.com", first_name: "John", last_name: "Dupont", password: "password")
User.create!(email: "test3@test.com", first_name: "Julie", last_name: "Dugland", password: "password")
User.create!(email: "test4@test.com", first_name: "Jacob", last_name: "Duchene", password: "password")
User.create!(email: "test5@test.com", first_name: "Valérie", last_name: "Dubouleau", password: "password")
puts "#{User.count} Users crées"
Medicament.create!(name: "Doliprane", unit: "comprimé", stock: 100)
Medicament.create!(name: "Daffalgan", unit: "ampoule", stock: 100)
Medicament.create!(name: "Efferalgan", unit: "injection", stock: 100)
Medicament.create!(name: "Flector", unit: "pommade", stock: 100)
Medicament.create!(name: "Subutex", unit: "comprimé", stock: 100)
puts "#{Medicament.count} Medicaments crées"
MedicalCenter.create!(name: "Clinique du lac", address: "20 rue des capucins 69001 Lyon", phone_number: "0606060606")
MedicalCenter.create!(name: "Hopital des malades", address: "12 avenue général leclerc 69160", phone_number: "07-07-07-07-07")
MedicalCenter.create!(name: "Docteur Desanté", address: "14 rue joseph richard 69110 Sainte-Foy-les-Lyon", phone_number: "08 08 08 08 08")
MedicalCenter.create!(name: "Laboratoires Seringue", address: "31 rue du buisset 69600 Oullins", phone_number: "0909090909")
MedicalCenter.create!(name: "Laboratoire Piqure", address: "10 rue jules froment 69008 Lyon", phone_number: "0505050505")
puts "#{MedicalCenter.count} MedicalCenter crées"
MedicalCare.create!(title: "Traitement pour le Diabète", description: "Defaut d'insuline dans le corps", user_id: 1, start_date: "2023-06-12", end_date: "2023-07-12")
MedicalCare.create!(title: "Traitement pour le Diabète", description: "Defaut d'insuline dans le corps", user_id: 2, start_date: "2023-06-15", end_date: "2023-07-15")
MedicalCare.create!(title: "Traitement pour le Diabète", description: "Defaut d'insuline dans le corps", user_id: 3, start_date: "2023-06-25", end_date: "2023-07-25")
MedicalCare.create!(title: "Traitement pour le Diabète", description: "Defaut d'insuline dans le corps", user_id: 4, start_date: "2023-07-01", end_date: "2023-08-01")
MedicalCare.create!(title: "Traitement pour le Diabète", description: "Defaut d'insuline dans le corps", user_id: 5, start_date: "2023-07-12", end_date: "2023-08-12")
puts "#{MedicalCare.count} MedicalCare crées"
Appointment.create!(date: DateTime.current + 2.hour, status: 0, user_id: 1, medical_center_id: 1)
Appointment.create!(date: DateTime.current + 2.days + 4.hour, status: 1, user_id: 2, medical_center_id: 2)
Appointment.create!(date: DateTime.current + 2.days + 4.hour, status: 2, user_id: 3, medical_center_id: 3)
Appointment.create!(date: DateTime.current + 2.days + 4.hour, status: 0, user_id: 4, medical_center_id: 4)
Appointment.create!(date: DateTime.current + 2.days + 4.hour, status: 1, user_id: 5, medical_center_id: 5)
puts "#{Appointment.count} Appointments crées"
MedicalCareMedicament.create!(medical_care_id: 1, medicament_id: 1, frequence: 0, dose: 2)
MedicalCareMedicament.create!(medical_care_id: 2, medicament_id: 2, frequence: 1, dose: 1)
MedicalCareMedicament.create!(medical_care_id: 3, medicament_id: 3, frequence: 0, dose: 4)
MedicalCareMedicament.create!(medical_care_id: 4, medicament_id: 4, frequence: 2, dose: 2)
MedicalCareMedicament.create!(medical_care_id: 5, medicament_id: 5, frequence: 1, dose: 3)
puts "#{MedicalCareMedicament.count} MedicalCareMedicament crées"

puts "Finish"
