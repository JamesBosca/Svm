



(Xval(:,1),Xval(:,2),sigma(j))



 gaussianKernel(Xval(:,1),Xval(:,2),sigma(j));
 
 
 a=min(error);
k= find(error==a);
C=A(k);
sigma=S(j);

C=0.03;
sigma=0.01;

C = 1;
sigma = 0.3;


error(error==0)=100;
error

min(error(:))
[I_row I_col]=ind2sub(size(error),I);

I_row
I_col
