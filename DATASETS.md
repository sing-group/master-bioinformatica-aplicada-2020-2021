# Indian Liver Patient Records
> Source: https://www.kaggle.com/uciml/indian-liver-patient-records

```R
data.liver <- read.csv("indian_liver_patient.csv")
data.liver$Dataset <- factor(data.liver$Dataset, levels = c(1,2), labels = c("NO", "YES"))
colnames(data.liver)[11] <- "class"
```

# Pima Indians Diabetes Database
> Source: https://www.kaggle.com/uciml/pima-indians-diabetes-database

```R
data.diabetes <- read.csv("diabetes.csv")
data.diabetes$Outcome <- factor(data.diabetes$Outcome, levels = c(0,1), labels = c("NO", "YES"))
colnames(data.diabetes)[9] <- "class"
data.diabetes[data.diabetes == 0] <- NA
```

# Cardiovascular Disease dataset
> Source: https://www.kaggle.com/sulianova/cardiovascular-disease-dataset

```R
data.cardio <- read.table("cardio_train.csv", sep = ";", header = F)
data.cardio <- data.cardio[,c(2:ncol(data.cardio))]
data.cardio$cardio <- factor(data.cardio$cardio, levels = c(0,1), labels = c("NO", "YES"))
colnames(data.cardio)[12] <- "class"
for(i in 7:11) {
	data.cardio[,i] <- as.factor(data.cardio[,i])
}
```
# Heart Disease UCI
> Source: https://www.kaggle.com/ronitf/heart-disease-uci

```R
data.heart <- read.csv("heart.csv")
colnames(data.heart)[14] <- "class"
data.heart$class <- factor(data.heart$class, levels = c(0,1), labels = c("NO", "YES"))
```

# Hepatitis UCI
> Source: https://archive.ics.uci.edu/ml/machine-learning-databases/hepatitis/
> More info: https://archive.ics.uci.edu/ml/machine-learning-databases/hepatitis/hepatitis.names

```R
data.hepatitis <- read.csv("hepatitis.data")
colnames(data.hepatitis) <- c("class", "age", "sex", "steroid", "antivirals", "fatigue", "malaise", "anorexia", "liver.big", "liver.firm", "spleen.palpable", "spiders", "ascites", "varices", "bilirubin", "alk.phospate", "sgost", "albumin", "protime", "histology")
data.hepatitis$class <- factor(data.hepatitis$class, levels = c(1,2), labels = c("DIE", "LIVE"))
data.hepatitis[data.hepatitis == "?"] <- NA
```
