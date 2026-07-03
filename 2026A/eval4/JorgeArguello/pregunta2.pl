# Jorge Arguello - Pregunta 2
# Jueves 11 de Junio
use application "polytope"; 

# CONSTRUCCIÓN
## Pentágono regular
my $p1 = n_gon(5);

## BiPirámide sobre el hexagono
my $p2 = bipyramid($p1);

## Pirámide sobre la biPirámide
my $p3 = pyramid($p2);


# Caracteristicas de P2
##  
print("Características de P2:\n");
print($p2 -> N_VERTICES);
print("\n");
print($p2 -> N_FACETS);
print("\n");
##
print($p2 -> VERTICES);
##
print_constraints($p2 -> FACETS);
##
print($p2 -> VERTICES_IN_FACETS);
##
$p2 -> SCHLEGEL;


# Caracteristicas de P3
##  
print("Características de P3:\n");
print($p3 -> N_VERTICES);
print("\n");
print($p3 -> N_FACETS);
print("\n");
##
print($p3 -> VERTICES);
##
print_constraints($p3 -> FACETS);
##
print($p3 -> VERTICES_IN_FACETS);
##
$p3 -> SCHLEGEL;


######################
# Facetas de P2
# EN el caso de P2 tememos que sus facetas van a ser una triangulos formados por una de las facetas de (P1) y uno de los dos nuevos vértices. Entonces tendrá 10 faceras que serán triangulos en R2.  

# Facetas de P3
# Como es un pirámide con base P2; primero. Tendremos la faceta "Base" que será P2, es decir, una de las facetas será una pirámide en R3 con base pentagonal.
# Además de cada una de las facetas de P2 se usará de base para nuevas pirámides. En este caso tendremos 10 nuevas facetas con forma de pirámides en R3 de base triangular. 
# En Total: P3 tiene 11 facetas. 

# LMT: 1/1










































