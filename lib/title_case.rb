class String
  define_method(:title_case) do
    split_array = self.split()
    nocaps = ['but', 'if', 'is', 'a', 'the', 'of', 'and', 'or']
    title = []
    split_array.each do |split|
      if split_array[0] == split
        split.capitalize!()
        title.push(split)
      elsif nocaps.include?(split)
        title.push(split)
      else
        split.capitalize!()
        title.push(split)
      end
    end
    split_array.join(" ")
  end
end
