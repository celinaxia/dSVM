function [d]=divisionN(data,y)
nfeatures=size(data,2);
d=zeros((nfeatures-1)*nfeatures/2,1);
counter=1;sa=zeros(1,9);
fd=9*y;
 for i=1:nfeatures-1
     triplei=fd+3*data(:,i);
     for j=i+1:nfeatures
       temp=triplei+data(:,j);
       for k=0:8 
           if sum(temp==k)>sum(temp==(k+9))
               sa(k+1)=sum(temp==k);
           else 
               sa(k+1)=sum(temp==(k+9));
           end
       end
       d(counter)=sum(sa); 
       counter=counter+1;
     end
 end