##PSF
close all;
clear, clc;
format long

## Beta
Beta = [0 0.25 0.5 1];

Rs = 1e3
T = 1/Rs

##color
c= {'m','b','k','g'};

t = linspace(-4*T, 4*T, 1e4);
h = zeros(size(t));
hold on;

for n = 1 : numel(Beta)
  h = 1/T*sinc(t/T).*(cos(pi*Beta(n)*t/T)./(1-(2*Beta(n)*t/T).^2));

  h(abs(t)==T/2/Beta(n)) = pi/(4*T)*sinc(1/2/Beta(n));

  plot(t,h,'linewidth',2);
end


title('Impulse Response', 'fontsize', 14);
xlabel('time','fontsize',14);
ylabel('Amplitude','fontsize',14);
legend(['\beta = ', num2str(Beta(1))],['\beta = ', num2str(Beta(2))],['\beta = ', num2str(Beta(3))],['\beta = ', num2str(Beta(4))]);
