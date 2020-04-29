data = read.csv("~/Desktop/data_share/data.csv")

mod1 = glmer(y ~ poly(x1,2) + poly(x2,2) + (1|group),family=binomial,data=data)
plot_model(mod1,type='pred',terms=c("x2 [all]"))


mod2 = glmer(y ~ scale(poly(x1,2)) + scale(poly(x2,2)) + (1|group),family=binomial,data=data)
plot_model(mod2,type='pred',terms=c("x1 [all]"))