# Taller 2: Pregunta 4 - Jorge Arguello
# Jueves 18 de Junio
use application "polytope"; 

print("Taller 2: Pregunta 4 \n");
# politopo

my $p = new Polytope(INEQUALITIES=>[ 	[2,-1,-1], 
					[2, 1,-1], 
					[2,-1, 1],
					[2, 1, 1], #
					[1, 0, 1],
					[1, 0,-1]]);
					
					
					
# construc

my $q = bipyramid($p);
my $r = prism($q);


##
print("Incidencias Vertices-Facetas de la bipamide Q \n");
print($q -> VERTICES_IN_FACETS);
print "\n";

print($q->VISUAL);


print("Incidencias Vertices-Facetas de el prisma R \n");
print($r -> VERTICES_IN_FACETS);
print "\n";
print($r->SCHLEGEL);


print("Numero de caras en Q por cada dimencion"); # DIMENSIÓN
print map {$_, ": ", $q->HASSE_DIAGRAM->nodes_of_dim($_)->size,"\n" } (-1..3);

print("Numero de caras en R por cada dimencion");
print map {$_, ": ", $r->HASSE_DIAGRAM->nodes_of_dim($_)->size,"\n" } (-1..4);

print("Numero de caras de dimension 2 en R: \n");
print map { $r->HASSE_DIAGRAM->FACES->[$_], "\n" } @{$r->HASSE_DIAGRAM->nodes_of_dim(2)};

# LMT : HEXAGONAL
# Dado que estamos formando un prisma sobre una bipirámide exagonal; lo que que en un principio estamos haciendo es construyendo prismas con bases triangulares; uno por cada faceta de Q. además tenemos las dos "tapas" del prisma que en este caso serán las bipirámides. 
# Entonces tendremos 18 cuadrílateros;
# y 24 triangulos
# LMT : La respuesta está bien, pero la justificación no es correcta

# LMT : Diagrama de Hasse de R?

# LMT : 0.8/1









#print map { $p->HASSE_DIAGRAM->FACES->[$_], "\n" } @{$p->HASSE_DIAGRAM->nodes_of_dim(2)};
