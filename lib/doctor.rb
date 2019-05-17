
class Doctor

  @@all_Doctors = []

    attr_reader :name

    def initialize(name)
      @name = name
      @@all_Doctors << self
    end

    def new_appointment(patient,date)
      new_appointment = Appointment.new(date,patient,self)
    end

    def appointments
      Appointment.all.select do |appointments|
        appointments.doctor == self
      end
    end

    def patients
      self.appointments.collect do |appointments|
        appointments.patient
      end
    end

    def self.all
      @@all_Doctors
    end




end
