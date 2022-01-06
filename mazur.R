library(ggplot2)
M1 <- 2047 
M2 <- 1156.57
#d1 <- 30
#d2 <- 30
K <- 1
#K2 <- 0.05
#V1 <- M1/(1+K1*d1)
#V2 <- M2/(1+K2*d2)
#t <- 10
#V1
#V2

df <- data.frame(Tiempo <- c(seq(1:10) as Tiempo),
                 V1 <- M1/(1+K*c(seq(1:10))),
                 V2 <- M2/(1+K*c(seq(1:10))))


colnames(df)<- c("Tiempo", "Valor_1", "Valor_2")
df
## Graficando que es gerundio


ggplot(df, aes(x = Tiempo)) +
  geom_line(aes(y = V1, colour = "Reforzador1"))+
  geom_line(aes(y = V2, colour = "Reforzador2"))+
  scale_color_manual("Group",
                     values= c("Reforzador1" = "red","Reforzador2" = "#044CFF")) +
  theme(panel.background = element_rect(color = "black", # Border color
                                        size = 2, fill = "#9d8ec1"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+ 
  geom_label(aes(x = 8.0, y = 2.75, label = "V=M/(1+K*d)"), 
             fill = "white", label.size = NA, size = 11)+
  labs(title = "Valor de reforzadores. Mazur y Longue(1978)")

