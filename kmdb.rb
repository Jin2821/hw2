# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model.
# TODO!



# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

warner = Studio.new
warner ["name"] = "Warner Bros."
warner.save


batmanbegins = Movie.new
batmanbegins ["title"]="Batman Begins"
batmanbegins["year_released"]=2005
batmanbegins["rated"]="PG-13"
batmanbegins["studio_id"]= warner.id
batmanbegins.save

darkknight = Movie.new
darkknight ["title"]="The Dark Knight"
darkknight["year_released"]=2008
darkknight["rated"]="PG-13"
darkknight["studio_id"]= warner.id
darkknight.save

dkrises = Movie.new
dkrises ["title"]="The Dark Knight Rises"
dkrises["year_released"]=20012
dkrises["rated"]="PG-13"
dkrises["studio_id"]= warner.id
dkrises.save


# -- Batman Begins

bale = Actor.new
bale ["name"]="Christian Bale"
bale.save

caine = Actor.new
caine ["name"]="Michael Caine"
caine.save

neeson = Actor.new
neeson ["name"]="Liam Neeson"
neeson.save

holmes = Actor.new
holmes ["name"]="Katie Holmes"
holmes.save

oldman = Actor.new
oldman ["name"]="Gary Oldman"
oldman.save

wayne = Role.new
wayne ["movie_id"]= batmanbegins.id
wayne ["actor_id"]= bale.id
wayne ["character_name"]="Bruce Wayne"
wayne.save

alfred = Role.new
alfred ["movie_id"]= batmanbegins.id
alfred ["actor_id"]= caine.id
alfred ["character_name"]="Alfred"
alfred.save

ghul = Role.new
ghul ["movie_id"]= batmanbegins.id
ghul ["actor_id"]= neeson.id
ghul ["character_name"]="Ra's Al Ghul"
ghul.save

dawes = Role.new
dawes ["movie_id"]= batmanbegins.id
dawes ["actor_id"]= holmes.id
dawes ["character_name"]="Rachel Dawes"
dawes.save

gordon = Role.new
gordon ["movie_id"]= batmanbegins.id
gordon ["actor_id"]= oldman.id
gordon ["character_name"]="Commissioner Gordon"
gordon.save

# -- The Dark Knight
ledger = Actor.new
ledger ["name"]="Heath Ledger"
ledger.save

eckhart = Actor.new
eckhart ["name"]="Aaron Eckhart"
eckhart.save

gyllenhaal = Actor.new
gyllenhaal ["name"]="Maggie Gyllenhaal"
gyllenhaal.save

wayne2 = Role.new
wayne2 ["movie_id"]= darkknight.id
wayne2 ["actor_id"]= bale.id
wayne2 ["character_name"]="Bruce Wayne"
wayne2.save

joker = Role.new
joker ["movie_id"]= darkknight.id
joker ["actor_id"]= ledger.id
joker ["character_name"]="Jocker"
joker.save

dent = Role.new
dent ["movie_id"]= darkknight.id
dent ["actor_id"]= eckhart.id
dent ["character_name"]="Harvey Dent"
dent.save

alfred2 = Role.new
alfred2 ["movie_id"]= darkknight.id
alfred2 ["actor_id"]= caine.id
alfred2 ["character_name"]="Alfred"
alfred2.save

dawes2 = Role.new
dawes2 ["movie_id"]= darkknight.id
dawes2 ["actor_id"]= holmes.id
dawes2 ["character_name"]="Rachel Dawes"
dawes2.save

# -- The Dark Knight Rises
hardy = Actor.new
hardy ["name"]="Tom Hardy"
hardy.save

levitt = Actor.new
levitt ["name"]="Joseph Gordon-Levitt"
levitt.save

hathaway = Actor.new
hathaway ["name"]="Anne Hathaway"
hathaway.save

wayne3 = Role.new
wayne3 ["movie_id"]= dkrises.id
wayne3 ["actor_id"]= bale.id
wayne3 ["character_name"]="Bruce Wayne"
wayne3.save

gordon2 = Role.new
gordon2 ["movie_id"]= dkrises.id
gordon2 ["actor_id"]= oldman.id
gordon2 ["character_name"]="Commissioner Gordon"
gordon2.save

bane = Role.new
bane ["movie_id"]= dkrises.id
bane ["actor_id"]= hardy.id
bane ["character_name"]="Bane"
bane.save

blake = Role.new
blake ["movie_id"]= dkrises.id
blake ["actor_id"]= levitt.id
blake ["character_name"]="John Blake"
blake.save

kyle = Role.new
kyle ["movie_id"]= dkrises.id
kyle ["actor_id"]= hathaway.id
kyle ["character_name"]="Selina Kyle"
kyle.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

movies = Movie.where ({"studio_id" => warner["id"]})


for movie in movies
    puts "#{movie["title"]} #{movie["year_released"]} #{movie["rated"]} #{warner["name"]} "
end


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

roles = Role.all

for role in roles
    movie = Movie.find_by({"id" => role["movie_id"]})
    movie_title = movie ["title"]
    actor = Actor.find_by({"id" => role["actor_id"]})
    actor_name = actor["name"]
    puts "#{movie_title} #{actor_name} #{role["character_name"]}"
end

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

