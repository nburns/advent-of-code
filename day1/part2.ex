#!/usr/bin/env elixir

{:ok, content} = File.read("input.txt ")

elves = String.split(content, "\n\n")
