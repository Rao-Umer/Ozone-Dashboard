# 🌫️ Ozone Dashboard (Shiny App)

A simple yet visually appealing interactive dashboard built with **R Shiny** to explore ozone level data from the built-in `airquality` dataset.

This project focuses on presenting environmental data in a clean UI while allowing users to interact with distributions and summaries in real time.

---

## 📊 Overview

The dashboard provides a quick analysis of ozone levels through:

* Key summary statistics (Average, Maximum, Minimum)
* Adjustable histogram visualization
* Data preview table

Everything updates dynamically based on user input, making it easy to explore how ozone values are distributed.

---

## ⚙️ Features

* 🎨 Dark-themed UI using `shinythemes`
* 📈 Interactive histogram with adjustable bins
* 📌 Real-time summary statistics
* 📋 Clean data preview section
* 💡 Simple and lightweight design

---

## 🧠 Dataset

The app uses the built-in **`airquality`** dataset in R.

It contains daily air quality measurements in New York, including:

* Ozone levels
* Solar radiation
* Wind speed
* Temperature

Missing ozone values are automatically removed for accurate calculations.

---

## 🚀 How to Run

1. Install required packages:

```r
install.packages("shiny")
install.packages("shinythemes")
```

2. Run the app:

```r
shiny::runApp()
```

Or simply open the script in RStudio / Posit Cloud and click **Run App**.

---

## 🖥️ Project Structure

```
Ozone-Dashboard/
│── app.R        # Main Shiny application
│── README.md    # Project documentation
```

---

## 🎛️ How It Works

* A **reactive function** filters out missing ozone values
* Summary statistics are calculated dynamically
* Histogram bins adjust based on the slider input
* Tabs separate overview and raw data for better UX

---

## 🎯 Purpose

This project was created to:

* Practice **R Shiny development**
* Understand **reactive programming**
* Build a clean and interactive **data visualization dashboard**

---

## 📸 Preview

Simple dashboard layout with:

* Top summary cards
* Histogram visualization
* Data table tab

---

## 🛠️ Tech Stack

* **R**
* **Shiny**
* **Shinythemes**
