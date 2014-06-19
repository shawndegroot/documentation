import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('TestBot', 'r1neazxo9w')

data = Data([
    Scatter(
        x=[2, 4, 6],
        y=[-3, 0, 3]
    )
])
layout = Layout(
    xaxis=XAxis(
        autorange=True,
        rangemode='tozero'
    ),
    yaxis=YAxis(
        autorange=True,
        rangemode='nonnegative'
    ),
    showlegend=False
)
fig = Figure(data=data, layout=layout)

plot_url = py.plot(fig, filename='axes-range-mode', auto_open=False)