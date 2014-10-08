# Create a program for a dry cleaning business that keeps track of customers,
# their clothing that they brought in, and managing their invoices.
#
# Specifically, the system should have the following features:
#
# 1. Allow for the creation of invoices when a customer drops of clothing.
# 2. Each invoice will contain the list of garments brought in, and what type of
#    job should be done to each garment (e.g. dry clean, alterations, etc.)
# 3. The invoice will start off as being unpaid, but you should have the ability
#    to indicate when the invoice is paid off.
# 4. The invoice should have a method that calculates the total cost based on the
#    cost of each garment
# 5. An invoice, when first generated, should have a unique id. (This is tricky.)
# 6. You should be able to pull up all the unpaid invoices for a given customer.
# 7. You should be able to pull up all the contact information for a given 
#    customer.
# 8. Feel free to add other realistic features.
# 9. Send this to my cleaners, and maybe they'll stop losing my clothes!

class Customer
  def initialize(first_name, last_name, phone_number, email)
    @invoices = []
  end

end

class Garment
  def initialize(garment_type, job, cost)

  end

end

class Invoice
  def initialize
    @paid_off = false
    @garments = []
  end

end