#!/usr/bin/env crystal
input = File.read("input.txt").split("\n\n")

raw_box_text, raw_instructions_text = input

*raw_boxes, _column_nums = raw_box_text.split("\n")


boxes = Hash(Int32, Array(String)).new { |h, k| h[k] = [] of String }

raw_boxes.each do |row|
    row.split("").each_slice(4).each_with_index(1) do |(_l, label, _r), i|
        next if label == " "
        boxes[i].unshift(label)
    end
end


raw_instructions_text.strip.split("\n").map(&.split(" ")).each do |(_move, count, _from, from, _to, to)|
    count.to_i.times do
        boxes[to.to_i].push(boxes[from.to_i].pop)
    end
end

boxes.to_a.sort_by { |(k, _v)| k }.each do |_column, boxes|
    print boxes.last
end



