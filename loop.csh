# // Bailey Bonaci
# // bonacib@oregonstate.edu
# // Project 1 
# // OpenMP: Monte Carlo Simulation
# // Source Cited: Code used in source file comes for Professor Mike Bailey

#!/bin/csh

foreach t ( 1 2 4 8 12 16 20 24 32 )
  foreach n ( 1 10 100 1000 10000 100000 500000 1000000 )
        g++ -O3   montecarlo.cpp  -DNUMT=$t -DNUMTRIALS=$n  -o montecarlo  -lm  -fopenmp
    ./montecarlo
  end
end