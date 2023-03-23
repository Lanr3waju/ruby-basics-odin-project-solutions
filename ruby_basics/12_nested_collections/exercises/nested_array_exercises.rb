def blank_seating_chart(number_of_rows, seats_per_row)
  # return a 2d array to represent a seating chart that contains
  # number_of_rows nested arrays, each with seats_per_row entries of nil to
  # represent that each seat is empty.

  # Example: blank_seating_chart(2, 3) should return:
  # [
  #   [nil, nil, nil],
  #   [nil, nil, nil]
  # ]

  # NOTE: if one of the nested arrays is changed, the others should **not**
  # change with it
  return  Array.new(number_of_rows) { Array.new(seats_per_row) }
end

def add_seat_to_row(chart, row_index, seat_to_add)
  # take a chart (2d array)  and add seat_to_add to the end of the row that is
  # at row_index index of the chart, then return the chart
  chart[row_index].push(seat_to_add)
  return chart
end

def add_another_row(chart, row_to_add)
  # take a chart and add row_to_add to the end of the chart,
  # then return the chart.
  chart.push(row_to_add)
  return chart
end

def delete_seat_from_row(chart, row_index, seat_index)
  # take a chart and delete the seat at seat_index of the row at row_index of
  # the chart, then return the chart
  # Hint: explore the ruby docs to find a method for deleting from an array!
  chart[row_index].delete_at(seat_index)
  return chart
end

def delete_row_from_chart(chart, row_index)
  # take a chart and delete the row at row_index of the chart,
  chart.delete_at(row_index)
  # then return the chart
  return chart
end

def count_empty_seats(chart)
  # take a chart and return the number of empty (nil) seats in it
  empty_seats = 0
  chart.map do |each_chart|
      each_chart.map do |seat|
        empty_seats += 1 if seat == nil
      end
  end
  return empty_seats

  # NOTE: `chart` should **not** be mutated
end

def find_favorite(array_of_hash_objects)
  # take an array_of_hash_objects and return the hash which has the key/value
  # pair :is_my_favorite? => true. If no hash returns the value true to the key
  # :is_my_favorite? it should return nil

  # array_of_hash_objects will look something like this:
  # [
  #   { name: 'Ruby', is_my_favorite?: true },
  #   { name: 'JavaScript', is_my_favorite?: false },
  #   { name: 'HTML', is_my_favorite?: false }
  # ]

  # TIP: there will only be a maximum of one hash in the array that will
  # return true to the :is_my_favorite? key
  favorite = nil
  array_of_hash_objects.map do |hash|
   hash.map do |key, value|
     if value == true
       favorite = hash
     end
   end
  end
  return favorite
end

