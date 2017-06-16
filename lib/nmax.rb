require 'nmax/version'

module Nmax

  def self.return_only_numbers(data_in_file)
    arr_numbers = []
    new_el_arr = nil
    arr_text = data_in_file.split('')
    arr_text.each_with_index do |letter, index|
      if is_number?(letter)
        new_el_arr = new_el_arr ? append_digit(new_el_arr, letter.to_i) : letter.to_i
        if ( arr_text[index + 1] && !(is_number?(arr_text[index + 1])) ) ||
          ( !(arr_text[index + 1]) && new_el_arr ) # this case for end of file, but last element not add to array yet
          arr_numbers << new_el_arr
          new_el_arr = nil
        end
      end
    end
    arr_numbers
  end

  def self.get_n_largest_numbers(arr, quantitfy_max_numbers)
    arr.sort {|a,b| b <=> a}.last(quantitfy_max_numbers.to_i)
  end

  private

  def self.is_number?(letter)
    letter.to_f.to_s == letter.to_s || letter.to_i.to_s == letter.to_s
  end

  def self.append_digit(source_digit, appendible_digit)
    modulo = source_digit % 10
    number = (source_digit / 10) * 100
    number + (modulo * 10) + appendible_digit
  end

end
