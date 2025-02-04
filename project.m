clear all;
close all;

numGaussians=15;
parameters=5;
chromosome_number=parameters*numGaussians;
population_number=50;

crossover_percentage=0.1;  %percentage that leads to the number of parents selected
offspring_percentage=0.6;  %percentage that leads to the number of offsprings created

mutation_prob=0.4;   %probability of mutation to chromosomes

generations=800;  %maximum number of generations

inputs1=linspace(-1,2);
inputs2=linspace(-2,1);

prediction=genetic_algorithm(chromosome_number,population_number,inputs1,inputs2,offspring_percentage,generations,crossover_percentage,mutation_prob);
