User.destroy_all
MedicalCareMedicament.destroy_all
Medicament.destroy_all
Appointment.destroy_all
MedicalCenter.destroy_all
MedicalCare.destroy_all

user_test = User.create!(email: "test@test.com", first_name: "Jean", last_name: "Durant", password: "password")
puts "#{User.count} Users crées"

Coenzyme_Q10 = Medicament.create!(name: "Coenzyme Q10", unit: "Vitamine", stock: 38)
Quercetine = Medicament.create!(name: "Quercétine", unit: "Vitamine", stock: 42)
Creatine = Medicament.create!(name: "Créatine", unit: "Complément", stock: 36)
Vitamine_D = Medicament.create!(name: "Vitamine D", unit: "Vitamine", stock: 46)
Calcium = Medicament.create!(name: "Calcium", unit: "Complément", stock: 38)
Haelan = Medicament.create!(name: "Haelan", unit: "Complément", stock: 24)
Protandim = Medicament.create!(name: "Protandim", unit: "Complément", stock: 56)
Tegretol = Medicament.create!(name: "Tégrétol", unit: "Comprimé", stock: 28)
Dantrium = Medicament.create!(name: "Dantrium", unit: "Comprimé", stock: 32)
Lioresal = Medicament.create!(name: "Liorésal", unit: "Comprimé", stock: 56)
Mexitil = Medicament.create!(name: "Mexitil", unit: "Gellule", stock: 38)
Lozartan = Medicament.create!(name: "Lozartan", unit: "Comprimé", stock: 42)
Deflazacort = Medicament.create!(name: "Deflazacort", unit: "Comprimé", stock: 54)
Dilantin = Medicament.create!(name: "Dilantin", unit: "Comprimé", stock: 48)
puts "#{Medicament.count} Medicaments crées"


medical_center_1 = MedicalCenter.create!(name: "BIOGROUP - Lyon Terreaux", address: "19 Rue Paul Chanavard, 69001 Lyon", phone_number: "06-45-32-56-89")
medical_center_2 = MedicalCenter.create!(name: "Eurofins CBM 69 - Croix Rousse", address: "4 Place de la Croix-Rousse, 69004 Lyon", phone_number: "07-12-00-56-83")
medical_center_3 = MedicalCenter.create!(name: "Centre Expert du Mouvement", address: "84 Quai Joseph Gillet, 69004 Lyon", phone_number: "06-45-45-38-88")
medical_center_4 = MedicalCenter.create!(name: "Hôpital de la Croix-Rousse", address: "103 Gd Rue de la Croix-Rousse, 69004 Lyon", phone_number: "04-33-90-91-12")
medical_center_5 = MedicalCenter.create!(name: "Hôpital Edouard Herriot", address: "5 Place d'Arsonval, 69003 Lyon", phone_number: "04-34-32-87-15")
medical_center_6 = MedicalCenter.create!(name: "Kinésia - Centre de Kinésithérapie", address: "28 Avenue Rockfeller, 69008 Lyon", phone_number: "06-34-32-87-15")
medical_center_7 = MedicalCenter.create!(name: "Dr. MALEYSSON, Kinésithérapeute", address: "9 Rue Saint-Hippolyte, 69008 Lyon", phone_number: "04-34-54-76-76")
medical_center_8 = MedicalCenter.create!(name: "Dr. CRELIN - Kinésithérapeute", address: "46 Avenue Condorcet, 69100 Villeurbanne", phone_number: "04-66-94-81-31")
medical_center_9 = MedicalCenter.create!(name: "Hôpital Pierre Wertheimer", address: "59 Boulevard Pinel, 69500 Bron", phone_number: "04-55-65-77-80")

puts "#{MedicalCenter.count} MedicalCenter crées"

patient_1 = MedicalCare.create!(title: "Gabriel Dupont - DMD", description: "Dystrophie musculaire de Duchenne", user_id: user_test.id, start_date: "2023-06-02", end_date: "2023-09-02")
patient_2 = MedicalCare.create!(title: "Jean Durand - MDC", description: "Maladie de Charcot", user_id: user_test.id, start_date: "2023-06-10", end_date: "2024-11-10")
puts "#{MedicalCare.count} MedicalCare crées"

MedicalCareMedicament.create!(medical_care_id: patient_1.id, medicament: Deflazacort, dose: 6)
MedicalCareMedicament.create!(medical_care_id: patient_1.id, medicament: Mexitil, dose: 3)
MedicalCareMedicament.create!(medical_care_id: patient_1.id, medicament: Protandim, dose: 9)
MedicalCareMedicament.create!(medical_care_id: patient_1.id, medicament: Quercetine, dose: 6)
MedicalCareMedicament.create!(medical_care_id: patient_1.id, medicament: Tegretol, dose: 3)

MedicalCareMedicament.create!(medical_care_id: patient_2.id, medicament: Lozartan, dose: 3)
MedicalCareMedicament.create!(medical_care_id: patient_2.id, medicament: Creatine, dose: 9)
MedicalCareMedicament.create!(medical_care_id: patient_2.id, medicament: Coenzyme_Q10, dose: 3)
MedicalCareMedicament.create!(medical_care_id: patient_2.id, medicament: Calcium, dose: 3)
MedicalCareMedicament.create!(medical_care_id: patient_2.id, medicament: Dantrium, dose: 6)
MedicalCareMedicament.create!(medical_care_id: patient_2.id, medicament: Haelan, dose: 9)
MedicalCareMedicament.create!(medical_care_id: patient_2.id, medicament: Dilantin, dose: 6)
puts "#{MedicalCareMedicament.count} MedicalCareMedicament crées"

puts "Finish"
