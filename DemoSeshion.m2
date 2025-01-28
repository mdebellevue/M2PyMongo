load "~/Documents/DockerMongo/PyMongoInterface.m2"
needsPackage "Depth"
-- Uses default settings to form the connection
QuadIdeals = mongoCollection("Ideals","QuadraticExamplesByRoos")
-- We load a file that has a list of ideals
load "~/Downloads/RoosExample_Sorted.m2"

-- Let's compute some data about them
myStatsKoszul = I -> hashTable({
    -- Data for each ideal
    "mingens" => toString flatten entries mingens I,
    "numgens" => numgens I,
    "isCI" => isRegularSequence flatten entries gens I,
    "regularity" => regularity I,
    "koszul" => true
    })
    
L = apply(koszulIdeals, J -> myStatsKoszul J)
insert(L,QuadIdeals)
query = hashTable({
	"regularity"=>hashTable{"$gt"=>2,"$lt"=>4},
	"isCI"=>true
	})

findOne(query,QuadIdeals)
query = hashTable({
	"$or" => {
	    hashTable{"numgens" => 2},
	    hashTable{"regularity" => 3}
	    },
	"isCI" => false
	})

-- This is an iterator object!  Should it be a list instead?
cursor = find(query,QuadIdeals)
iterator(cursor)
for obj in iterator(cursor) list obj 

-- Now let's use the polydb database to see what a more complicated connection looks like

polydb = mongoClient("mongodb://db.polymake.org", port => 27017, username =>"polymake", password => "database", directConnection => true, tls => true)
SmoothReflexive =  mongoCollection(polydb, "polydb", "Polytopes.Lattice.SmoothReflexive")
-- Polytope with fewer than 10 vertices, greater than 7 vertices, and dimension 7
poly10 = findOne(hashTable{"N_VERTICES" => hashTable{ "$lt" => 10, "$gt" => 7}, "DIM" => hashTable{ "$gt" => 7}},SmoothReflexive)
-- here we ask for a polytope which has either 5 or 7 facets, and whose dim is 3
poly57 = findOne(hashTable{"$or" => {hashTable{"N_FACETS" => 5},hashTable{"N_FACETS" => 7}}, "DIM" => 3},SmoothReflexive)
