# User.create!([
#   {name: "Joe Cool", email: "joe@gmail.com", password: "password", password_confirmation: "password"},
#   {name: "Jacky-O", email: "pink@gmail.com", password: "password", password_confirmation: "password"}
# ])
# Supplier.create!([
#   {name: "Bob's Novelty Emporium", email: "big_bob@emporium.co", phone: "312-995-5566"},
#   {name: "Sue's House of Nerdy Toys", email: "s.anderson@gmail.com", phone: "212-999-5556"},
#   {name: "Tony's Truck", email: "blackhat@aol.com", phone: "555-555-5555"}
# ])
# Product.create!([
#   {name: "Sonic Screwdriver", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", price: "8.99", supplier_id: 1},
#   {name: "Lightsaber", description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", price: "270.1", supplier_id: 2},
#   {name: "WNYX Mug", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", price: "1.5", supplier_id: 3},
#   {name: "Space Cowboy Laser Gun", description: "This weapon has no other description than, Shiney!", price: "170.89", supplier_id: 1},
#   {name: "Hitchhiker's Guide to the Galexy", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", price: "42.0", supplier_id: 1},
#   {name: "DnD Dice set", description: "Take down mighty dragons with this timeless set of 20 sided wonders", price: "57.5", supplier_id: 2},
#   {name: "vader helmet", description: "it's a nice hat", price: "666.0", supplier_id: 3}
# ])
# Image.create!([
#   {url: "http://i120.photobucket.com/albums/o176/d_jedi1/Who/qmx-10thdoctorsonic-1.jpg", product_id: 1, name: "Sonic Screwdriver"},
#   {url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", product_id: 2, name: "Lightsaber"},
#   {url: "http://s32.postimg.org/6mceui22t/wnyx_mug.png", product_id: 3, name: "WNYX Mug"},
#   {url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", product_id: 4, name: "Space Cowboy Laser Gun"},
#   {url: "http://www.notcot.com/images/guide.gif", product_id: 5, name: "Hitchhiker's Guide to the Galexy"},
#   {url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", product_id: 6, name: "DnD Dice set"},
#   {url: "http://vignette1.wikia.nocookie.net/starwars/images/8/8e/Lightsaber_anakin_rots.jpg/revision/latest?cb=20060115213707", product_id: 2, name: "basic lightsaber"},
#   {url: "http://genk2.vcmedia.vn/N0WoyYblO3QdmZFKPMtKnadHAHTevz/Image/2012/02/a7_5e548.jpg", product_id: 2, name: "basic lightsaber inside"}
# ])

# 1 - expensive
# 2 - wearable
# 3 - game


CategoryProduct.create!([
                        {category_id: 1, product_id: 2},
                        {category_id: 1, product_id: 3},
                        {category_id: 1, product_id: 4},
                        {category_id: 1, product_id: 5},
                        {category_id: 1, product_id: 7},
                        {category_id: 2, product_id: 1},
                        {category_id: 2, product_id: 2},
                        {category_id: 2, product_id: 5},
                        {category_id: 2, product_id: 6},
                        {category_id: 2, product_id: 4},
                        {category_id: 2, product_id: 7},
                        {category_id: 3, product_id: 5},
                        {category_id: 3, product_id: 6}
                        ])









