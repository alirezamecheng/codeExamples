
## plotting in julia

using PyPlot # have to wait a bit due to compilation

srand(1) # second plot
x, y = randn(100), randn(100)
scatter(x, y)

## plotting in julia eg 2

using Distributions

using PyPlot

mu, sigma = 100, 15
x = mu + sigma * randn(10000)
n, bins, patches = plt[:hist](x, 50, normed=1,
facecolor="green", alpha=0.75)
y = pdf(Normal(mu, sigma), bins)
plot(bins, y, "r--", linewidth=1)
xlabel("Smarts")
ylabel("Probability")
title(raw"$\mathrm{Histogram\ of\ IQ:}\ \mu=100,\ \sigma=15$")
axis([40, 160, 0, 0.03])
grid(true)


