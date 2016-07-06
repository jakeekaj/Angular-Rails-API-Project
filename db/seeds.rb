Movie.create!([
  {title: "Finding Dory", plot: "The friendly-but-forgetful blue tang fish begins a search for her long-lost parents, and everyone learns a few things about the real meaning of family along the way."},
  {title: "The Legend of Tarzan", plot: "Tarzan, having acclimated to life in London, is called back to his former home in the jungle to investigate the activities at a mining encampment."},
  {title: "The Purge: Election Year", plot: "Years after sparing the man who killed his son, former police sergeant Barnes has become head of security for Senator Charlie Roan, a Presidential candidate targeted for death on Purge night due to her vow to eliminate the Purge."},
  {title: "Independence Day: Resurgence", plot: "Two decades after the first Independence Day invasion, Earth is faced with a new extra-Solar threat. But will mankind's new space defenses be enough?"},
  {title: "Central Intelligence", plot: "After he reconnects with an awkward pal from high school through Facebook, a mild-mannered accountant is lured into the world of international espionage."},
  {title: "The Shallows", plot: "A mere 200 yards from shore, surfer Nancy is attacked by a great white shark, with her short journey to safety becoming the ultimate contest of wills."},
  {title: "The Conjuring 2", plot: "Lorraine and Ed Warren travel to north London to help a single mother raising four children alone in a house plagued by a malicious spirit."},
  {title: "Now You See Me 2", plot: "The Four Horsemen resurface and are forcibly recruited by a tech genius to pull off their most impossible heist yet."}
])
Review.create!([
  {body: "Finding Dory was significantly less impressive. The good: The move was very cute and the characters were fun. Ed O'Neill as a cranky octopus was especially nice.", movie_id: 1},
  {body: "If you love Dory, yes you will like the movie. But if Dory all the time is a bit much for you, you will get bored by this fast.", movie_id: 1},
  {body: "Okay - Blackfish apparently caused a rewrite of the movies ending, presumably the species of the character Destiny. Okay...", movie_id: 1},
  {body: "There's a moment in David Yates' excellent and emotionally resonant Legend of Tarzan when George Washington Williams', played by Samuel L. Jackson, goads civilized Tarzan, played by Alexander Skarsgard, just a little too much.", movie_id: 2},
  {body: "It was actually boring. There was a story here that had potential but it was let down by terrible acting, bad dialog, no story or character development at all and, ultimately, no soul to this one.", movie_id: 4},
  {body: "It has two good CGI scenes, which you can watch at home some months from now. The rest is garbage. The movie was cut in pieces that do not make any sense.", movie_id: 4},
  {body: "I recently re-watched the first film and was surprised at how robust its shelf life is. Again, it is undeniably cheesy and jingoistic, but done suitably well, I can have a ball with any material.", movie_id: 4},
  {body: "No wonder Will Smith didn't return; he must've read the script. IF there ever was one.", movie_id: 4},
  {body: "Forget about the formulaic spies plot and its flaws, the film does not look silly for the wise decision of making it into a comedy and it sparks thanks to the strong rapport between Johnson and Hart.", movie_id: 5},
  {body: "It first I didn't know what to expect from this movie, as it has become so hard to take shark movies seriously, however The Shallows not only surprised me, it is the best shark movie since Jaws and honestly the best creature feature in ages!", movie_id: 6},
  {body: "The Shallows knows exactly what it is, and that's the best praise I can give it. It's barely 90 minutes long, has a small cast, and only one location.", movie_id: 6},
  {body: "I have a couple of issues with this film (occasionally too much CGI, and a weird ending) but for the majority of its brief, 86-minutes-long run, this is a riveting film, exquisitely filmed in the Gold Coast of Australia, about a survivor of a shark attack clinging to life, figuratively and literally, on the side of a rock 200 feet from shore, with the shark still circling the waters.", movie_id: 6},
  {body: "The Conjuring 2 doesn't waste time in bringing the scares in. By that, I mean you're pretty much in the thick of it within three minutes or so, being given some background (via another very notorious haunting incident) for what is to follow.", movie_id: 7},
  {body: "First, the all-important question: Is The Conjuring 2 scary? Like, jump out of your seat, watch through your outstretched fingers scary? The answer to that is \"yes.\"", movie_id: 7}
])
