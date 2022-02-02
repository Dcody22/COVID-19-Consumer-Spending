
model_data <- read_csv("Desktop/COVID_Spending/Monthly_Data/Repo/COVID_Spending.csv")

#COVID-19 effect on total consumer spending
describe(model_data)
model_1 = lm(Total_Spending~log(Unemployment) + log(Personal_Income), data = model_data)
summary(model_1)

model_2 = lm(Total_Spending~log(Unemployment) + log(Personal_Income) + New_Cases , data = model_data)
summary(model_2)

#Does COVID have an even effect across goods and services? 
model_3 = lm(Goods~log(Unemployment) + log(Personal_Income) + New_Cases , data = model_data)
summary(model_2)
model_3_1 = lm(Goods~log(Unemployment) + log(Personal_Income) , data = model_data)
summary(model_3_1)

model_4 = lm(Services~log(Unemployment) + log(Personal_Income) + New_Cases , data = model_data)
summary(model_4)
model_4_1 = lm(Services~log(Unemployment) + log(Personal_Income), data = model_data)
summary(model_4_1)




