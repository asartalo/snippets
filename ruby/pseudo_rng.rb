def ints_with_skips(n, skip = 2)
  arr = []
  i = 0
  currL = 1
  currR = -1
  half = n / 2
  loop do
    i += 1
    currL -= rand(skip) + 1
    currR += rand(skip) + 1
    if (currL == 0 && currR == 0)
      if (rand > 0.5)
        currL -= 1
      else
        currR += 1
      end
    end
    if (rand > 0.5)
      arr << currL
      arr << currR
    else
      arr << currR
      arr << currL
    end

    if arr.length >= n
      break;
    end
  end

  arr.pop if (arr.length > n)
  arr.shuffle
end

def bitonic(n)
  div = rand(n / 4) # wish this was more normal distribution
  all = ints_with_skips(n)
  left = n / 2 + (rand > 0.5 ? -div : div)
  all[0..(left-1)].sort + all[left..].sort.reverse
end

