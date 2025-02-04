function selected_parents = select_parents(fitness,population,num_parents)
    %selects the best chromosomes as parents
    [~, ind] = sort(fitness,'ascend');
    selected_parents=population(ind(1:num_parents),:);
end