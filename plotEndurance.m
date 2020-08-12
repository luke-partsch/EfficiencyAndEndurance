function [] = plotEndurance(lowCapacity, highCapacity)
    %155N Final Project - Luke Partsch
    %Plot the endurance over a range of fuel capacity
    %For the range given in the PDF, input 25 and 100

    %Translate the input into a range
    fuelCapacity = lowCapacity:highCapacity;
    
    %Variables to calculate fuel flow
    TE = 0.25; %Thermal efficiency
    Eg = 8.8; %Gasoline energy (kWh / l)
    P = 298; %Engine power (kW)
    
    %Calculate the endurance
    Rf = P / (Eg * TE); %Fuel flow
    endurance = fuelCapacity / Rf;
    
    %Call the figure and plot
    figure('numbertitle', 'off', 'name', 'Gasoline Enging Range (Endurance)');
    plot(fuelCapacity, endurance);
    
    %Specifications
    title('Gasoline Engine Range (Endurance)');
    xlabel('Fuel Capacity (l)');
    ylabel('Endurance');
    xlim([lowCapacity highCapacity]);
    ylim([0 1]);
end