User.destroy_all
u1 = User.create :fullname => 'Dom', :email => 'dom@shop.co', :password => 'chicken', :address => '60 Reservoir Street, Surry Hills NSW 2010, Australia', :admin => 'true', :contact_number => '0402053235'
u2 = User.create :fullname => 'Karen', :email => 'karen@shop.co', :password => 'chicken', :address => '50 Reservoir Street, Surry Hills NSW 2010, Australia', :contact_number => '0411111111'

puts "#{User.count} users created."


Product.destroy_all
# TEMPLATE
# p1 = Product.create(
#     :product_code => "", 
#     :product_name => "", 
#     :product_category => "", 
#     :animal_category => "", 
#     :product_description => "", 
#     :image => "/images/", 
#     :cost_price => , 
#     :retail_price => ,
#     :quantity => 100
# ) -> allows :column_name to be separated into new lines

p1 = Product.create(
    :product_code => "06400", 
    :product_name => "Black Hawk Lamb & Rice Dry Adult Dog Food (20kg)", 
    :product_category => "Dry Food", 
    :animal_category => "Dog", 
    :product_description => "Black Hawk Lamb & Rice uses lamb as a tasty source of protein, essential for strong bones and muscles. The recipe is formulated specifically with ingredients that matter, like Australian grown oats and rice for a boost of energy to the body and brain, blueberries and cranberries as natural antioxidants to contribute to a healthy immunity, as well as natural prebiotics to support digestion. The formula also contains glucosamine and chondroitin to help support active joints, providing complete and balanced nutrition for your pet.", 
    :image => "/images/dog_dry-food.jpg", 
    :cost_price => 100.99, 
    :retail_price => 169.99,
    :quantity => 100
)

p2 = Product.create(
    :product_code => "09285", 
    :product_name => "Black Hawk Grain Free Chicken Wet Dog Food (12x400g)", 
    :product_category => "Wet Food", 
    :animal_category => "Dog", 
    :product_description => "Black Hawk Wet Grain Free Chicken gives them a a deliciously lean and highly digestible chicken-based protein source, packed with amino acids which are essential for building strong muscles. Formulated specifically with chondroitin and glucosamine which help to support active joints, it is also gentle on the stomach and skin. The recipe provides complete and balanced nutrition for your pet.", 
    :image => "/images/dog_wet-food.jpg", 
    :cost_price => 30.99, 
    :retail_price => 69.99,
    :quantity => 100
)

p3 = Product.create(
    :product_code => "10584", 
    :product_name => "SavourLife Chicken Dog Training Treats", 
    :product_category => "Treats", 
    :animal_category => "Dog", 
    :product_description => "They are enriched with essential vitamins and minerals for better health and the addition of vital Omega 3 & 6 is perfect for a shiny, healthy coat. A special drying process is used to capture the natural goodness and their naturally chewy texture is great for promoting healthy teeth and gums. A delicious treat for dogs of all shapes and sizes.", 
    :image => "/images/dog_treats.png", 
    :cost_price => 5.99, 
    :retail_price => 14.99,
    :quantity => 100
)


p4 = Product.create(
    :product_code => "42024", 
    :product_name => "Frontline Flea & Tick Spray (100ml)", 
    :product_category => "Flea, Tick & Worm", 
    :animal_category => "Dog", 
    :product_description => "Frontline spray protects cats and dogs against fleas and ticks, including paralysis ticks. It can be used on puppies and kittens from 2 days of age.\n\nTo protect against adult fleas, apply every 12 weeks for dogs and every 8 weeks for cats.\n\nTo protect against paralysis ticks, apply every 3 weeks for dogs and cats and for protection against brown dog ticks, apply monthly.\n\nControls flea allergy dermatitis when used monthly.\n", 
    :image => "/images/dog_flea-tick-worm.jpg", 
    :cost_price => 10.99, 
    :retail_price => 49.99,
    :quantity => 100
)

