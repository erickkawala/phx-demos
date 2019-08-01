

# cities
# |> Enum.each(fn (x) ->
    #   IO.puts("#{x}")
    # end)
    
    # cities_1 = Enum.at(cities, 1)
    # IO.puts cities_1
    
    # IO.puts length(cities)
    #            204 - 1 = 203 last index
    
defmodule Loop do
    @cities ['Whyalla','Rockingham','Prospect','Port Hedland','Perth','Murray Bridge','Mount Isa','Morphett Vale','Mandurah','Kwinana','Kalgoorlie','Gosnells','Geraldton','Gawler','Fremantle','Darwin','Busselton','Bunbury','Armadale','Alice Springs','Albany','Adelaide','Woodridge','Wodonga','Werribee','Warrnambool','Wantirna South','Wangaratta','Wagga Wagga','Traralgon','Townsville','Toowoomba','Thornbury','Thomastown','Tarneit','Taree','Tamworth','Sydney','Surfers Paradise','Sunnybank','Sunbury','Port Stephens','Springvale','Southport','South Grafton','Shepparton','Seaford','Saint Kilda','Saint Albans','Rowville','Rockhampton','Richmond','Reservoir','Queanbeyan','Quakers Hill','Preston','Port Macquarie','Point Cook','Pakenham South','Orange','Nowra','Northcote','Noble Park','Newcastle','Nerang','Narre Warren','Narangba','Mulgrave','Mount Martha','Mount Gambier','Mount Eliza','Mosman','Mornington','Morayfield','Moe','Mill Park','Mildura','Melton','Melbourne','Maryborough','Marrickville','Maroubra','Maitland','Mackay','Liverpool','Lismore','Lilydale','Launceston','Lara','Langwarrin','Lalor','Keysborough','Kew','Katoomba','Hornsby','Hobart','Hawthorn South','Hampton Park','Griffith','Greensborough','Granville','Goulburn','Gold Coast','Glenroy','Glenferrie','Gladstone','Geelong','Frankston East','Frankston','Forster','Essendon','Epping','Epping','Engadine','Eltham','Echuca','Earlwood','Dubbo','Doncaster East','Doncaster','Devonport','Deer Park','Deception Bay','Dandenong','Cronulla','Cranbourne','Cranbourne','Craigieburn','Coffs Harbour','Coburg','Clayton','Wollongong','Cessnock','Castle Hill','Carrum Downs','Carnegie','Carlingford','Caringbah','Canberra','Camberwell','Caloundra','Cairns','Caboolture','Burnie','Bundaberg','Buderim','Brunswick','Broken Hill','Brisbane','Boronia','Blacktown','Berwick','Bendigo','Baulkham Hills','Bathurst','Banora Point','Bankstown','Ballarat','Auburn','Ashfield','Armidale','Albury','South Brisbane','Cheltenham','Randwick','Dee Why','Umina','Palmerston','Bracken Ridge','North Ryde','Hoppers Crossing','Logan City','Carindale','Paramatta','Ferntree Gully','City of Parramatta','Adelaide Hills','Canning Vale','Glenmore Park','Glen Iris','Balwyn North','Carnegie','Malvern East','Brighton East','Booval','St Albans','Endeavour Hills','Clayton','Taylors Lakes','Roxburgh Park','Wyndham Vale','Willetton','Thornbury','Thornlie','Hillside','Bundoora','Forest Lake','Sunnybank Hills','Narre Warren South','Dandenong North','Frankston South','Sunshine West','Altona Meadows','West Pennant']
    def insert_city(n,n_global,n_stop) do
        city = Enum.at(@cities, n)
        IO.puts city
        if n_global == n_stop do
            exit(:shutdown)
        end
        if n == 203 do
            insert_city(0,n_global+1,n_stop)
        end
        insert_city(n+1,n_global+1,n_stop)
    end
end
Loop.insert_city(0,0,10)

# cities
# |> Enum.each(0..99, fn(x) ->
#   IO.puts "#{x}"
# end)


# Edit: here's the requested example with Enum.at, but I would not use it in this case

# parts = String.split line, " "
# from = Enum.at(parts, 0)
# to = Enum.at(parts, 1)