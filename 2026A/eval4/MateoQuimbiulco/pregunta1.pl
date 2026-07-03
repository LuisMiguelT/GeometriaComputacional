use application "polytope";
#MATEO QUIMBIULCO
#PREGUNTA 1. 
my $p1 = n_gon(6);
my $p2 = pyramid($p1);
my $p3 = prism($p2);
print $p3->VERTICES;
print_constraints $p3->FACETS;
print $p3->VERTICES_IN_FACETS;
print $p3 ->SCHLEGEL;

#DESCRIPCION DE LAS FACETAS:
#P3 es un objeto de dimension 4, por lo que sus facetas son politopos de dimension 3. La base y la tapa del objeto son piramides hexagonales, mientras que las facetas laterales son 6 prismas triangulares y ademas se forma en el centro 1 prisma hexagonal. Teniendo asi un total de 9 facetas. 

# LMT: Número de vértices y facetas?
# LMT: 0,8/1
