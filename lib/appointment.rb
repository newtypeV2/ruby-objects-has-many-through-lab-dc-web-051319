
class Appointment

  @@all_appointments = []

    attr_reader :date,:doctor,:patient

    def initialize(date,patient,doctor)
      @date = date
      @patient = patient
      @doctor = doctor
      @@all_appointments << self
    end

    def self.all
      @@all_appointments
    end


end