p5 = Product.create(    
    :product_code => "09650",
    :product_name => "Yours Droolly Antibacterial Training Pads (84 pack)",
    :product_category => "Litter",
    :animal_category => "Dog",
    :product_description => "Yours Droolly Urine Neutralising Training Pads are ideal for these situations and more: travelling, travel crates and cages, bedding, whelping and every post surgery.\n\nDog urine attracts bacteria once it has settled on the pad, this leads to smells in the home, as well as potential germs. The Urine Neutralising formulation will stop bacteria forming around the urine, controlling the odour and leading to a more hygienic home. Theres nothing worse than opening your home to the smell of urine. Our innovative formulation neutralises urine upon contact - reducing smell instantly. The specially formulated ammonia neutralising pulp instantly neutralises the ammonia in urine as it passes through prior to hitting the super absorbent core layer, eliminating all urine odours.\n\nAntibacterial Technology (Kills 99.9% of Harmful Germs)",
    :image => "/images/dog_litter.jpg",
    :cost_price => 50.99,
    :retail_price => 109.99,
    :quantity => 100
)
    
p6 = Product.create(    
    :product_code => "210301",
    :product_name => "Ruffwear Front Range Dog Harness New Moon (L)",
    :product_category => "Accessories",
    :animal_category => "Dog",
    :product_description => "Padded everyday harness that is easy to put on. Features two leash attachment options: V-ring centered on the back, and reinforced webbing at the chest to redirect dogs that pull on leash.",
    :image => "/images/dog_accessories.jpg",
    :cost_price => 20.99,
    :retail_price => 99.99,
    :quantity => 100
)
    
p7 = Product.create(    
    :product_code => "230313",
    :product_name => "Beco Rough and Tough Penguin Dog Toy",
    :product_category => "Toys",
    :animal_category => "Dog",
    :product_description => "Some dogs believe in tough love. This is for them. A rough & tough toy that can withstand a chew and wrestle during playtime. Made from recycled materials, it reuses what’s already here, giving waste a second life while encouraging its collection and reuse.",
    :image => "/images/dog_toys.jpg",
    :cost_price => 3.99,
    :retail_price => 17.99,
    :quantity => 100
)
    
p8 = Product.create(    
    :product_code => "160035",
    :product_name => "Hill's Science Diet Indoor Adult Dry Cat Food (4kg)",
    :product_category => "Dry Food",
    :animal_category => "Cat",
    :product_description => "Hill's Science Diet Indoor Adult dry cat food is specially formulated to fuel the energy needs of cats with an indoor lifestyle during the prime of their life.\n\nDuring your cat's adult years, you want to feed nutrition that supports everyday health and digestion. Hill's Science Diet Indoor Adult dry cat food is specially formulated to fuel the energy needs of cats with an indoor lifestyle during the prime of their life. Made for grown cats, this pet food made with natural ingredients uses DHA from fish oil to support brain health and eye development. Balanced minerals promote strong teeth and bones, while natural fibres promote healthy digestion for young cats, and easier litter box clean-up for you.",
    :image => "/images/cat_dry-food.jpg",
    :cost_price => 30.99,
    :retail_price => 74.99,
    :quantity => 100
)

p9 = Product.create(   
    :product_code => '170097',
    :product_name => "Hill's Science Diet Optimal Care Ocean Fish Adult Wet Cat Food Pouches (12x85g)",
    :product_category => 'Wet Food',
    :animal_category => 'Cat',
    :product_description => 'Your cat will love the taste of Hill\'s Science Diet Adult Ocean Fish wet cat food tender chunks in gravy. It has the perfect balance of taste and nutrition and is specially formulated to fuel the energy needs of cats during the prime of their life. Serve this gourmet daily nutrition as a balanced meal by itself, or try it on top of Science Diet adult dry cat food.',
    :image => '/images/cat_wet-food.png',
    :cost_price => 14.99,
    :retail_price => 34.99,
    :quantity => 100
)

p10 = Product.create( 
    :product_code => '200633',
    :product_name => 'Greenies Feline Roasted Chicken Dental Treats (60g)',
    :product_category => 'Treats',
    :animal_category => 'Cat',
    :product_description => "Greenies offer your cat treats that are not only tasty but beneficial as well! Great for maintaining your cat's dental health and with a range of flavors to choose from, Greenies are the perfect treat to add to your cat's diet.\n\nOral health issues are the most common health problems diagnosed in adult pets. Feline Greenies Dental Treats offer complete nutrition and help your cat maintain good dental care. They have a unique shape and crunchy texture that's proven to reduce tartar. Plus, with an irresistible taste, they are sure to stir up purrs of joy.",
    :image => '/images/cat_treats.png',
    :cost_price => 5.99,
    :retail_price => 10.99,
    :quantity => 100
)

