#!/usr/bin/env crystal

struct Elf
    property idx, calories

    def initialize(@idx : Int32, @calories : Int32)
    end

end


lines = File.read("input.txt")


elves = lines.split("\n\n").each_with_index.map do |elf_data, idx|
    calories = elf_data.split("\n")
        .select { |c| c.size > 0 }
        .map(&.to_i)
        .sum

    Elf.new(idx, calories)
end.to_a.sort { |a, b| a.calories <=> b.calories }

puts elves[-1]



