%demo.m
%The function that detects interacting SNP pairs is written in Matlab and is called "divisionN".
%An example dataset, named "example.mat" was given.


load('./example.mat');
%Two variables which are X and y are introduced
%X is the SNP dataset with each row corresponding to a sample and each
%column a SNP. y is the vector containing the class label for each sample,
%where 0 represents control and 1 case.
%The first two SNPs are interacting with the given example


[d]=divisionN(X,y);
% Given N SNPs, the function sums up the number of samples from the majority
% class across the 9 cells for each of the N*(N-1)/2 SNP pairs.

if d(1)==max(d)
    fprintf('the first two SNPs are interacting and they leads to the largest number of training samples across the nice cells\n');
end