p11 = Product.create( 
    :product_code => '15008',
  :product_name => 'Advocate Flea & Worming For Large Cats Purple (3 pack)',
  :product_category => 'Flea, Tick & Worm',
  :animal_category => 'Cat',
  :product_description => "Advocate's easy-to-use spot-on provides fast relief from fleas, prevents deadly heartworm, and protects both your cat and your family from most gastrointestinal worms.\n\nAdvocate provides comprehensive parasite protection which is applied monthly. Advocate is the only product that kills the two parasites causing lungworm disease in cats, which causes irreversible damage to the lungs.\n\nAdvocate creates a flea-free home fast. It affects re-infesting fleas within 3 to 5 minutes and kills them within 1 hour. Unlike many other treatments (especially tablets), Advocate kills flea larvae in your cat's surroundings within 20 minutes of contact with the active ingredient (in shed skin and hair debris) - breaking the flea lifecycle. It even provides protection to your cat when it comes into contact with other animals that have fleas. Advocate kills fleas on contact, so cats don't suffer painful bites, reducing the incidence of Flea Allergy Dermatitis.",
  :image => '/images/cat_flea-tick-worm_1.jpg',
  :cost_price => 32.99,
  :retail_price => 64.99,
  :quantity => 100
)

p12 = Product.create( 
    :product_code => '19142',
  :product_name => 'Breeders Choice Cat Litter (30L)',
  :product_category => 'Litter',
  :animal_category => 'Cat',
  :product_description => "Uniquely formulated Breeders Choice cat litter pellets are made from 99% recycled paper with no additives or chemicals.\n\nNatural odour control with no additives or chemicals, this super performance litter is highly absorbent and suitable for all cat breeds and ages.\n\nIt is long lasting with minimal waste, as well as being lightweight and easy to handle and virtually dust-free. Easy to use, clean up, and dispose of, these biodegradable pellets can be composted or recycled.",
  :image => '/images/cat_litter.jpg',
  :cost_price => 14.99,
  :retail_price => 25.99,
  :quantity => 100
)

p13 = Product.create( 
    :product_code => '641510',
  :product_name => 'Rogz Alleycat Safeloc Cat Collar Black',
  :product_category => 'Accessories',
  :animal_category => 'Cat',
  :product_description => "Rogz make some of the most awesome gear around for pets and their owners, always thinking on their feet (and their paws!) to improve the daily life of cats and dogs all around the world.\n\nRogz Alleycat collars are perfect for curious felines. Made from lightweight nylon webbing, each collar features a break-away safety buckle designed to snap open if your cat's collar is caught while climbing or slinking through tight spaces. You can even increase the break-away load and still have your cat break free under a dangerous amount of strain. With reflective edging, these collars also provide maximum visibility for cats that like to explore during the twilight hours. Fits neck size: 200-310mm. Width of webbing: 11mm.",
  :image => '/images/cat_accessories.jpg',
  :cost_price => 4.99,
  :retail_price => 14.99,
  :quantity => 100
)


p14 = Product.create( 
    :product_code => '170023',
  :product_name => 'GIGwi Melody Chaser Bird Cat Toy',
  :product_category => 'Toys',
  :animal_category => 'Cat',
  :product_description => "These unique toys use realistic animal sound effects to capture your cat's attention and encourage them to play.\n\nIntroducing the GIGwi Melody Chaser. These unique toys use realistic animal sound effects to capture your cat's attention and encourage them to play. Playtime is important to keep your cat mentally stimulated and physically active, helping to prevent boredom and weight gain.\n\nWith a motion-activated sound chip that plays bird sounds at the slightest touch and realistic downy feathers, the GIGwi Melody Chaser Active Bird will unleash your cat's inner hunter for hours of fun.",
  :image => '/images/cat_toys.jpg',
  :cost_price => 5.99,
  :retail_price => 19.99,
  :quantity => 100
)


