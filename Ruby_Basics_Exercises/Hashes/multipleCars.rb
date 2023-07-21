#Multiple Cars
#Create a nested hash using the following data.

big_hash = {
    car: { type: 'sedan', color: 'blue', year: 2003},
    truck: { type: 'pickup', color: 'red', year: 1998}
}
p big_hash
p big_hash[:car][:type]