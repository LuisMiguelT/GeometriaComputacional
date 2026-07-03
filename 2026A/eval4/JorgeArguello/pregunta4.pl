# Jorge Arguello - Pregunta 4
# Jueves 11 de Junio
use application "polytope"; 

# COnstrucción 
my $p1 = new Polytope(INEQUALITIES=>[[4,  3,-2],
				 [4, -3,-2],
				 [1,  0, 1]]);
				 
my $p2 = prism($p1);
my $p3 = pyramid($p2);

$p1 -> VISUAL;
$p2 -> VISUAL;
$p3 -> VISUAL;


# Caracteristicas de P
##  
print("P1: \n Numero de vertice: ");
print($p1 -> N_VERTICES);
print "\n";
print("Numero de Facetas: ");
print($p1 -> N_FACETS);
print "\n";
##
print("Vertice: \n");
print($p1 -> VERTICES);
print "\n";
##
print("Desigualdades:  \n");
print_constraints($p1 -> FACETS);
print "\n";
##
print("Incidencias Vertices-Facetas  \n");
print($p1 -> VERTICES_IN_FACETS);
print "\n";



################# P2
print("P2: \n Numero de vertice: ");
print($p2 -> N_VERTICES);
print "\n";
print("Numero de Facetas: ");
print($p2 -> N_FACETS);
print "\n";
##
print("Vertice: \n");
print($p2 -> VERTICES);
print "\n";
##
print("Desigualdades:  \n");
print_constraints($p2 -> FACETS);
print "\n";
##
print("Incidencias Vertices-Facetas  \n");
print($p2 -> VERTICES_IN_FACETS);
print "\n";

#####################
print("P3: \n Numero de vertice: ");
print($p3 -> N_VERTICES);
print "\n";
print("Numero de Facetas: ");
print($p3 -> N_FACETS);
print "\n";
##
print("Vertice: \n");
print($p3 -> VERTICES);
print "\n";
##
print("Desigualdades:  \n");
print_constraints($p3 -> FACETS);
print "\n";
##
print("Incidencias Vertices-Facetas  \n");
print($p3 -> VERTICES_IN_FACETS);
print "\n";
