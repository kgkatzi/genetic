function fitness = prediction_fitness(f,prediction,len)
    %computes the fitness of the predicted function as square error
    fitness=sum((f-prediction).^2,'all')/len^2;
end