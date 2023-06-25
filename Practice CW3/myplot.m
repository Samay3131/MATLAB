% WRITE YOU CODE HERE 

function plt = myplot(vec1,vec2)
x=vec1;
y=vec2;
load('plot_properties.mat');
prop1 =strcat(plot_properties(1).plotproperties.Color,plot_properties(1).plotproperties.LineStyle);

subplot(3,1,1)
eval(strcat(plot_properties(1).plottype,'(x,y,prop1)'))
subplot(3,1,2)
eval(strcat(plot_properties(2).plottype,'(x,y,plot_properties(2).plotproperties.BarWidth,plot_properties(2).plotproperties.FaceColor,plot_properties(2).plotproperties.EdgeColor)'))
subplot(3,1,3) 
eval(strcat(plot_properties(3).plottype,'(x,y,plot_properties(3).plotproperties.BarWidth,plot_properties(3).plotproperties.FaceColor,plot_properties(3).plotproperties.EdgeColor)'))
end