p15 = Product.create( 
    :product_code => '448311',
  :product_name => "Fluker's Buffet Blend Turtle Food 230g",
  :product_category => 'Dry Food',
  :animal_category => 'Reptile',
  :product_description => 'Essentially balanced pellets for your shelled friends with all the vitamins and minerals they need, and with freeze-dried mealworms and shrimp too.',
  :image => '/images/reptile_dry-food.png',
  :cost_price => 10.99,
  :retail_price => 31.99,
  :quantity => 100
)


p16 = Product.create(
    :product_code => '126135',
  :product_name => 'Frozen Aqua One Turtle Food 110g',
  :product_category => 'Wet Food',
  :animal_category => 'Reptile',
  :product_description => 'Conveniently packaged in individual cubes and in a "mess-free" punch-out pack, it makes feeding time quick and easy. Features & Benefits: Healthy and nutritious diet for your turtle. Conveniently packaged in individual cubes.',
  :image => '/images/reptile_wet-food.png',
  :cost_price => 5.99,
  :retail_price => 19.99,
  :quantity => 100
)


p17 = Product.create(
  :product_code => '126136',
  :product_name => 'Exo Terra Crickets Small',
  :product_category => 'Treats',
  :animal_category => 'Reptile',
  :product_description => "Exo Terra Crickets Small makes it super easy for you to feed your reptile tasty insects and crustaceans. Very easy to eat, the cricket's exoskeleton is softened in the cooking process, so they're great for healthy digestion. Collagen is an important fiber that aids in building bone, cartilage, skin, and claw structures. The Exo Terra Crickets Small have the same nutritional value as live insects but are easier to digest. No live insects need to be fed in addition to these canned foods.",
  :image => '/images/reptile_treats.png',
  :cost_price => 5.15,
  :retail_price => 12.49,
  :quantity => 100
)


p18 = Product.create(
  :product_code => '126137',
  :product_name => 'Aristopet ReptiWormer Reptile Wormer 50mL',
  :product_category => 'Flea, Tick & Worm',
  :animal_category => 'Reptile',
  :product_description => "Aristopet Reptile Wormer is specifically formulated to safely control parasites such as Nematodes (Roundworms, Hookworms, Pinworms, and Lungworms), Trematodes (Flukes), and Cestodes (Tapeworms) in reptiles. Aristopet Reptile Wormer can be added in the correct dosage to the reptile's food, either live or processed. In snakes, it can also be given by use of an administration tube down the snake's throat. Use at the rate of 0.4mL (8 drops) per kg of body weight. After the initial dose, the treatment can be safely repeated in 2 weeks.",
  :image => '/images/reptile_flea-tick-worm.jpg',
  :cost_price => 8.95,
  :retail_price => 13.95,
  :quantity => 100
)


p19 = Product.create(
  :product_code => '126138',
  :product_name => 'Comfey Pet Reptile Litter 15L',
  :product_category => 'Litter',
  :animal_category => 'Reptile',
  :product_description => "Comfey Pet Reptile Litter is a premium wood-based litter, ideal for the bottom of all reptile cages. It is all-natural untreated pine, made from a renewable source. The pine fresh smell will stop the nasty odors. With Comfey Pet Reptile Litter, there is no dust. It is hygienic, highly absorbent, environmentally friendly, and WILL NOT STAIN! Comfey Pet is an all-natural Australian-made product. It is sourced from plantation pine here in Australia to provide the pet community with a quality product.",
  :image => '/images/reptile_litter.png',
  :cost_price => 10.95,
  :retail_price => 34.95,
  :quantity => 100
)


p20 = Product.create(
  :product_code => '15561',
  :product_name => 'Exo Terra Jungle Vine Large',
  :product_category => 'Accessories',
  :animal_category => 'Reptile',
  :product_description => 'Exo Terra Jungle Vines can be used for decorative purposes or for enlargement of the dwelling area. These waterproof vines are bendable, twistable life-like vines with a natural feel and look and can be twisted together with vines of different sizes to create a 3-D habitat. Perfect for arboreal reptiles and amphibians.',
  :image => '/images/reptile_accessories.jpg',
  :cost_price => 10.95,
  :retail_price => 30.95,
  :quantity => 100
)


