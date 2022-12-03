#!/usr/bin/env crystal

PRIORITIES = ("a".."z").to_a.concat("A".."Z")

def priority(letter)
    PRIORITIES.index!(letter) + 1
end

# part 1
total = File.read("input.txt").split("\n").map do |line|
    letters = line.split("")
    middle = (letters.size/2).to_i
    left = letters[0, middle].to_set
    right = letters[middle, letters.size - 1].to_set

    (left & right).map { |l| priority(l) }.sum
end.sum
puts total

# part 2
puts File.read("input.txt")
    .strip
    .split("\n")
    .map { |line| line.split("").to_set }
    .each_slice(3)
    .map { |(a, b, c)| (a & b & c).map { |l| priority(l) }.sum }
    .sum
