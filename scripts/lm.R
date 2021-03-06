## Regressões: Final ~ Basal + Vitamina(??)
# VITAMINA D
png("../figuras/scatterplots-vitaminad.png")
par(mfrow=c(1,1))

fit.vit<-lm(VITAMINAD.FINAL~VITAMINAD.BASAL)
summary(fit.vit)
plot(VITAMINAD.BASAL,VITAMINAD.FINAL,main="Vitamina D",xlab="Basal",ylab="Final")
abline(fit.vit, lwd=2, col="blue")

dev.off()

png("../figuras/scatterplots-marcadores.png")
par(mfrow=c(2,3))

# ADIPONECTINA
fit.adp<-lm(ADIPONECTINA.FINAL~ADIPONECTINA.BASAL)
summary(fit.adp)
plot(ADIPONECTINA.BASAL,ADIPONECTINA.FINAL,main="Adiponectina",xlab="Basal",ylab="Final")
abline(fit.adp, lwd=2, col="blue")

# CTX
fit.ctx<-lm(CTX.FINAL~CTX.BASAL)
summary(fit.ctx)
plot(CTX.BASAL,CTX.FINAL,main="CTX",xlab="Basal",ylab="Final")
abline(fit.ctx, lwd=2, col="blue")

# FAO
fit.fao<-lm(FAO.FINAL~FAO.BASAL)
summary(fit.fao)
plot(FAO.BASAL,FAO.FINAL,main="FAO",xlab="Basal",ylab="Final")
abline(fit.fao, lwd=2, col="blue")

#LEPTINA
fit.lep<-lm(LEPTINA.FINAL~LEPTINA.BASAL)
summary(fit.lep)
plot(LEPTINA.BASAL,LEPTINA.FINAL,main="Leptina",xlab="Basal",ylab="Final")
abline(fit.lep, lwd=2, col="blue")

# OSTEOPROTEGERINA
fit.opg<-lm(OPG.FINAL~OPG.BASAL)
summary(fit.opg)
plot(OPG.BASAL,OPG.FINAL,main="OPG",xlab="Basal",ylab="Final")
abline(fit.opg, lwd=2, col="blue")

# TNFALFA
fit.tnf<-lm(TNFALFA.FINAL~TNFALFA.BASAL)
summary(fit.tnf)
plot(TNFALFA.BASAL,TNFALFA.FINAL,main="TNF-alfa",xlab="Basal",ylab="Final")
abline(fit.tnf, lwd=2, col="blue")

dev.off()

## Busca de regressão múltipla
# bigfit<-lm(CALCIO.FINAL ~ OPG.BASAL + OPG.FINAL + VITAMINA.D.FINAL + VITAMINA.D.BASAL + ADIPONECTINA.BASAL + ADIPONECTINA.FINAL + CTX.BASAL + CTX.FINAL + FAO.BASAL + FAO.FINAL + LEPTINA.BASAL + LEPTINA.FINAL + TNF.ALFA.BASAL + TNF.ALFA.FINAL)
# summary(bigfit)

## Teste de Breuch Pagan (heterocedasticidade)
library(lmtest)
bptest(fit.vit)
bptest(fit.adp)
bptest(fit.ctx)
bptest(fit.fao)
bptest(fit.lep)
bptest(fit.opg)
bptest(fit.tnf)
