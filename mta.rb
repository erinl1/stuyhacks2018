require 'net/http'
require 'json'

url = 'https://spiky-plane.glitch.me/'
uri = URI(url)
response = Net::HTTP.get(uri)
x=JSON.parse(response)



open('mta.csv', 'w') { |f|
 for line in x['subway']

  name=line['name']
  status=line['status']
  if(name=="SIR")
    f.puts name+" ,"+status
  else
    for char in name.split('')

       f.puts char+ " ,"+status
     end
   end
 end

}
