% WRITE YOU CODE HERE 
function plot1 = plottrigs(varargin)
type = varargin{1};
c = varargin{2};
w = varargin{3};
s = varargin{4};
x = -2*pi : 0.1 : 2*pi; %generating points in steps of 0.1

%plotting according to the input.
if type == 'sin'
   plot(sin(x),'LineWidth',w,'Color',c,'Marker',s) 
   xlabel('x')
   ylabel('six(x)')
elseif type == 'cos'
   plot(cos(x),'LineWidth',w,'Color',c,'Marker',s) 
   xlabel('x')
   ylabel('cos(x)')
   
end

