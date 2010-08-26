#!/usr/bin/env ruby

=begin

new_post.rb

Script to kickstart a new jekyll post.
This script inspired by new_post.py.

tomohiro.t@gmail.com

Usage: $ ./new_post.rb
say what you have to say
^D

=end

require 'date'

extension = 'md'
today = Date.today

print 'Post Title: '
title = gets.chomp.strip

print 'Speaker Name: '
speaker = gets.chomp.strip

file_name = "#{today}-#{title}.#{extension}"

header = <<HEADER
---
layout: post
title: #{title}
speaker: #{speaker}
---

{{ page.title }}
================================================================================

HEADER

lines = []
puts '========'
begin
  loop do
    lines << readline
  end
rescue
  File.open('_posts/' + file_name, 'w') do |file|
    file.puts header
    file.puts lines
    file.close
  end
end

exit 0
