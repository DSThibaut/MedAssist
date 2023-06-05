# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#


User.create!(email: "test@test.com", first_name: "Jean", last_name: "Durant", password: "password")
User.create!(email: "test2@test.com", first_name: "John", last_name: "Dupont", password: "password")
User.create!(email: "test3@test.com", first_name: "Julie", last_name: "Dugland", password: "password")
User.create!(email: "test4@test.com", first_name: "Jacob", last_name: "Duchene", password: "password")
User.create!(email: "test5@test.com", first_name: "Valérie", last_name: "Dubouleau", password: "password")

Medicament.create!(name: "Doliprane", unit: "comprimé")
Medicament.create!(name: "Daffalgan", unit: "ampoule")
Medicament.create!(name: "Efferalgan", unit: "injection")
Medicament.create!(name: "Flector", unit: "pommade")
Medicament.create!(name: "Subutex", unit: "comprimé")

MedicalCenter.create!(name: "Clinique du lac", address: "20 rue des capucins 69001 Lyon", phone_number: "0606060606")
MedicalCenter.create!(name: "Hopital des malades", address: "12 avenue général leclerc 69160", phone_number: "07-07-07-07-07")
MedicalCenter.create!(name: "Docteur Desanté", address: "14 rue joseph richard 69110 Sainte-Foy-les-Lyon", phone_number: "08 08 08 08 08")
MedicalCenter.create!(name: "Laboratoires Seringue", address: "31 rue du buisset 69600 Oullins", phone_number: "0909090909")
MedicalCenter.create!(name: "Laboratoire Piqure", address: "10 rue jules froment 69008 Lyon", phone_number: "0505050505")

MedicalCare.create!(title: "Traitement pour le Diabète", description: "Defaut d'insuline dans le corps", pathology: "Diabète", user_id: 1)
MedicalCare.create!(title: "Traitement pour le Diabète", description: "Defaut d'insuline dans le corps", pathology: "Diabète", user_id: 2)
MedicalCare.create!(title: "Traitement pour le Diabète", description: "Defaut d'insuline dans le corps", pathology: "Diabète", user_id: 3)
MedicalCare.create!(title: "Traitement pour le Diabète", description: "Defaut d'insuline dans le corps", pathology: "Diabète", user_id: 4)
MedicalCare.create!(title: "Traitement pour le Diabète", description: "Defaut d'insuline dans le corps", pathology: "Diabète", user_id: 5)

Appointment.create!(date: "2023-06-16", status: 0, user_id: 1, medical_center_id: 1)
Appointment.create!(date: "2023-07-20", status: 1, user_id: 2, medical_center_id: 2)
Appointment.create!(date: "2023-07-14", status: 2, user_id: 3, medical_center_id: 3)
Appointment.create!(date: "2023-06-24", status: 0, user_id: 4, medical_center_id: 4)
Appointment.create!(date: "2023-06-28", status: 1, user_id: 5, medical_center_id: 5)

MedicalCareMedicament.create!(medical_care_id: 1, medicament_id: 1, frequence: 0, stock: 100, dose: 2)
MedicalCareMedicament.create!(medical_care_id: 2, medicament_id: 2, frequence: 1, stock: 100, dose: 1)
MedicalCareMedicament.create!(medical_care_id: 3, medicament_id: 3, frequence: 0, stock: 100, dose: 4)
MedicalCareMedicament.create!(medical_care_id: 4, medicament_id: 4, frequence: 2, stock: 100, dose: 2)
MedicalCareMedicament.create!(medical_care_id: 5, medicament_id: 5, frequence: 3, stock: 100, dose: 3)
