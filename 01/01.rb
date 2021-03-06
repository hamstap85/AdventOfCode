
GRAPHICS = false

def main
  input = File.read("input.txt").chomp
  input = input.split("\n") if input.include?("\n")
  data = process_input(input)
  part1 = evalp1(data, GRAPHICS)
  puts("Part 1:", part1[0])
  puts("Part 2:", evalp2(data, part1[1], GRAPHICS))
end

def process_input(input)
  input
end

def evalp1(data, graphics)
  floorup = '('
  floordown = ')'
  return [data.count(floorup) - data.count(floordown), {floorup => 1, floordown => -1}]
end

def evalp2(data, part1, graphics)
  step = part1
  floor = 0
  i = 0
  until floor < 0 do
    floor += step[data[i]]
    i += 1
  end
  return i
end

main
