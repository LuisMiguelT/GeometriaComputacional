# Jorge Arguello - Pregunta 3
# Jueves 11 de Junio
use application "polytope"; 

# CONSTRUCCIÓN
my $p = new Polytope(POINTS=>[[1,-2,0,0],[1,-1,-1,0],[1,0,1,0],[1,1,-1,0],[1,2,0,0],
			   [0,-1,0,1],[0,1,0,1],[0,-1,0,3]]);


# Caracteristicas de P
##  
print("Numero de vertice: ");
print($p -> N_VERTICES);
print "\n";
print("Numero de Facetas: ");
print($p -> N_FACETS);
print "\n";
##
print("Vertice: \n");
print($p -> VERTICES);
print "\n";
##
print("Desigualdades:  \n");
print_constraints($p -> FACETS);
print "\n";
##
print("Incidencias Vertices-Facetas  \n");
print($p -> VERTICES_IN_FACETS);
print "\n";

# Visualización
$p -> VISUAL;
$p -> SCHLEGEL;
print("No se pudo hacer el diagrama de SCHLEGEL ya que P no es acotado");

# LMT: 1/1