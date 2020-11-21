function [KSEA_scores,KSEA_kinase,KSEA_scores_pvalue] = KSEA(module,uniquePhos,FC)

%load('C:\Users\uox927\OneDrive - The University of Texas-Rio Grande Valley\Research\Collaboration\Genaro\data\mydata\PSP');
load('PSP');
kinase_unique = unique(kinases);


%FC = log2(FC);

kinase_scores = zeros(1,length(kinase_unique));

for j=1:length(kinase_unique)
    s = substrates(find(strcmp(kinases,kinase_unique{j})));
    common = intersect(module,s);
    common = intersect(common,uniquePhos);
    if(length(common)>0)
        commonFC=[];
        for k=1:length(common)
            ind = find(strcmp(uniquePhos,common(k)));
            commonFC = [commonFC ; FC(ind)];
        end
        kinase_scores(j) = (mean(commonFC) - mean(FC)) * sqrt(length(common))/std(FC);
    end
end
ind = find(kinase_scores==0);
kinase_scores(ind)=[];
tmp =kinase_unique;
tmp(ind)=[];
sorted=[];
if(length(kinase_scores)>0)
[sorted I] = sort(kinase_scores,'ascend');
tmp = tmp(I);
end
KSEA_kinase = tmp;
KSEA_scores = sorted;
KSEA_scores_pvalue=[];
for i=1:length(KSEA_scores)
    KSEA_scores_pvalue(i) = normcdf(abs(KSEA_scores(i)),'upper');
end
    
end