flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }



# barney = flintstones.select { |k, v| puts k, v if k == "Barney" && v == 2}

barney = flintstones.assoc("Barney")

p barney 