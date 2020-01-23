gus = Floof.create(name: "Gus", floofiness: 2, image: "https://iheartdogs.com/wp-content/uploads/2015/01/Screenshot-2015-01-17-16.15.29.png")

princess = Floof.create(name: "Princess", floofiness: 5, image: "http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Pomeranian-3.jpg")

meatloaf = Floof.create(name: "Meatloaf", floofiness: 4, image: "http://static.boredpanda.com/blog/wp-content/uploads/2015/12/fluffy-cat-funny-pics-36__605.jpg")

george = Floof.create(name: "George", floofiness: 1, image: "http://cdn1-www.cattime.com/assets/uploads/gallery/sphynx-cats-and-kittens/sphynx-cats-and-kittens-9.jpg")

Post.create(body: "I don't know why humans are always getting out of bed", floof: gus)

Post.create(body: "I think I need a haircut", floof: princess)

Post.create(body: "Does this fur make me look fat?", floof: meatloaf)

Post.create(body: "Is it cold in here or is it just me?", floof: george)

Post.create(body: "Oh no! My coat got wrinkled!", floof: gus)

Post.create(body: "The mailman better watch out", floof: princess)
