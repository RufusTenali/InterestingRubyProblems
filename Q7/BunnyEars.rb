def bunny_ear(b)
      return 0 if b == 0
      return 2 + bunny_ear(b-1)
end
p bunny_ear(8)