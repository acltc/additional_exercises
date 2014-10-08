# This is an app that keeps track of table reservations at a restaurant.
# This restaurant happens to work differently than most, in that when you make
# a reservation, you don't reserve a time, but just get added to the waiting list.
# When a table frees up, the next party on the waiting list gets added to a table.
# However, you must be careful, as there are only a limited number of tables, and each table seats
# only a certain number of people. So the system must figure out which party
# should be seated at which table.
#
# Specifically, the system should:
# 1. Allow for parties (customers) to make a reservation and get on the waitlist.
# 2. If there's an open table that can accomodate the party, they should get 
#    assigned to that table immediately. Otherwise, they remain on the waitlist.
# 3. The system should be efficient. That is, if there's a party of 5, they should
#    be assigned to a table that holds 6 (there are no tables with 5 seats) rather
#    than a table of 8. However, if only an 8-person table is available, they
#    can be seated there.
# 4. The system can track when customers exit the restaurant, and will seat
#    the next party on the waitlist appropriately. However, if the next party can't
#    be seated (e.g. a 2-person table opened up, but the next party on the
#    waitlist has 4 people), then move down the waitlist until you can seat a party
#    that can fit at that table.
# 5. If people are rowdy, they get automatically evicted from the restaurant via
#    their spring-loaded seats. The roof should open up temporarily to ensure
#    the people don't crash into the ceiling. 


class Restaurant
  TABLE_SEATING = [2, 2, 2, 2, 4, 4, 4, 4, 6, 6, 6, 8, 8, 8, 10, 10]

  def initialize
    @tables = []
    TABLE_SEATING.each_with_index do |number_of_seats, index|
      @tables << Table.new(index + 1, number_of_seats)
    end
    @waiting_list = []
  end

  def reserve_party(party)
    @waiting_list << party
  end

  def display_seating_arrangements
    @tables.each do |table|
      puts "Table #{table.table_number}: #{table.currently_seated_party}"
    end
  end

end

class Table
  attr_accessor :table_number, :currently_seated_party

  def initialize(table_number, seats)
    @table_number = table_number
    @seats = seats
  end
end

class Party
  def initialize(number_of_people, last_name)
    @number_of_people = number_of_people
    @last_name = last_name
  end
end

restaurant = Restaurant.new

restaurant.display_seating_arrangements