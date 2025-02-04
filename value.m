function prediction = value(u1,u2,chromosome)
    %function that returns the value of predictions for a certain chromosome
    prediction=0;
    for i=1:5:length(chromosome)
        prediction=prediction+chromosome(i)*exp(-((u1-chromosome(i+1)).^2/(2*chromosome(i+3)^2)+(u2-chromosome(i+2)).^2/(2*chromosome(i+4)^2)));
    end
end