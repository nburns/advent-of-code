#!/usr/bin/env crystal
input = File.read("input.txt").strip.split('\n')

TheBuffer = 14.times.map { |_| "" }.to_a

def start?
    TheBuffer.uniq.size == TheBuffer.size && TheBuffer.all? { |e| e != "" }
end

input.each do |line|
    line.split("").each_with_index(1) do |c, i|
        TheBuffer[i % TheBuffer.size] = c
        if start?
            puts i
            exit
        end
    end
end
