data(diamonds,package='ggplot2')
head(diamonds)
plot(price ~ carat, data=diamonds)

hist(diamonds$price)

boxplot(diamonds$price)


library(ggplot2)
ggplot(diamonds,aes(x=carat,y=price)) + geom_point()
ggplot(diamonds,aes(x=carat,y=price,color=cut)) + geom_point()
ggplot(diamonds,aes(x=carat,y=price,color=cut)) + geom_point(shape=1)

ggplot(diamonds,aes(x=price)) + geom_histogram()

ggplot(diamonds,aes(x=price)) + geom_histogram(aes(color=cut))
ggplot(diamonds,aes(x=price)) + geom_histogram(aes(fill=cut))
ggplot(diamonds,aes(x=price)) + geom_density(fill='grey')

ggplot(diamonds, aes(x=1, y=price)) + geom_boxplot()

ggplot(diamonds, aes(x=cut, y=price)) + geom_boxplot()

ggplot(diamonds, aes(x=cut,y=price)) +geom_violin() + geom_point()
ggplot(diamonds, aes(x=cut,y=price)) + geom_point()  +geom_violin()
ggplot(diamonds, aes(x=cut,y=price)) + geom_jitter()  +geom_violin()
ggplot(diamonds, aes(x=cut,y=price)) + geom_jitter(alpha=1/4,shape=2)  +geom_violin(alpha=1/2)

g <- ggplot(diamonds,aes(x=carat,y=price))
g
g + geom_point()
g + geom_point(aes(color=cut))
g + geom_point() + facet_wrap(~cut)
g + geom_point() + facet_grid(clarity ~ cut)

library(ggthemes)
g2 <- g +geom_point(aes(color=cut))
g2
g2 + theme_economist()
g2 + theme_economist() + scale_color_economist()
g2 + theme_wsj()
g2+ theme_tufte()
g2 + theme_excel() + scale_color_excel()
g2 + theme_excel()
g2 + theme_facebook()
