=begin

arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]




i = 0

arr.each do |num|
    print num
    i+=1
    if i == 4
        puts
        i = 0
    else
        print ", "
    end
end




arr.each_slice(4) do |group|
  puts group.join(", ")
end

=end

word = "Freddy"

File.open("./Day2a.txt") do |file|  ##THE JANKY LANGUAGE MATE
    file.each_line do |line|
        if line.include?(word)
            puts "holy shit five freddy nights at freddy's real?? ??    ?"
        end
    end
end
