// =========================================================
// config the plot with these variables!
// CSV should be formatted with x-values in the first column
// and y-values in the second column.
_sourceFile = "YourData.csv";
_xLabel = "Label for the x-axis!";
_yLabel = "Label for the y-axis!"
_title = "This is a title";
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
xtitle(_title, _xLabel, _yLabel);
