#!/usr/bin/env crystal

input = File.read("input.txt").strip.split("\n")
    .map do |l|
        puts l
        a1, a2, b1, b2 = l.split(",").map(&.split("-")).flatten.map(&.to_i)

        [(a1..a2).to_set, (b1..b2).to_set]
    end

puts input.select { |(a, b)| a.superset_of?(b) || b.superset_of?(a) }.size
puts input.select { |(a, b)| !(a & b).empty? }.size
