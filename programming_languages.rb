def reformat_languages(languages)
  # your code here
  output = {}
  
  languages.each do |key, value|
    value.each do |k, v|
      if output[k].key?(:style)
        output[k][:style] << [key]
      else
        output[k] = {
          :type => v[:type],
          :style => [key]
        }
      end
    end
  end
  puts output
  output
end
