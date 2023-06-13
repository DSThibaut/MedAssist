module PagesHelper
  def dose(element)
    time = Time.now
    current_time = time.to_fs(:time)
    medication = (element.dose.to_i)/3
    case
    when current_time < "12:00" && !element.morning?
      return "Prise de la matinée #{medication} #{element.medicament.unit} "
    when current_time >= "12:00" && current_time < "16:00"  && !element.noon?
      return "Prise du déjeuner #{medication} #{element.medicament.unit}"
    when current_time >= "16:00"  && !element.evening?
      return "Prise du soir #{medication} #{element.medicament.unit}"
    else
      return ""
    end
  end

  def symb_for_mcm
    current_time = Time.now.to_fs(:time)
    case
    when current_time < "12:00"
      return "morning"
    when current_time >= "12:00" && current_time < "16:00"
      return "noon"
    when current_time >= "16:00"
      return "evening"
    end
  end
end
