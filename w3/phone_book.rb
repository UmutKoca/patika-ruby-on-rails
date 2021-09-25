class PhoneBook
  attr_accessor :name, :surname, :phone_number

  def initialize(name, surname, phone_number)
    @name = name
    @surname = surname
    @phone_number = phone_number
  end

  def self.color
    'red'
  end

  def limit_of_people_count
    10
  end

  def print_full_name
    full_name
  end
  private
  def full_name
       "#{name} #{surname}"
  end
end
