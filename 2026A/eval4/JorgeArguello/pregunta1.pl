# Jorge Arguello - Pregunta 1
# Jueves 11 de Junio
use application "polytope"; 

# Hexagono regular
my $p1 = n_gon(6);

# Pirámide sobre el hexagono
my $p2 = pyramid($p1);

# Prisma sobre la pirámide
my $p3 = prism($p2);

# Caracteristicas de P3
##  
print($p3 -> VERTICES);
##
print_constraints($p3 -> FACETS);
##
print($p3 -> N_VERTICES);
print("\n");
print($p3 -> N_FACETS);
print("\n");
##
print($p3 -> VERTICES_IN_FACETS);
##
$p3 -> SCHLEGEL;

#FACETAS: dado que es un prisma(P3), las nuevas facetas serán dadas por el número de facetas de la base(P2) más las dos "tapas":

## 2 Prirámides en R3 con base hexagonal(Serían como las tapas del prisma)
## 6 lados del prisma serán un prisma en R3 con base triangular
## 1 Prisma en R3 con base hexagonal

# 9 Facetas

# LMT: 1/1

