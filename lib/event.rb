require 'time'

class Event
  attr_accessor :start_date # attr_accessor makes it possible to Class.variable read and edit the instance's variable's values
  @title # '@' is about instance variable
  @start_date # Time format
  @duration # in minutes
  @attendees # a given list

  def initialize(start_date_input, duration_input, title_input, attendees_list_input)
    @start_date = Time.parse(start_date_input)
    @duration = duration_input
    @title = title_input
    @attendees = attendees_list_input
  end

  # Adds a day to the start date
  def postpone_24h
    @start_date += 24*60*60
  end

  #Connaître la date de fin ;
  def end_date
    @start_date + @duration*60
  end
  
  #Savoir si un événement a déjà eu lieu (est-ce qu'il a commencé / est fini) ;
  def is_past?
    @start_date < Time.new ? true : false
  end

  #Savoir si au contraire un événement est dans le futur ;
  def is_future?
    @start_date > Time.new ? true : false
  end

  #Savoir si un événement est bientôt (dans moins de 30 minutes) ;
  def is_soon?
    @start_date < ( Time.new + 30*60 ) && @start_date > Time.new ? true : false
  end

  #to_s
  def to_s
    puts "Titre : #{@title}"
    puts "Date de début : #{@start_date}"
    puts "Durée : #{@duration}"
    puts "Invités : #{@attendees}"
  end
end