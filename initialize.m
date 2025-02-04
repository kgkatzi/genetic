function population = initialize(chromosome_number,population_number,minf,maxf,inputs1,inputs2)
%function that initializes population of chromosomes with random numbers
    population=zeros(population_number,chromosome_number);
    maxin=max(max(inputs1),max(inputs2))-min(min(inputs1),min(inputs2));
    %max of inputs
    minin=-maxin;
    %min of inputs
    for j=1:population_number  
        for i=1:5:chromosome_number
            population(j,i)=(maxf - minf) * rand() + minf;
            %amplitude A gets values between max and min of function
            population(j,i+1)=(maxin-minin)*rand()+minin;
            population(j,i+2)=(maxin-minin)*rand()+minin;
            %centers get values between max and min of function
            population(j,i+3)=(maxf-minf)*rand()+(-maxf-minf);
            population(j,i+4)=(maxf-minf)*rand()+(-maxf-minf); 
            %sigmas get values between max-min of function distance and the
            %difference of their absolute values
        end
    end

end