# Taller 2: Pregunta 3 - Jorge Arguello
# Jueves 18 de Junio
use application "polytope"; 

print("Taller 2: Pregunta 3 \n");
# politopo

my $p = new Polytope(INEQUALITIES=>[ 	[2, 2,-1,-1], 
					[2,-2,-1,-1], 
					[7, 1,-3,-3],  # LMT:  [7, 2,-3,-3]
					[1,1, 0, 0],
					[1,-1, 0, 0],
					[1, 0,1, 0],
					[1, 0,-1, 0],
					[1, 0, 0,1],
					[1, 0, 0,-1]]);
					
my $q = bipyramid($p);

### 1 
print("Vertices de P: \n");
print($p -> VERTICES);
print "\n";
## 
print("Fecetas de P: \n");
print($p -> FACETS);
print "\n";
##
print("Incidencias Vertices-Facetas de P \n");
print($p -> VERTICES_IN_FACETS);
print "\n";

# LMT: Visualizar P?

##
print("Incidencias Vertices-Facetas de P \n"); # LMT: Q
print($q -> VERTICES_IN_FACETS);
print "\n";

$q->SCHLEGEL;

print("Numero de caras en Q por cada dimencion");
print map {$_, ": ", $q->HASSE_DIAGRAM->nodes_of_dim($_)->size,"\n" } (-1..4);


# primero tenemos que en P hay; 2 facestas cuadrangulares y 6 facetas triangulares;
# Por lo tanto a hacer una bipirámide tenemos 12 pirámides de con bases triangular y 4 pirámides de con bases cuadrangular. como es ua bipirámide la base que es P desaparece.  

# LMT: La siguiente línea está demás y causaba error
# $r->HASSE_DIAGRAM->VISUAL;

# LMT : 0,8/1