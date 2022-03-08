view: Store_and_Web_Sales_Analysis {
    label: "Store and Web Sales Analysis"
    sql_table_name: "Looker Demo"."Store and Web Sales Analysis";;
    dimension: Ss_Ticket_Number {
        label: "SS Ticket Number"
        type: number
        sql: ${TABLE}.`Ss_Ticket_Number`;;
    }

    dimension: Ws_Order_Number {
        label: "WS Order Number"
        type: number
        sql: ${TABLE}.`Ws_Order_Number`;;
    }

    dimension: d_c_preferred_cust_flag {
        label: "Preferred Customer Ind"
        group_label: "Customer Information"
        type: string
        sql: ${TABLE}.`d_c_preferred_cust_flag`;;
    }

    dimension: d_cd_credit_rating {
        label: "Credit Rating"
        group_label: "Customer Information"
        type: string
        sql: ${TABLE}.`d_cd_credit_rating`;;
    }

    dimension: d_cd_education_status {
        label: "Education Status"
        group_label: "Customer Information"
        type: string
        sql: ${TABLE}.`d_cd_education_status`;;
    }

    dimension: d_cd_gender {
        label: "Gender"
        group_label: "Customer Information"
        type: string
        sql: ${TABLE}.`d_cd_gender`;;
    }

    dimension: d_cd_marital_status {
        label: "Marital Status"
        group_label: "Customer Information"
        type: string
        sql: ${TABLE}.`d_cd_marital_status`;;
    }

    dimension: Customer_Dimension_Customer_City {
        label: "  Customer City"
        group_label: "Customer Information.Customer Dimension"
        type: string
        sql: ${TABLE}.`Customer City`;;
        drill_fields: [Customer_Dimension]
    }

    dimension: Customer_Dimension_Customer_Country {
        label: "     Customer Country"
        group_label: "Customer Information.Customer Dimension"
        type: string
        sql: ${TABLE}.`Customer Country`;;
        drill_fields: [Customer_Dimension_Customer_State]
    }

    dimension: Customer_Dimension_Customer_County {
        label: "   Customer County"
        group_label: "Customer Information.Customer Dimension"
        type: string
        sql: ${TABLE}.`Customer County`;;
        drill_fields: [Customer_Dimension_Customer_City]
    }

    dimension: Customer_Dimension {
        label: " Customer Number"
        group_label: "Customer Information.Customer Dimension"
        type: number
        sql: ${TABLE}.`Customer Dimension`;;
    }

    dimension: Customer_Dimension_Customer_State {
        label: "    Customer State"
        group_label: "Customer Information.Customer Dimension"
        type: string
        sql: ${TABLE}.`Customer State`;;
        drill_fields: [Customer_Dimension_Customer_County]
    }

    dimension: Ship_d_d_day_name {
        label: "Ship Day Name"
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}.`Ship d_d_day_name`;;
    }

    dimension: Ship_d_d_following_holiday {
        label: "Ship Following Holiday Indicator"
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}.`Ship d_d_following_holiday`;;
    }

    dimension: Ship_d_d_holiday {
        label: "Ship Holiday Indicator"
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}.`Ship d_d_holiday`;;
    }

    dimension: Ship_d_d_weekend {
        label: "Ship Weekend Indicator"
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}.`Ship d_d_weekend`;;
    }

    dimension: Sold_d_d_day_name {
        label: "Sold Day Name"
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}.`Sold d_d_day_name`;;
    }

    dimension: Sold_d_d_following_holiday {
        label: "Sold Following Holiday Indicator"
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}.`Sold d_d_following_holiday`;;
    }

    dimension: Sold_d_d_holiday {
        label: "Sold Holiday Indicator"
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}.`Sold d_d_holiday`;;
    }

    dimension: Sold_d_d_weekend {
        label: "Sold Weekend Indicator"
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}.`Sold d_d_weekend`;;
    }

    dimension: Time_Dimension_Ship_Calendar_Month {
        label: "  Ship Calendar Month"
        group_label: "Date Attributes.Ship Time Dimension"
        type: date_month
        sql: ${TABLE}.`Ship Calendar Month`;;
        drill_fields: [Time_Dimension_Ship_Time_Dimension]
    }

    dimension: Time_Dimension_Ship_Calendar_Quarter {
        label: "   Ship Calendar Quarter"
        group_label: "Date Attributes.Ship Time Dimension"
        type: date_quarter
        sql: ${TABLE}.`Ship Calendar Quarter`;;
        drill_fields: [Time_Dimension_Ship_Calendar_Month]
    }

    dimension: Time_Dimension_Ship_Calendar_Year {
        label: "    Ship Calendar Year"
        group_label: "Date Attributes.Ship Time Dimension"
        type: date_year
        sql: ${TABLE}.`Ship Calendar Year`;;
        drill_fields: [Time_Dimension_Ship_Calendar_Quarter]
    }

    dimension: Time_Dimension_Ship_Time_Dimension {
        label: " Ship Date"
        group_label: "Date Attributes.Ship Time Dimension"
        type: date
        sql: ${TABLE}.`Ship Time Dimension`;;
    }

    dimension: Time_Dimension_Sold_Calendar_Month {
        label: "  Sold Calendar Month"
        group_label: "Date Attributes.Sold Time Dimension"
        type: date_month
        sql: ${TABLE}.`Sold Calendar Month`;;
        drill_fields: [Time_Dimension_Sold_Time_Dimension]
    }

    dimension: Time_Dimension_Sold_Calendar_Quarter {
        label: "   Sold Calendar Quarter"
        group_label: "Date Attributes.Sold Time Dimension"
        type: date_quarter
        sql: ${TABLE}.`Sold Calendar Quarter`;;
        drill_fields: [Time_Dimension_Sold_Calendar_Month]
    }

    dimension: Time_Dimension_Sold_Calendar_Year {
        label: "    Sold Calendar Year"
        group_label: "Date Attributes.Sold Time Dimension"
        type: date_year
        sql: ${TABLE}.`Sold Calendar Year`;;
        drill_fields: [Time_Dimension_Sold_Calendar_Quarter]
    }

    dimension: Time_Dimension_Sold_Time_Dimension {
        label: " Sold Date"
        group_label: "Date Attributes.Sold Time Dimension"
        type: date
        sql: ${TABLE}.`Sold Time Dimension`;;
    }

    dimension: Fulfilling_Warehouse {
        label: " Warehouse Number"
        group_label: "Fulfillment.Fulfilling Warehouse"
        type: number
        sql: ${TABLE}.`Fulfilling Warehouse`;;
    }

    dimension: Fulfilling_Warehouse_Warehouse_City {
        label: "  Warehouse City"
        group_label: "Fulfillment.Fulfilling Warehouse"
        type: string
        sql: ${TABLE}.`Warehouse City`;;
        drill_fields: [Fulfilling_Warehouse]
    }

    dimension: Fulfilling_Warehouse_Warehouse_Country {
        label: "     Warehouse Country"
        group_label: "Fulfillment.Fulfilling Warehouse"
        type: string
        sql: ${TABLE}.`Warehouse Country`;;
        drill_fields: [Fulfilling_Warehouse_Warehouse_State]
    }

    dimension: Fulfilling_Warehouse_Warehouse_County {
        label: "   Warehouse County"
        group_label: "Fulfillment.Fulfilling Warehouse"
        type: string
        sql: ${TABLE}.`Warehouse County`;;
        drill_fields: [Fulfilling_Warehouse_Warehouse_City]
    }

    dimension: Fulfilling_Warehouse_Warehouse_State {
        label: "    Warehouse State"
        group_label: "Fulfillment.Fulfilling Warehouse"
        type: string
        sql: ${TABLE}.`Warehouse State`;;
        drill_fields: [Fulfilling_Warehouse_Warehouse_County]
    }

    dimension: Ship_Mode_Carrier {
        label: "  Carrier"
        group_label: "Fulfillment.Ship Mode"
        type: string
        sql: ${TABLE}.`Carrier`;;
    }

    dimension: Ship_Mode_Ship_Mode_Type {
        label: "   Ship Mode Type"
        group_label: "Fulfillment.Ship Mode"
        type: string
        sql: ${TABLE}.`Ship Mode Type`;;
        drill_fields: [Ship_Mode_Carrier]
    }

    dimension: Ship_Mode_Ship_Mode_1 {
        label: "    Ship Mode"
        group_label: "Fulfillment.Ship Mode"
        type: string
        sql: ${TABLE}.`Ship Mode_1`;;
        drill_fields: [Ship_Mode_Ship_Mode_Type]
    }

    dimension: d_hd_buy_potential {
        label: "Buy Potential"
        group_label: "Household Demographics"
        type: string
        sql: ${TABLE}.`d_hd_buy_potential`;;
    }

    dimension: d_hd_dep_count {
        label: "Dependents Count"
        group_label: "Household Demographics"
        type: number
        sql: ${TABLE}.`d_hd_dep_count`;;
    }

    dimension: d_hd_vehicle_count {
        label: "Vehicle Count"
        group_label: "Household Demographics"
        type: number
        sql: ${TABLE}.`d_hd_vehicle_count`;;
    }

    dimension: d_income_band {
        label: "Income Band"
        group_label: "Household Demographics"
        type: string
        sql: ${TABLE}.`d_income_band`;;
    }

    dimension: d_I_ITEM_DESC {
        label: "Product Description"
        group_label: "Product Attributes"
        type: string
        sql: ${TABLE}.`d_I_ITEM_DESC`;;
    }

    dimension: d_i_color {
        label: "Product Color"
        group_label: "Product Attributes"
        type: string
        sql: ${TABLE}.`d_i_color`;;
    }

    dimension: d_i_size {
        label: "Product Size"
        group_label: "Product Attributes"
        type: string
        sql: ${TABLE}.`d_i_size`;;
    }

    dimension: Product_Dimension_I_Category {
        label: "    Product Category"
        group_label: "Product Attributes.Product Dimension"
        type: string
        sql: ${TABLE}.`I Category`;;
        drill_fields: [Product_Dimension_Product_Class]
    }

    dimension: Product_Dimension_Product_Brand {
        label: "  Product Brand"
        group_label: "Product Attributes.Product Dimension"
        type: string
        sql: ${TABLE}.`Product Brand`;;
        drill_fields: [Product_Dimension]
    }

    dimension: Product_Dimension_Product_Class {
        label: "   Product Class"
        group_label: "Product Attributes.Product Dimension"
        type: string
        sql: ${TABLE}.`Product Class`;;
        drill_fields: [Product_Dimension_Product_Brand]
    }

    dimension: Product_Dimension {
        label: " Product SKU"
        group_label: "Product Attributes.Product Dimension"
        type: number
        sql: ${TABLE}.`Product Dimension`;;
    }

    dimension: d_p_channel_catalog {
        label: "Catalog Indicator"
        group_label: "Promotion Attributes"
        type: string
        sql: ${TABLE}.`d_p_channel_catalog`;;
    }

    dimension: d_p_channel_demo {
        label: "Demo Indicator"
        group_label: "Promotion Attributes"
        type: string
        sql: ${TABLE}.`d_p_channel_demo`;;
    }

    dimension: d_p_channel_dmail {
        label: "Direct Mail Indicator"
        group_label: "Promotion Attributes"
        type: string
        sql: ${TABLE}.`d_p_channel_dmail`;;
    }

    dimension: d_p_channel_email {
        label: "Email Indicator"
        group_label: "Promotion Attributes"
        type: string
        sql: ${TABLE}.`d_p_channel_email`;;
    }

    dimension: d_p_channel_event {
        label: "Event Indicator"
        group_label: "Promotion Attributes"
        type: string
        sql: ${TABLE}.`d_p_channel_event`;;
    }

    dimension: d_p_channel_press {
        label: "Press Indicator"
        group_label: "Promotion Attributes"
        type: string
        sql: ${TABLE}.`d_p_channel_press`;;
    }

    dimension: d_p_channel_radio {
        label: "Radio Indicator"
        group_label: "Promotion Attributes"
        type: string
        sql: ${TABLE}.`d_p_channel_radio`;;
    }

    dimension: d_p_channel_tv {
        label: "TV Indicator"
        group_label: "Promotion Attributes"
        type: string
        sql: ${TABLE}.`d_p_channel_tv`;;
    }

    dimension: Promotions_Promo_Active_Indicator {
        label: "  Promo Active Indicator"
        group_label: "Promotion Attributes.Promotions"
        type: string
        sql: ${TABLE}.`Promo Active Indicator`;;
        drill_fields: [Promotions]
    }

    dimension: Promotions {
        label: " Promotion"
        group_label: "Promotion Attributes.Promotions"
        type: string
        sql: ${TABLE}.`Promotions`;;
    }

    dimension: d_s_floor_space {
        label: "Store Floor Space"
        group_label: "Store Attributes"
        type: number
        sql: ${TABLE}.`d_s_floor_space`;;
    }

    dimension: d_s_hours {
        label: "Store Hours"
        group_label: "Store Attributes"
        type: string
        sql: ${TABLE}.`d_s_hours`;;
    }

    dimension: d_s_manager {
        label: "Store Manager"
        group_label: "Store Attributes"
        type: string
        sql: ${TABLE}.`d_s_manager`;;
    }

    dimension: d_s_number_employees {
        label: "Store Number of Employees"
        group_label: "Store Attributes"
        type: number
        sql: ${TABLE}.`d_s_number_employees`;;
    }

    dimension: Store_Dimension_City {
        label: "  City"
        group_label: "Store Attributes.Store Dimension"
        type: string
        sql: ${TABLE}.`City`;;
        drill_fields: [Store_Dimension]
    }

    dimension: Store_Dimension_Country {
        label: "     Country"
        group_label: "Store Attributes.Store Dimension"
        type: string
        sql: ${TABLE}.`Country`;;
        drill_fields: [Store_Dimension_State1]
    }

    dimension: Store_Dimension_County {
        label: "   County"
        group_label: "Store Attributes.Store Dimension"
        type: string
        sql: ${TABLE}.`County`;;
        drill_fields: [Store_Dimension_City]
    }

    dimension: Store_Dimension_State1 {
        label: "    State"
        group_label: "Store Attributes.Store Dimension"
        type: string
        sql: ${TABLE}.`State1`;;
        drill_fields: [Store_Dimension_County]
    }

    dimension: Store_Dimension {
        label: " Store Number"
        group_label: "Store Attributes.Store Dimension"
        type: number
        sql: ${TABLE}.`Store Dimension`;;
    }


    measure: m_SS_COUPON_AMT_sum {
        label: "YOUSSEF"
        type: sum
        sql: ${TABLE}.`m_SS_COUPON_AMT_sum`;;
    }

    measure: Average_Unit_Net_Profit {
        label: "Average Unit Net Profit"
        group_label: "Store Sales Measures"
        type: average
        sql: ${TABLE}.`Average Unit Net Profit`;;
    }

    measure: m_ss_ext_discount_amt_sum {
        label: "Ext Discount Amount"
        group_label: "Store Sales Measures"
        description: "store_sales.ss_ext_discount_amt_sum"
        type: sum
        sql: ${TABLE}.`m_ss_ext_discount_amt_sum`;;
    }

    measure: m_ss_ext_list_price_sum {
        label: "Ext List Price"
        group_label: "Store Sales Measures"
        description: "store_sales.ss_ext_list_price_sum"
        type: sum
        sql: ${TABLE}.`m_ss_ext_list_price_sum`;;
    }

    measure: Ext_Sales_Growth___Previous_Period__Sold_ {
        label: "Ext Sales Growth - Previous Period (Sold)"
        group_label: "Store Sales Measures"
        type: average
        sql: ${TABLE}.`Ext Sales Growth - Previous Period (Sold)`;;
    }

    measure: m_ss_ext_sales_price_sum {
        label: "Ext Sales Price"
        group_label: "Store Sales Measures"
        description: "store_sales.ss_ext_sales_price_sum"
        drill_fields: [Store_Sales_Tickets*]
        type: sum
        sql: ${TABLE}.`m_ss_ext_sales_price_sum`;;
    }

    measure: m_ss_ext_tax_sum {
        label: "Ext Sales Tax"
        group_label: "Store Sales Measures"
        description: "store_sales.ss_ext_tax_sum"
        type: sum
        sql: ${TABLE}.`m_ss_ext_tax_sum`;;
    }

    measure: m_ss_ext_wholesale_cost_sum {
        label: "Ext Wholesale Cost"
        group_label: "Store Sales Measures"
        description: "store_sales.ss_ext_wholesale_cost_sum"
        type: sum
        sql: ${TABLE}.`m_ss_ext_wholesale_cost_sum`;;
    }

    measure: m_ss_net_paid_sum {
        label: "Net Paid Amount"
        group_label: "Store Sales Measures"
        description: "store_sales.ss_net_paid_sum"
        type: sum
        sql: ${TABLE}.`m_ss_net_paid_sum`;;
    }

    measure: m_ss_net_paid_inc_tax_sum {
        label: "Net Paid Incl Tax"
        group_label: "Store Sales Measures"
        description: "store_sales.ss_net_paid_inc_tax_sum"
        type: sum
        sql: ${TABLE}.`m_ss_net_paid_inc_tax_sum`;;
    }

    measure: m_ss_net_profit_sum {
        label: "Net Profit"
        group_label: "Store Sales Measures"
        description: "store_sales.ss_net_profit_sum"
        type: sum
        sql: ${TABLE}.`m_ss_net_profit_sum`;;
    }

    measure: Previous_Period_Ext_Sales_Price__Sold_ {
        label: "Previous Period Ext Sales Price (Sold)"
        group_label: "Store Sales Measures"
        type: average
        sql: ${TABLE}.`Previous Period Ext Sales Price (Sold)`;;
    }

    measure: m_ss_quantity_sum {
        label: "Quantity Sold"
        group_label: "Store Sales Measures"
        description: "store_sales.ss_quantity_sum"
        drill_fields: [Store_Sales_Tickets*]
        type: sum
        sql: ${TABLE}.`m_ss_quantity_sum`;;
    }

    measure: m_SS_EXT_SALES_PRICE_avg {
        label: "Store Average Ext Sales Price"
        group_label: "Store Sales Measures"
        type: average
        sql: ${TABLE}.`m_SS_EXT_SALES_PRICE_avg`;;
    }

    measure: m_SS_CUSTOMER_SK_distinct_est {
        label: "Store Customer Count Estimate"
        group_label: "Store Sales Measures"
        type: count_distinct
        sql: ${TABLE}.`m_SS_CUSTOMER_SK_distinct_est`;;
    }

    measure: m_SS_NET_PROFIT_max {
        label: "Store Max Net Profit"
        group_label: "Store Sales Measures"
        type: max
        sql: ${TABLE}.`m_SS_NET_PROFIT_max`;;
    }

    measure: m_SS_Row_Counter_sum {
        label: "Store Sales Row Counter"
        group_label: "Store Sales Measures"
        type: sum
        sql: ${TABLE}.`m_SS Row Counter_sum`;;
    }

    measure: Total__Ext_Sales_Price {
        label: "Total  Ext Sales Price"
        group_label: "Total Sales Measures"
        type: average
        sql: ${TABLE}.`Total  Ext Sales Price`;;
    }

    measure: Total_Ext_Discount_Amount {
        label: "Total Ext Discount Amount"
        group_label: "Total Sales Measures"
        type: average
        sql: ${TABLE}.`Total Ext Discount Amount`;;
    }

    measure: Total_Ext_List_Price {
        label: "Total Ext List Price"
        group_label: "Total Sales Measures"
        type: average
        sql: ${TABLE}.`Total Ext List Price`;;
    }

    measure: Total_Ext_Sales_Tax {
        label: "Total Ext Sales Tax"
        group_label: "Total Sales Measures"
        type: average
        sql: ${TABLE}.`Total Ext Sales Tax`;;
    }

    measure: Total_Ext_Wholesale_Cost {
        label: "Total Ext Wholesale Cost"
        group_label: "Total Sales Measures"
        type: average
        sql: ${TABLE}.`Total Ext Wholesale Cost`;;
    }

    measure: Total_Net_Paid_Amount {
        label: "Total Net Paid Amount"
        group_label: "Total Sales Measures"
        type: average
        sql: ${TABLE}.`Total Net Paid Amount`;;
    }

    measure: Total_Net_Paid_Incl_Tax {
        label: "Total Net Paid Incl Tax"
        group_label: "Total Sales Measures"
        type: average
        sql: ${TABLE}.`Total Net Paid Incl Tax`;;
    }

    measure: Total_Net_Profit {
        label: "Total Net Profit"
        group_label: "Total Sales Measures"
        type: average
        sql: ${TABLE}.`Total Net Profit`;;
    }

    measure: Total_Quantity_Sold {
        label: "Total Quantity Sold"
        group_label: "Total Sales Measures"
        type: average
        sql: ${TABLE}.`Total Quantity Sold`;;
    }

    measure: Average_Web_Unit_Net_Profit {
        label: "Average Web Unit Net Profit"
        group_label: "Web Sales Measures"
        type: average
        sql: ${TABLE}.`Average Web Unit Net Profit`;;
    }

    measure: TEST_DEMO {
        label: "TEST DEMO"
        group_label: "Web Sales Measures"
        type: sum
        sql: ${TABLE}.`TEST DEMO`;;
    }

    measure: m_WS_EXT_SALES_PRICE_avg {
        label: "Web Average Ext Sales Price"
        group_label: "Web Sales Measures"
        type: average
        sql: ${TABLE}.`m_WS_EXT_SALES_PRICE_avg`;;
    }

    measure: m_WS_BILL_CUSTOMER_SK_distinct_est {
        label: "Web Customer Count Estimate"
        group_label: "Web Sales Measures"
        type: count_distinct
        sql: ${TABLE}.`m_WS_BILL_CUSTOMER_SK_distinct_est`;;
    }

    measure: m_ws_ext_discount_amt_sum {
        label: "Web Ext Discount Amount"
        group_label: "Web Sales Measures"
        description: "web_sales.ws_ext_discount_amt_sum"
        type: sum
        sql: ${TABLE}.`m_ws_ext_discount_amt_sum`;;
    }

    measure: m_ws_ext_list_price_sum {
        label: "Web Ext List Price"
        group_label: "Web Sales Measures"
        description: "web_sales.ws_ext_list_price_sum"
        type: sum
        sql: ${TABLE}.`m_ws_ext_list_price_sum`;;
    }

    measure: m_ws_ext_sales_price_sum {
        label: "Web Ext Sales Price"
        group_label: "Web Sales Measures"
        description: "web_sales.ws_ext_sales_price_sum"
        drill_fields: [Web_Sales_Orders*]
        type: sum
        sql: ${TABLE}.`m_ws_ext_sales_price_sum`;;
    }

    measure: m_ws_ext_tax_sum {
        label: "Web Ext Sales Tax"
        group_label: "Web Sales Measures"
        description: "web_sales.ws_ext_tax_sum"
        type: sum
        sql: ${TABLE}.`m_ws_ext_tax_sum`;;
    }

    measure: m_ws_ext_ship_cost_sum {
        label: "Web Ext Ship Cost"
        group_label: "Web Sales Measures"
        description: "web_sales.ws_ext_ship_cost_sum"
        type: sum
        sql: ${TABLE}.`m_ws_ext_ship_cost_sum`;;
    }

    measure: m_ws_ext_wholesale_cost_sum {
        label: "Web Ext Wholesale Cost"
        group_label: "Web Sales Measures"
        description: "web_sales.ws_ext_wholesale_cost_sum"
        type: sum
        sql: ${TABLE}.`m_ws_ext_wholesale_cost_sum`;;
    }

    measure: m_WS_NET_PROFIT_max {
        label: "Web Max Net Profit"
        group_label: "Web Sales Measures"
        type: max
        sql: ${TABLE}.`m_WS_NET_PROFIT_max`;;
    }

    measure: m_ws_net_paid_sum {
        label: "Web Net Paid Amount"
        group_label: "Web Sales Measures"
        description: "web_sales.ws_net_paid_sum"
        type: sum
        sql: ${TABLE}.`m_ws_net_paid_sum`;;
    }

    measure: m_ws_net_paid_inc_ship_sum {
        label: "Web Net Paid Incl Ship"
        group_label: "Web Sales Measures"
        description: "web_sales.ws_net_paid_inc_ship_sum"
        type: sum
        sql: ${TABLE}.`m_ws_net_paid_inc_ship_sum`;;
    }

    measure: m_ws_net_paid_inc_tax_sum {
        label: "Web Net Paid Incl Tax"
        group_label: "Web Sales Measures"
        description: "web_sales.ws_net_paid_inc_tax_sum"
        type: sum
        sql: ${TABLE}.`m_ws_net_paid_inc_tax_sum`;;
    }

    measure: m_ws_net_paid_inc_ship_tax_sum {
        label: "Web Net Paid Incl Tax and Ship"
        group_label: "Web Sales Measures"
        description: "web_sales.ws_net_paid_inc_ship_tax_sum"
        type: sum
        sql: ${TABLE}.`m_ws_net_paid_inc_ship_tax_sum`;;
    }

    measure: m_ws_net_profit_sum {
        label: "Web Net Profit"
        group_label: "Web Sales Measures"
        description: "web_sales.ws_net_profit_sum"
        type: sum
        sql: ${TABLE}.`m_ws_net_profit_sum`;;
    }

    measure: m_ws_quantity_sum {
        label: "Web Quantity Sold"
        group_label: "Web Sales Measures"
        description: "web_sales.ws_quantity_sum"
        drill_fields: [Web_Sales_Orders*]
        type: sum
        sql: ${TABLE}.`m_ws_quantity_sum`;;
    }

    measure: m_WS_Row_Counter_sum {
        label: "Web Sales Row Counter"
        group_label: "Web Sales Measures"
        type: sum
        sql: ${TABLE}.`m_WS Row Counter_sum`;;
    }

    set: Store_Sales_Tickets {
        fields: [Ss_Ticket_Number,Customer_Dimension_Customer_Country,Customer_Dimension_Customer_State,Customer_Dimension_Customer_City,Customer_Dimension,d_c_preferred_cust_flag,Store_Dimension,Product_Dimension,m_ss_quantity_sum,m_ss_ext_sales_price_sum]
    }

    set: Web_Sales_Orders {
        fields: [Ws_Order_Number,Customer_Dimension_Customer_Country,Customer_Dimension_Customer_State,Customer_Dimension_Customer_City,Customer_Dimension,Product_Dimension,Ship_Mode_Carrier,Fulfilling_Warehouse,m_ws_quantity_sum,m_ws_ext_sales_price_sum]
    }

}