p21 = Product.create(
  :product_code => '150624',
  :product_name => 'Avi One Tri-angle Rope Bird Swing',
  :product_category => 'Toys',
  :animal_category => 'Bird',
  :product_description => 'Enriching environments for feathered friends!',
  :image => '/images/bird_toys.png',
  :cost_price => 10.99,
  :retail_price => 18.99,
  :quantity => 100
)


p22 = Product.create(
  :product_code => '167465',
  :product_name => 'Topflite Dried Mealworms 125g',
  :product_category => 'Dry Food',
  :animal_category => 'Bird',
  :product_description => 'Dried Mealworms make a wonderful treat for your chickens, aviary birds, wild birds, reptiles, and even your fish!',
  :image => '/images/bird_dry-food_1.jpg',
  :cost_price => 11.99,
  :retail_price => 21.99,
  :quantity => 100
)


p23 = Product.create(
  :product_code => '168466',
  :product_name => 'Passwell Hand Rearing Wet Bird Food Formula 1kg',
  :product_category => 'Wet Food',
  :animal_category => 'Bird',
  :product_description => "Wombaroo Hand Rearing Food is a nutrient-enhanced, hand-rearing formula for all parrots, pigeons, doves, and finches. It makes up as a smooth, creamy consistency and is ideal for crop-feeding. This high-quality Australian-made product is more economical than expensive imported brands.",
  :image => '/images/bird_wet-food.jpg',
  :cost_price => 12.5,
  :retail_price => 35.99,
  :quantity => 100
)


p24 = Product.create(
  :product_code => '123707',
  :product_name => 'Topflite Budgie Seed Bell Twin Treat Pack',
  :product_category => 'Treats',
  :animal_category => 'Bird',
  :product_description => 'Topflite Budgie Seed Bell Twin Treat Pack.',
  :image => '/images/bird_treats.png',
  :cost_price => 2.49,
  :retail_price => 9.49,
  :quantity => 100
)


p25 = Product.create(
  :product_code => '123708',
  :product_name => 'Avitrol Plus Bird Wormer Tablets',
  :product_category => 'Flea, Tick & Worm',
  :animal_category => 'Bird',
  :product_description => "A convenient and broad-spectrum bird wormer which controls thread, caecal, round, gape, gizzard, and important tape worms in caged birds. Avitrol tablets provide a secure method of dosing individual birds. Available in 100 tablet bottles.\n\n250 to 500g bodyweight: ½ tablet.\n\n500 to 750g bodyweight: 1 tablet.\n\n750g to 1Kg bodyweight: 1½ tablets.\n\nDo not feed birds for 24 hours before or three hours after treatment. All birds in the same loft or cage should be treated, and the loft or cage cleaned and disinfected three days after treatment.",
  :image => '/images/bird_flea-tick-worm.png',
  :cost_price => 10.5,
  :retail_price => 17.5,
  :quantity => 100
)


p26 = Product.create(
  :product_code => '123709',
  :product_name => "Pet's Dream Universal Litter 7L 4kg",
  :product_category => 'Litter',
  :animal_category => 'Bird',
  :product_description => "Pet's Dream Universal Litter is a super absorbent, natural litter made for all pets. It is ecological, made with 100% pure plant fibre, compostable and 100% biologically degradable. Pets Dream Litter naturally contains a pleasant smell and neutralizes odours without the use of artificial chemicals. It is effective at sustaining moisture retention, so you can use the litter in damp areas e.g. next to water bowls to soak up spilled liquid. It is the perfect solution for households with multiple pets.",
  :image => '/images/bird_litter.jpg',
  :cost_price => 15.95,
  :retail_price => 27.95,
  :quantity => 100
)


p27 = Product.create(
  :product_code => '123710',
  :product_name => 'Green Parrot Bird Carrier Cage',
  :product_category => 'Accessories',
  :animal_category => 'Bird',
  :product_description => "Green Parrot Bird Carrier Cage CC4835 is a bird carrier designed for transporting birds and parrots. It features a perch mounted on the top which also doubles as a carry handle.\n\nSize: 48cm Width x 35cm Depth x 61cm Height (Height of cage not including the handle 46cm)",
  :image => '/images/bird_accessories.jpg',
  :cost_price => 99.95,
  :retail_price => 179.95,
  :quantity => 100
)


