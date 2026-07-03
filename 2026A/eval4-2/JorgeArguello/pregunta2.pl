# Taller 2: Pregunta 2 - Jorge Arguello
# Jueves 18 de Junio
use application "polytope"; 

print("Taller 2: Pregunta 2 \n");
# politopo

my $p = new Polytope(INEQUALITIES=>[ 	[1,-1, 1,-1,-1], 
					[1,-2, 0,-2,-1], 
					[2,-1, 0,-1,-1], 
					[3,-1, 1, 0,-1], 
					[0,1, 0, 0, 0],
					[0, 0,1, 0, 0],
					[0, 0, 0,1, 0],
					[0, 0, 0, 0,1] ]);
					
					
## # Caracteristicas de P
##
print("Vertices de P: \n");
print($p -> VERTICES);
print "\n";
##
print("Desigualdades de P:  \n");
print_constraints($p -> FACETS);
print "\n";

print("Incidencias Vertices-Facetas  \n");
print($p -> VERTICES_IN_FACETS);
print "\n";

print("Dimencion: ");
print $p->DIM;
print "\n";

$p->SCHLEGEL;

$p->HASSE_DIAGRAM->VISUAL;

