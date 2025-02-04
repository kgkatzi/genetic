function population= replace(population,fitness,offsprings)
    %replaces initial population with offsprings
    [~, ind] = sort(fitness,'descend');
    for i=1:size(offsprings,1)
        population(ind(i),:)=offsprings(i,:);
    end    
end