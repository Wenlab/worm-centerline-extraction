for i = 1 : 749
    hold on;
    axis ij;
    axis([0,512,0,512]);
    plot(a(:,2,i),a(:,1,i));
end