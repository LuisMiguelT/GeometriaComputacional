# Taller 2: Pregunta 1 - Jorge Arguello
# Jueves 18 de Junio
use application "polytope"; 

print("Taller 2: Pregunta 1 \n");
# politopo
my $p = new Polytope(POINTS=>[[1,1,0,0,0],[1,0,1,0,0],[1,0,0,1,0],[1, 0,0,1,1],[1,0,0,0,0],[1, 0,0,1,1/2],
			 [0,1,1,0,0],[0,1,0,1,0],[0,0,1,1,0],[0,3,2,1,0]]);
			 
# Caracteristicas de P
##
print("Vertices de P: \n");
print($p -> VERTICES);
print "\n";
##
print("Desigualdades de P:  \n");
print_constraints($p -> FACETS);
print "\n";


#Cono regreción  RECESION 
my $crp = recession_cone($p);

print("Facetas del cono de regrecion de P: \n"); #RECESION
print($crp -> FACETS);
print "\n";

print("Rayos del cono de regrecion de P: \n"); #RECESION
print($crp -> RAYS);
print "\n";

# LMT: Diferenciar entre vértices y rayos de P
# LMT: 0,9/1
