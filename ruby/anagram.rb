def anagram(s1,s2)
  # Strip whitespace
  s1 = s1.gsub(/\s+/, '').downcase
  s2 = s2.gsub(/\s+/, '').downcase

  s1_sorted = s1.chars.sort.join
  s2_sorted = s2.chars.sort.join

  puts s1_sorted
  puts s2_sorted

  if (s1_sorted == s2_sorted)
    puts true
  else
    puts false
  end
end

def anagram2(s1,s2)
  s1 = s1.gsub(/\s+/, '').downcase
  s2 = s2.gsub(/\s+/, '').downcase

  s1_sorted = s1.chars.sort.join
  s2_sorted = s2.chars.sort.join

  h1 = {}
  h2 = {}

  s1_sorted.chars.each do |letter|
    if(h1[letter])
      h1[letter] += 1
    else
      h1[letter] = 1
    end
  end

  s2_sorted.chars.each do |letter|
    if(h2[letter])
      h2[letter] += 1
    else
      h2[letter] = 1
    end
  end

  if (s1_sorted == s2_sorted)
    puts true
  else
    puts false
  end

end


anagram2('aabbcc','aabbc')
