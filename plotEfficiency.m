function [] = plotEfficiency(lowPIn, highPIn)
    %155N Final Project - Luke Partsch
    %Plot the efficiency over a range of power input
    %For the range given in the PDF, input 0 and 125
    
    %Translate the input into a range
    pIn = lowPIn:0.1:highPIn;
    
    %Variables to calculate pLoss
    C0 = 0.6;
    C1 = 0.02;
    C2 = 0.0015;

    %Calculate pOut using the pIn
    pLoss = C0 + (C1 .* pIn) + (C2 .* pIn .* pIn);
    pOut = pIn - pLoss;
    %Create effifiency and fill it in using pOut and pIn
    efficiency = zeros([1 length(pIn)]);
    for i = 1:length(pIn)
        efficiency(i) = pOut(i) / pIn(i);
    end

    %Call the figure and plot
    figure('numbertitle', 'off', 'name', 'Powertrain Propulsion Efficiency');
    plot(pIn, efficiency);

    %Specifications
    title('Powertrain Propulsion Efficiency');
    xlabel('pIn (kW)');
    ylabel('Efficiency');
    xlim([lowPIn highPIn]);
    ylim([0 1]);
end