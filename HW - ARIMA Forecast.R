#PASO 1 CONOCER LA SERIE DE TIEMPO 
AirPassengers
ts.plot(AirPassengers)
#PASO 2: INSTALAR LIBRERIAS
install.packages("forecast")
library(forecast)

#PASO 3: CREAR MODELOS 
modelo_hw = HoltWinters(AirPassengers)
plot(modelo_hw)
modelo_hw

pronos_hw= forecast(modelo_hw,12)
pronos_hw
plot(pronos_hw)

modelo_ari= auto.arima(AirPassengers)
modelo_ari 

pronos_ari= forecast(modelo_ari,12)
pronos_ari
plot(pronos_ari)

#PASO 4: EVALUAR MODELOS
sum(residuals(modelo_hw)^2)
sum(residuals(modelo_ari)^2)
