class Contact < ApplicationRecord

  def pretty_time
    return created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def full_name
    return first_name + " " + last_name
  end

  def japan_number
    return "+81" + phone_number
  end

  def name_john
    if first_name == "John"
      return first_name
    end
  end


end
