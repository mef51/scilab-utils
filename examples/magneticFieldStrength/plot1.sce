// =========================================================
// config the plot with these variables!
// CSV should be formatted with x-values in the first column
// and y-values in the second column.
_sourceFile = "FieldIntensity1.csv";
_xLabel = "Position(cm)";
_yLabel = "Field Strength (Tesla)";
_title = "Figure 1: Field Strength along Axis of One Solenoid";
// =========================================================

M = csvRead(_sourceFile);
// M(row#, col#), ':' represents 'every value in'
x = M(:, 1);
y = M(:, 2);

linestyle = "k." // 'k' for black, '.' for circles. for real

plot(x, y, linestyle, "marksize", 8);

// axis on origin
a = gca();
a.title.font_size = 4;
//a.x_location = "origin"; 
//a.y_location = "origin"; 
a.x_label.font_size = 3;
a.y_label.font_size = 3;
a.box = "on";

xgrid();
xlabel(_xLabel);
ylabel(_yLabel);
title(_title);
