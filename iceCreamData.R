#creating vectors and dataframes for all the data 

#creating vectors for Blue Bell Vanilla 
#Flavor for Blue Bell Vanilla 
bb_van_flavor <- c(4, 2, 4, 2, 4, 4, 2, 5, 2)
#Texture for Blue Bell vanilla 
bb_van_texture <- c(4, 3, 3, 2, 5, 3, 4, 5, 2)
#Consistency for Blue Bell Vanilla 
bb_van_consistency <- c(4, 3, 3, 3, 3, 2, 5, 5, 3)
#Color for Blue Bell Vanilla 
bb_van_color <- c(5, 4, 4, 3, 2, 3, 4, 5, 4)

#make the dataframe for Blue Bell Vanilla 
bluebellVanilla <- data.frame(bb_van_flavor, bb_van_texture, bb_van_consistency, bb_van_color)

#creating vectors for Turkey Hill Vanilla 
#Flavor for Turkey Hill Vanilla 
th_van_flavor <- c(5, 2, 1, 2, 2, 3, 5, 3, 4)
#Texture for Turkey Hill Vanilla 
th_van_texture <- c(4, 2, 1, 2, 2, 2, 4, 2, 3)
#Consistency for Turkey Hill Vanilla 
th_van_consistency <- c(4, 3, 1, 2, 2, 2, 3, 5, 2)
#Color for Turkey Hill Vanilla 
th_van_color <- c(3, 4, 2, 3, 4, 3, 4, 4, 4)

#make the dataframe for Turkey Hill Vanilla 
turkeyhillVanilla <- data.frame(th_van_flavor, th_van_texture, th_van_consistency, th_van_color)

#creating vectors for Haagen Daz Vanilla 
#Flavor for Haagen Daz Vanilla 
hd_van_flavor <- c(2, 4, 3, 3, 3, 2, 5, 4, 5)
#Texture for Haagen Daz Vanilla 
hd_van_texture <- c(3, 4, 3, 4, 4, 3, 5, 3, 5)
#Consistency for Haagen Daz Vanilla 
hd_van_consistency <- c(3, 5, 2, 4, 4, 3, 5, 5, 5)
#Color for Haagen Daz Vanilla 
hd_van_color <- c(3, 4, 2, 4, 5, 2, 5, 5, 5)

#make the data frame for Haagen Daz Vanilla 
haagendazVanilla <- data.frame(hd_van_flavor, hd_van_texture, hd_van_consistency, hd_van_color)

#creating vectors for Kroger Vanilla 
#Flavor for Kroger Vanilla 
k_van_flavor <- c(1, 3, 2, 5, 2, 5, 4, 5, 3)
#Texture for Kroger Vanilla 
k_van_texture <- c(3, 4, 2, 5, 2, 4, 5, 5, 2)
#Consistency for Kroger Vanilla 
k_van_consistency <- c(3, 4, 3, 5, 2, 4, 5, 5, 2)
#Color for Kroger Vanilla 
k_van_color <- c(1, 4, 3, 5, 2, 2, 5, 5, 4)

#make the data frame for Kroger Vanilla 
krogerVanilla <- data.frame(k_van_flavor, k_van_texture, k_van_consistency, k_van_color)

#Playing with RNeo4j
#starting graph after I have already got my database running
graph = startGraph("http://localhost:7474/browser/")
#setting contraints for ice cream brand nodes

#all the things I did in console to make my first graph using Neo4j :) 
bluebell <- createNode(graph, "IceCream", name = "BlueBell")
kroger <- createNode(graph, "IceCream", name = "Kroger")
turkeyhill <- createNode(graph, "IceCream", name = "TurkeyHill")
haagendaz <- createNode(graph, "IceCream", name = "HaagenDaz")
flavorRange4 <- createNode(graph, "Flavor", name = "FlavorRange4")
flavorRange3 <- createNode(graph, "Flavor", name = "FlavorRange3")
tasteRange3 <- createNode(graph, "Taste", name = "TasteRange3")
tasteRange2 <- createNode(graph, "Taste", name = "TasteRange2")
consistencyRange4 <- createNode(graph, "Consistency", name = "ConsistencyRange4")
consistencyRange3 <- createNode(graph, "Consistency", name = "ConsistencyRange3")
colorRange4 <- createNode(graph, "Color", name = "ColorRange4")
colorRange3 <- createNode(graph, "Color", name = "ColorRange3")
colorRange2 <- createNode(graph, "Color", name = "ColorRange2")
?createRel
krogerFlavor <- createRel(kroger, "HAS", flavorRange4)
krogerTexture <- createRel(kroger, "HAS", tasteRange3)
krogerConsistency <- createRel(kroger, "HAS", consistencyRange3)
krogerColor <- createRel(kroger, "HAS", colorRange4)
haagendazFlavor <- createRel(haagendaz, "HAS", flavorRange3)
haagendazTexture <- createRel(haagendaz, "HAS", tasteRange2)
haagendazConsistency <- createRel(haagendaz, "HAS", consistencyRange3)
haagendazColor <- createRel(haagendaz, "HAS", colorRange3)
turkeyhillFlavor <- createRel(turkeyhill, "HAS", flavorRange4)
turkeyhillTexture <- createRel(turkeyhill, "HAS", tasteRange2)
turkeyhillConsistency <- createRel(turkeyhill, "HAS", consistencyRange4)
turkeyhillColor <- createRel(turkeyhill, "HAS", colorRange2)
bluebellFlavor <- createRel(bluebell, "HAS", flavorRange3)
bluebellTexture <- createRel(bluebell, "HAS", tasteRange3)
bluebellConsistency <- createRel(bluebell, "HAS", consistencyRange3)
bluebellColor <- createRel(bluebell, "HAS", colorRange3)
