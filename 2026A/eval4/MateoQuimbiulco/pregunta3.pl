use application "polytope";
#MATEO QUIMBIULCO
#PREGUNTA 3. 

my $p = new Polytope(POINTS=>[[1,-2,0,0],[1,-1,-1,0],[1,0,1,0],[1,1,-1,0],[1,2,0,0],[0,-1,0,1],[0,1,0,1],[0,-1,0,3]]);
print "Numero de Vertices:", $p->N_VERTICES, "\n";
print "Numero de Facetas:", $p->N_FACETS, "\n";
print "Numero de Rayos:", $p->N_RAYS, "\n";
print "COORDENADAS DE LOS VERTICES: ";
print $p->VERTICES;
print "COORDENADAS DE LOS RAYOS: ";
print $p->RAYS;
print "DESIGUALDADES FACETAS: ";
print_constraints $p->FACETS;
print "INCIDENCIA VERTICE-FACETA: ";
print $p->VERTICES_IN_FACETS;
$p->VISUAL;
$p->SCHLEGEL;



