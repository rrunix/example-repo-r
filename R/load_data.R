# Load the Excel file stored in data/ (this folder is gitignored).
library(readxl)

data_path <- file.path("data", "example.xlsx")

if (!file.exists(data_path)) {
  stop("Data file not found: ", data_path,
       "\nPlace the Excel file in the data/ folder (it is not tracked by git).")
}

excel_sheets(data_path)

df <- read_excel(data_path, sheet = 1)

str(df)
summary(df)
