module ApplicationHelper
  def translate_day(day)
    {
      monday: "Lundi",
      tuesday: "Mardi",
      wednesday: "Mercredi",
      thursday: "Jeudi",
      friday: "Vendredi",
      saturday: "Samedi",
      sunday: "Dimanche",
      mon: "lun",
      tue: "mar",
      wed: "mer",
      thu: "jeu",
      fri: "ven",
      sat: "sam",
      sun: "dim"
    }[day.downcase.to_sym]
  end

  def translate_month(month)
    {
      January: "Janvier",
      February: "Février",
      March: "Mars",
      April: "Avril",
      May: "Mai",
      June: "Juin",
      July: "Juillet",
      August: "Août",
      September: "Septembre",
      October: "Octobre",
      November: "Novembre",
      December: "Décembre"
    }[month.to_sym]
  end
end
