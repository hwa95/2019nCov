library(devtools)
remotes::install_github("GuangchuangYu/nCov2019")
library(nCov2019)
library(ggplot2)
require(ggrepel)

# library(showtext)
# showtext.auto(enable = TRUE)
# font_add('SimSun', 'simsun.ttc')

n <- load_nCov2019()
gd <- n['广东',]
ggplot(subset(n['广东',], city == "深圳"), 
       aes(time, as.numeric(confirm))) + 
  labs(title = "2019nCov Shenzhen new confirm",x = "date", y = "new confirm") + 
  geom_line(col=1,linetype=1,size=1.3) + geom_col(alpha=0.4) +
  theme(plot.title = element_text(hjust = 0.5))