p28 = Product.create(
  :product_code => '12499',
  :product_name => 'Pet One - Tunnel Rabbit Burrow Green',
  :product_category => 'Toys',
  :animal_category => 'Small Pet',
  :product_description => 'Your small animal will have plenty of fun and exercise with a Pet One Small Animal Tunnel.',
  :image => '/images/small-pet_toys.png',
  :cost_price => 10.99,
  :retail_price => 17.99,
  :quantity => 100
)


p29 = Product.create(
  :product_code => '124844',
  :product_name => 'Burgess Excel Rabbit Nuggets 10kg',
  :product_category => 'Dry Food',
  :animal_category => 'Small Pet',
  :product_description => "Burgess Excel is the UK's number one vet recommended food for Fibrevores (Rabbits, Guinea Pigs and Chinchillas are considered as Fibrevores). This is a specially developed, nutrient-dense food specifically designed to meet small pets' nutritional requirements - it's basically a Super-Premium food for small pets!",
  :image => '/images/small-pet_dry-food_1.png',
  :cost_price => 85.99,
  :retail_price => 139.99,
  :quantity => 100
)


p30 = Product.create(
  :product_code => '309777',
  :product_name => 'Breeders Delight Frozen Quail (10 pack)',
  :product_category => 'Wet Food',
  :animal_category => 'Small Pet',
  :product_description => 'Breeders Delight Frozen Quails are bred specifically as a natural food source for various animals such as reptiles, canines, cats, ferrets, and birds of prey.',
  :image => '/images/small-pet_wet-food.png',
  :cost_price => 10.5,
  :retail_price => 23.5,
  :quantity => 100
)


p31 = Product.create(
  :product_code => '166046',
  :product_name => 'Nibblots Berry Treats For Small Pets 30g',
  :product_category => 'Treats',
  :animal_category => 'Small Pet',
  :product_description => 'Each Nibblot is comprised of a delicious crispy cereal shell containing a cream-filled fruity center with Omega 3. Suitable for all small animals.',
  :image => '/images/small-pet_treats.png',
  :cost_price => 2.49,
  :retail_price => 8.46,
  :quantity => 100
)


p32 = Product.create(
  :product_code => '159254',
  :product_name => 'Smite Organic Powder For Small Animal Housing 350g',
  :product_category => 'Flea, Tick & Worm',
  :animal_category => 'Small Pet',
  :product_description => 'Smite organic powder is safe, odourless & natural with no chemicals or pesticides. It is harmless to children & your small animal, but kills mites, lice, crawling & flying insects.',
  :image => '/images/small-pet_flea-tick-worm.png',
  :cost_price => 14.95,
  :retail_price => 29.95,
  :quantity => 100
)


p33 = Product.create(
  :product_code => '931508',
  :product_name => 'Back-2-Nature Litter (10L)',
  :product_category => 'Litter',
  :animal_category => 'Small Pet',
  :product_description => "Keeping your little pet comfy and cosy in their home, Back-2-Nature Small Animal Bedding and Litter is made from 99% recycled paper.\n\nFeaturing flatter, ridged pellets for greater absorbency, this bedding and litter allows for dryer feet, less irritation, and a safer walking surface for your pet. Small Animal Bedding and Litter is sterile at the point of manufacture, and is low in dust to minimise irritation that can arise from hay or pine shavings. After use, this bedding is compostable to help minimise that environmental pawprint.",
  :image => '/images/small-pet_litter.jpg',
  :cost_price => 10.95,
  :retail_price => 18.95,
  :quantity => 100
)


p34 = Product.create(
  :product_code => '931509',
  :product_name => 'Living World Mouse Igloo Small',
  :product_category => 'Accessories',
  :animal_category => 'Small Pet',
  :product_description => 'Plastic dome hide house for mice.',
  :image => '/images/small-pet_accessories.png',
  :cost_price => 0.95,
  :retail_price => 5.95,
  :quantity => 100
)


puts "#{Product.count} products created."

o1 = Order.create(
  product: p1,
  user: u1,
  quantity: 2,
  orderstatus: 'Pending'
)

o2 = Order.create(
  product: p1,
  user: u1,
  quantity: 1,
  orderstatus: 'Shipped'
)

o3 = Order.create(
  product: p1,
  user: u1,
  quantity: 3,
  orderstatus: 'Delivered'
)

puts "#{Order.count} orders created."

