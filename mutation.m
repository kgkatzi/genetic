function mutated_offsprings =mutation(offsprings,minf,maxf,inputs1,inputs2,mutation_prob)
    %mutate chromosomes
    mutated_offsprings=offsprings;
    maxin=max(max(inputs1),max(inputs2))-min(min(inputs1),min(inputs2));
    minin=-maxin;
    for i=1:size(offsprings,1)
        if rand<mutation_prob  %probability
            mutation_gene=randperm(size(offsprings,2),1);
            for j=1:5:size(offsprings,2)
                if j==mutation_gene
                    mutated_offsprings(i,j)=(maxf - minf) * rand() + minf;
                else
                    mutated_offsprings(i,j)=offsprings(i,j);
                end
    
                if j+1==mutation_gene
                    mutated_offsprings(i,j+1)=(maxin-minin)*rand()+minin;
                else
                    mutated_offsprings(i,j+1)=offsprings(i,j+1);
                end
    
                if j+2==mutation_gene
                    mutated_offsprings(i,j+2)=(maxin-minin)*rand()+minin;
                else
                    mutated_offsprings(i,j+2)=offsprings(i,j+2);
                end
    
                if j+3==mutation_gene
                    mutated_offsprings(i,j+3)=(maxf-minf)*rand()+(-maxf-minf);
                else
                    mutated_offsprings(i,j+3)=offsprings(i,j+3);
                end
    
                if j+4==mutation_gene
                    mutated_offsprings(i,j+4)=(maxf-minf)*rand()+(-maxf-minf);
                else
                    mutated_offsprings(i,j+4)=offsprings(i,j+4);
                end
            end
        end  
    end
end