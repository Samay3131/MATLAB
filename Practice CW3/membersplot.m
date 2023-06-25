function plt = membersplot(plt1,plt2)
plot1 = plt1;
plot2 = plt2;
ME = 22; 
BM = 45; 
CE = 23; 
EE = 33; 
% ----The below code will work for input in any order-------%
data = [ME BM CE EE]; 
labels = {'ME','BM','EE','CE'}; 
 
if strcmp(plot1,'pie')
    subplot(1,2,1)
    eval(strcat(plot1,'(data,labels)'))
    title('Faculty members by department')
else
    subplot(1,2,1)
    eval(strcat(plot1,'(data)'))
    xlabel('Departments')
    ylabel('Number of faculty members')
end


if strcmp(plot2,'pie')
    subplot(1,2,2)
    eval(strcat(plot2,'(data,labels)'))
    title('Faculty members by department')
else
    subplot(1,2,2)
    eval(strcat(plot2,'(data)'))
    xlabel('Departments')
    ylabel('Number of faculty members')
end
