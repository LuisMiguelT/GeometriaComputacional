use application "polytope";
#MATEO QUIMBIULCO
#PREGUNTA 2. 
my $p1 = n_gon(5);
my $p2 = bipyramid($p1);
my $p3 = pyramid($p2);
print "PROPIEDADES SOBRE P2:", "\n";
print "Numero de vertices: ", $p2->N_VERTICES, "\n";
print "Numero de facetas: ", $p2->N_FACETS, "\n";
print "Coordenadas de Vertices: ";
print $p2->VERTICES;
print "Desigualdades lineales Facetas: ";
print_constraints $p2->FACETS;
print "Indice Vertice-Faceta:";
print $p2->VERTICES_IN_FACETS;
print $p2 ->SCHLEGEL;

print "PROPIEDADES SOBRE P3:", "\n";
print "Numero de vertices: ", $p3->N_VERTICES, "\n";
print "Numero de facetas: ", $p3->N_FACETS, "\n";
print "Coordenadas de Vertices: ";
print $p3->VERTICES;
print "Desigualdades lineales Facetas: ";
print_constraints $p3->FACETS;
print "Indice Vertice-Faceta:";
print $p3->VERTICES_IN_FACETS;
print $p3 ->SCHLEGEL;


#DESCRIPCION DE LAS FACETAS P2:
#P2 es un objeto en R^3, por lo tanto sus facetas seran triangulos en R^2, provenientes de unir cada uno de los vertices del pentagono tanto con el punto por encima como por debajo del hiperplano en el que se encuentra originalmente. Es decir, existen 10 facetas. 

#DESCRIPCION DE LAS FACETAS DE P3:
#P3 es un objeto en R^4, por lo que sus facetas estaran en R^3, en este caso, se dispone de la faceta de la base que sera la bipiramide construida, mientras que las facetas laterales seran tetraedros y seran 10 de ellos, al proceder de un pentagono regular. En total existen 11 facetas.
