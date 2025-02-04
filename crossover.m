function offsprings =crossover(offspring_number,selected_parents,chromosome_number)
    %crossover of 2 parents
    offsprings=zeros(offspring_number,chromosome_number);
    for i=1:offspring_number
        parents=randperm(size(selected_parents,1),2);
        %select 2 random parents of the given group
        for j=1:chromosome_number
            offsprings(i,j)=(selected_parents(parents(1),j)+selected_parents(parents(2),j))/2;
            %mean of their values
        end
    end
    
end