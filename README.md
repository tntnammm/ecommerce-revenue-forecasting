# E-commerce Revenue Forecasting using ARIMA and LSTM

## Overview

Forecasting future revenue is a critical task for e-commerce businesses. Accurate forecasts support inventory planning, marketing budget allocation, demand management, and strategic decision-making.

This project develops and compares two forecasting approaches:

* **ARIMA (AutoRegressive Integrated Moving Average)** – a traditional statistical time-series model.
* **LSTM (Long Short-Term Memory)** – a deep learning model designed for sequential data.

Using the UCI Online Retail dataset containing over **500,000 transaction records**, this project builds an end-to-end forecasting pipeline from raw transaction data to future revenue prediction.

---

## Business Problem

E-commerce companies often experience fluctuations in revenue due to seasonality, promotions, customer behavior, and market trends.

The objective of this project is to answer:

> Can historical transaction data be used to accurately forecast future weekly revenue?

The resulting forecasts can support:

* Inventory planning
* Marketing budget allocation
* Operational resource planning
* Revenue target estimation

---

## Dataset

**Source:** UCI Machine Learning Repository

Dataset: Online Retail

Characteristics:

* ~541,000 transaction records
* United Kingdom-based online retailer
* Period: December 2010 – December 2011
* Features include:

  * Invoice Number
  * Product Description
  * Quantity
  * Invoice Date
  * Unit Price
  * Customer ID
  * Country

Revenue is calculated as:

Revenue = Quantity × UnitPrice

---

## Project Workflow

### 1. Data Cleaning

* Removed cancelled transactions
* Removed negative quantities
* Removed invalid prices
* Parsed transaction timestamps
* Generated revenue feature

### 2. Time Series Aggregation

Revenue was aggregated into:

* Weekly revenue series
* Monthly revenue series

### 3. Exploratory Data Analysis (EDA)

Performed:

* Trend analysis
* Revenue distribution analysis
* Weekly and monthly revenue visualization
* LOESS trend smoothing

### 4. Stationarity Testing

Applied:

* Augmented Dickey-Fuller (ADF) Test
* Differencing transformation
* ACF/PACF diagnostics

### 5. ARIMA Modeling

Steps:

* Grid Search for optimal (p,d,q)
* AIC-based model selection
* Residual diagnostics
* Ljung-Box white-noise testing

### 6. LSTM Modeling

Deep learning workflow:

* Min-Max normalization
* Sequence generation
* Multi-layer LSTM architecture
* Dropout regularization
* Forecast generation

### 7. Model Evaluation

Models were compared using:

* MAE (Mean Absolute Error)
* RMSE (Root Mean Squared Error)
* MAPE (Mean Absolute Percentage Error)

### 8. Future Revenue Forecasting

Generated revenue forecasts for the next 8 weeks using both ARIMA and LSTM models.

---

## Repository Structure

```text
ecommerce-revenue-forecasting/
│
├── data/
│   └── online_retail.csv
│
├── notebooks/
│   └── ecommerce_timeseries.Rmd
│
├── images/
│   ├── revenue_trend.png
│   ├── monthly_revenue.png
│   ├── stationarity_check.png
│   ├── arima_forecast.png
│   ├── lstm_learning_curve.png
│   ├── model_comparison.png
│   └── forecast_8weeks.png
│
├── reports/
│   └── Ecommerce_Revenue_Forecasting.html
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

## Technologies

### Programming

* R

### Data Processing

* dplyr
* readr
* lubridate

### Visualization

* ggplot2
* gridExtra

### Time Series Analysis

* forecast
* tseries

### Deep Learning

* keras
* TensorFlow

### Reporting

* R Markdown

---

## Key Visualizations

### Revenue Trend Analysis

![Revenue Trend](images/revenue_trend.png)

### Stationarity Diagnostics

![Stationarity](images/stationarity_check.png)

### ARIMA Forecast

![ARIMA Forecast](images/arima_forecast.png)

### Model Comparison

![Model Comparison](images/model_comparison.png)

### Revenue Forecast

![Forecast](images/forecast_8weeks.png)

---

## Results

The project evaluates both statistical and deep learning forecasting approaches and highlights their strengths and limitations in modeling e-commerce revenue dynamics.

Performance metrics include:

| Model | MAE | RMSE | MAPE |
|---------|---------:|---------:|---------:|
| ARIMA(2,1,2) | 63,914 | 76,347 | 154.96% |
| LSTM | 72,806 | 80,964 | 154.83% |

## Key Findings

- ARIMA achieved lower MAE and RMSE than LSTM.
- LSTM produced a slightly lower MAPE.
- Both models faced challenges due to the high volatility and limited length of the historical revenue series.
- ARIMA demonstrated stronger performance for this dataset despite its simpler statistical structure.

---

## Business Impact

This forecasting framework can be applied to:

* Revenue planning
* Inventory management
* Demand forecasting
* Marketing campaign budgeting
* Strategic decision-making

By leveraging historical transaction data, organizations can proactively prepare for future demand fluctuations and optimize operational resources.

---

## Future Improvements

Potential extensions include:

* Facebook Prophet
* XGBoost Forecasting
* External Economic Indicators
* Holiday Effects
* Hyperparameter Optimization
* Interactive Shiny Dashboard Deployment
* Cloud-based Model Serving

---

## Author

**Tran Nguyen Thanh Nam**

Data Science Student with interests in:

* Machine Learning
* Deep Learning
* Time Series Forecasting
* Business Analytics
* Data Visualization

GitHub:
https://github.com/tntnammm
