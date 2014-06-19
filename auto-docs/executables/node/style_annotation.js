var plotly = require('plotly')('TestBot', 'r1neazxo9w')

var trace1 = {
  x: [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  y: [0, 1, 3, 2, 4, 3, 4, 6, 5], 
  type: "scatter"
};
var trace2 = {
  x: [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  y: [0, 4, 5, 1, 2, 2, 3, 4, 2], 
  type: "scatter"
};
var data = [trace1, trace2];
var layout = {
  showlegend: false, 
  annotations: [
    {
      x: 2, 
      y: 5, 
      text: "max=5", 
      bordercolor: "#c7c7c7", 
      borderwidth: 2, 
      borderpad: 4, 
      bgcolor: "#ff7f0e", 
      xref: "x", 
      yref: "y", 
      showarrow: true, 
      arrowwidth: 2, 
      arrowcolor: "#636363", 
      arrowhead: 2, 
      arrowsize: 1, 
      font: {
        family: "Courier New, monospace", 
        size: 16, 
        color: "#ffffff"
      }, 
      opacity: 0.8, 
      align: "center", 
      ay: -30, 
      ax: 20
    }
  ]
};

var graph_options = {filename: "style-annotation", fileopt: "overwrite", layout: layout, auto_open: "false"}
plotly.plot(data, graph_options, function (err, msg) {
    console.log(msg);
});