%%% groupLegend
groupLegend = cell(n,1);
for i = 1:n
    groupLegend{i,1} = ['group ',num2str(i)];
end

%%% ageLegends
ageLegend = {'0 to 9','10 to 19','20 to 29', '30 to 39',...
             '40 to 49', '50 to 59', '60 to 69', '\geq 70' };



%%% doseLegends
doseLegend = {'none', '1 dose', '2 doses', '3 doses'};