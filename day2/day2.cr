#!/usr/bin/env crystal
# rock: A, X
# paper: B, Y
# scissors: C, Z

points_part_1 = {
    "A X": 3 + 1,
    "B Y": 3 + 2,
    "C Z": 3 + 3,

    "A Y": 6 + 2,
    "B Z": 6 + 3,
    "C X": 6 + 1,

    "A Z": 0 + 3,
    "B X": 0 + 1,
    "C Y": 0 + 2,
}

# x: lose
# y: draw
# z: win
points_part_2 = {
    "A X": 0 + 3,
    "B Y": 3 + 2,
    "C Z": 6 + 1,

    "A Y": 3 + 1,
    "B Z": 6 + 3,
    "C X": 0 + 2,

    "A Z": 6 + 2,
    "B X": 0 + 1,
    "C Y": 3 + 3,
}


puts File.read("input.txt")
    .split("\n")
    .map { |line| points_part_1[line] }
    .sum

puts File.read("input.txt")
    .split("\n")
    .map { |line| points_part_2[line] }
    .sum




