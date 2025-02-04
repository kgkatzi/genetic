function final= genetic_algorithm(chromosome_number,population_number,inputs1,inputs2,offspring_percentage,generations,crossover_percentage,mutation_prob)
    f=@(u1,u2)sin(u1+u2).*sin(u2.^2); 
    [X, Y] = meshgrid(inputs1, inputs2);
    func= f(X, Y);  %values of function
    minf=min(min(func));
    maxf=max(max(func));
    %min and max of function
    stop=0; %variable used to stop the algorithm

    population = initialize(chromosome_number,population_number,minf,maxf,inputs1,inputs2);
    %initalize population
    for g=1:generations  %loop for all generations
        fitness=zeros(population_number,1);
        for i=1:population_number  %loop for all population
            chromosome=population(i,:);  %for each chromosome
            prediction_function=@(u1,u2)value(u1,u2,chromosome);
            [X, Y] = meshgrid(inputs1, inputs2);
            prediction= prediction_function(X, Y); %prediction of function
            fitness(i) = prediction_fitness(func,prediction,length(inputs1));  %fitness of prediction
        end
        if min(fitness)<0.005   %stop when error is too low
            disp("Stop at generation "+g)
            final=population(find(fitness==min(fitness)),:);
            stop=1;
            break
        end
        selected_parents = select_parents(fitness,population,round(crossover_percentage*population_number));
        %select best chromosomes of population
        offsprings =crossover(round(offspring_percentage*population_number),selected_parents,chromosome_number);
        %offsprings created by the crossover of the selected parents
        population= replace(population,fitness,offsprings);
        %some chromosomes of initial population replaced with offsprings
        population =mutation(population,minf,maxf,inputs1,inputs2,mutation_prob);
        %mutated population        
    end

    if stop==0  %best solution ifthe algorithm has not found a solution before maximum generations
        for i=1:population_number
            chromosome=population(i,:);
            prediction_function=@(u1,u2)value(u1,u2,chromosome);
            [X, Y] = meshgrid(inputs1, inputs2);
            prediction= prediction_function(X, Y);
            fitness(i) = prediction_fitness(func,prediction,length(inputs1));
        end
        selected_parents = select_parents(fitness,population,2);
        final=selected_parents(1,:);
    end

    figure
    error_for_plot=@(u1,u2)f(u1,u2)-value(u1,u2,final);
    fsurf(error_for_plot,[min(inputs1) max(inputs1) min(inputs2) max(inputs2)])
    title('Error')
    

    figure
    fsurf(f,[min(inputs1) max(inputs1) min(inputs2) max(inputs2)])
    title('Output of function')

    prediction_for_plot=@(u1,u2)value(u1,u2,final);

    figure
    fsurf(prediction_for_plot,[min(inputs1) max(inputs1) min(inputs2) max(inputs2)])
    title('Prediction of genetic algorithm')
end