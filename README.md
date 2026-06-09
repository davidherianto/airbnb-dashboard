# Airbnb New York City Market and Pricing Analysis

This project investigates the New York City Airbnb market by analyzing over 48,000 listings. This project analyzes by exploring listing distribution across property types and boroughs, as well as pricing patterns throughout the city.

## A. Software Tools
- SQL
- PowerBI

## B. Business Question
- Which boroughs and property types dominate the Airbnb market in New York City?
- How do Airbnb prices vary across boroughs and property types?

## C. Dataset Overview
- The dataset can be downloaded from the following link:  
[Airbnb Dataset (Kaggle)](https://www.kaggle.com/datasets/dgomonov/new-york-city-airbnb-open-data)
- The dataset contains 48,895 records and 16 attributes (columns).

## D. Data Preprocessing
- Missing Value

| Column Name         | Missing Values |
|---------------------|---------------:|
| `name`              | 16             |
| `host_name`         | 21             |
| `last_review`       | 10,052         |
| `reviews_per_month` | 10,052         |

- Duplicate Value  
No duplicate values were found in the id column.

- Outlier Value  
There are 11 listings with a price value of $0. These records were considered invalid, as it is highly unlikely that Airbnb hosts would offer their properties for rent at no cost per night.

## E. Key Insights
- Manhattan records the largest concentration of Airbnb listings in New York City. Its popularity can be linked to its strong tourism appeal, well-developed transportation network, and higher income potential for hosts compared to other boroughs.
- Among all boroughs, Manhattan commands the highest average listing price, positioning it as the most premium market within New York City's Airbnb ecosystem.
- Entire home/apartment listings generate the highest average prices and also constitute the largest portion of available properties, highlighting a strong preference for private accommodations among guests.
- Brooklyn remains a major Airbnb market with a substantial number of listings, closely competing with Manhattan. Despite its large market size, Brooklyn offers more affordable average prices, making it a cost-effective alternative for visitors.

## F. Dashboard
<img width="1387" height="767" alt="projectimage01" src="https://github.com/user-attachments/assets/2fd0cf9d-6aad-4e97-a2b1-e8c5b78722ba" />

## G. Recommendation
- Manhattan may be a promising market for short-term rental investments due to its strong listing demand and premium pricing potential. The area's popularity among tourists can further support revenue growth. To remain competitive, hosts should differentiate their properties by offering high-quality amenities and a superior guest experience, especially within the entire home/apartment segment.
- Brooklyn presents an attractive alternative for investors seeking a balance between market demand and affordability. With a substantial number of listings and lower average prices than Manhattan, it offers opportunities to enter a highly active market at a more competitive price level.
- Investing in entire home/apartment properties may yield greater revenue potential, as this category commands the highest average prices. However, the large number of listings in this segment requires hosts to focus on property quality, comfort, and value-added services to stand out from competitors.
- Despite having the smallest share of listings, the shared room segment may still offer untapped opportunities. Enhancing guest satisfaction through improved services, facilities, and overall accommodation experience could help strengthen its market appeal.

