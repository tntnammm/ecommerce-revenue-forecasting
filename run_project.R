dir.create("../images", showWarnings = FALSE)
dir.create("../reports", showWarnings = FALSE)

rmarkdown::render(
  input = "notebooks/ecomerce_timeseries.Rmd",
  output_file = "Ecommerce_Revenue_Forecasting.html",
  output_dir = "../reports"
)

cat("Project completed successfully!\n")