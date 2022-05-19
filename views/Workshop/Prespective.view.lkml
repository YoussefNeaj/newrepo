view: Prespective {
    label: "Prespective"
    sql_table_name: "Workshop"."Prespective";;
    dimension: Dim_Customer_Hierarchy_Dim_Customer_Level {
        label: "Dim Customer Level"
        type: string
        sql: ${TABLE}.`Dim Customer Level`;;
    }

    dimension: d_firstname {
        label: "First Name"
        type: string
        sql: ${TABLE}.`d_firstname`;;
    }

    dimension: d_lastname {
        label: "Last Name"
        type: string
        sql: ${TABLE}.`d_lastname`;;
    }

    dimension: d_occupation {
        label: "Occupation"
        type: string
        sql: ${TABLE}.`d_occupation`;;
    }

    dimension: Color_Hierarchy_Color_Level {
        label: "Color Level"
        group_label: "Color Dimension"
        type: string
        sql: ${TABLE}.`Color Level`;;
    }

    dimension: d_half_year {
        label: "Half Year"
        group_label: "Date Dimension"
        type: date_time
        sql: ${TABLE}.`d_half_year`;;
    }

    dimension: d_quarter {
        label: "Quarter"
        group_label: "Date Dimension"
        type: date_time
        sql: ${TABLE}.`d_quarter`;;
    }

    dimension: Datecustom_Hierarchy_Date_Key {
        label: " Date Key"
        group_label: "Date Dimension.Date Hierarchy"
        type: date
        sql: ${TABLE}.`Date Key`;;
    }

    dimension: Datecustom_Hierarchy_Half_Year_Name {
        label: "    Half Year Name"
        group_label: "Date Dimension.Date Hierarchy"
        type: string
        allow_fill: no
        sql: ${TABLE}.`Half Year Name`;;
        drill_fields: [Datecustom_Hierarchy_Quarter_Name]
    }

    dimension: Datecustom_Hierarchy_Month_Name {
        label: "  Month Name"
        group_label: "Date Dimension.Date Hierarchy"
        type: date_month
        sql: ${TABLE}.`Month Name`;;
        drill_fields: [Datecustom_Hierarchy_Date_Key]
    }

    dimension: Datecustom_Hierarchy_Quarter_Name {
        label: "   Quarter Name"
        group_label: "Date Dimension.Date Hierarchy"
        type: date_quarter
        sql: ${TABLE}.`Quarter Name`;;
        drill_fields: [Datecustom_Hierarchy_Month_Name]
    }

    dimension: Datecustom_Hierarchy_Year_Name {
        label: "     Year Name"
        group_label: "Date Dimension.Date Hierarchy"
        type: date_year
        sql: ${TABLE}.`Year Name`;;
        drill_fields: [Datecustom_Hierarchy_Half_Year_Name]
    }

    dimension: Date_Hierarchy__weeks_ {
        label: " Date Key"
        group_label: "Date Dimension.Date Hierarchy (weeks)"
        type: date
        sql: ${TABLE}.`Date Hierarchy (weeks)`;;
    }

    dimension: Date_Hierarchy__weeks__Half_Year_Of_Year_Name {
        label: "    Half Year Of Year Name"
        group_label: "Date Dimension.Date Hierarchy (weeks)"
        type: string
        allow_fill: no
        sql: ${TABLE}.`Half Year Of Year Name`;;
        drill_fields: [Date_Hierarchy__weeks__Month_Name_2]
    }

    dimension: Date_Hierarchy__weeks__Month_Name_2 {
        label: "   Month Name"
        group_label: "Date Dimension.Date Hierarchy (weeks)"
        type: date_month
        sql: ${TABLE}.`Month Name 2`;;
        drill_fields: [Date_Hierarchy__weeks__Week_Of_Year_Name]
    }

    dimension: Date_Hierarchy__weeks__Week_Of_Year_Name {
        label: "  Week Of Year Name"
        group_label: "Date Dimension.Date Hierarchy (weeks)"
        type: date_week
        sql: ${TABLE}.`Week Of Year Name`;;
        drill_fields: [Date_Hierarchy__weeks_]
    }

    dimension: Date_Hierarchy__weeks__Year_Name_2 {
        label: "     Year Name"
        group_label: "Date Dimension.Date Hierarchy (weeks)"
        type: date_year
        sql: ${TABLE}.`Year Name 2`;;
        drill_fields: [Date_Hierarchy__weeks__Half_Year_Of_Year_Name]
    }

    dimension: Geography_Dimension_Hierarchy_Country {
        label: "   Country"
        group_label: "Geography Dimension Hierarchy"
        type: string
        sql: ${TABLE}.`Country`;;
        drill_fields: [Geography_Dimension_Hierarchy_State_Key]
    }

    dimension: Geography_Dimension_Hierarchy_Geography_Dimension_Level {
        label: " Geography "
        group_label: "Geography Dimension Hierarchy"
        type: number
        sql: ${TABLE}.`Geography Dimension Level`;;
    }

    dimension: Geography_Dimension_Hierarchy_State_Key {
        label: "  State Key"
        group_label: "Geography Dimension Hierarchy"
        type: string
        sql: ${TABLE}.`State Key`;;
        drill_fields: [Geography_Dimension_Hierarchy_Geography_Dimension_Level]
    }


    measure: Manual_avg {
        label: "Manual avg"
        type: average
        sql: ${TABLE}.`Manual avg`;;
    }

    measure: m_Counter_sum {
        label: "Counter"
        group_label: "Measures"
        type: sum
        sql: ${TABLE}.`m_Counter_sum`;;
    }

    measure: m_customerkey_distinct_est {
        label: "Customer Key - DCE"
        group_label: "Measures"
        type: count_distinct
        sql: ${TABLE}.`m_customerkey_distinct_est`;;
    }

    measure: m_orderquantity_sum {
        label: "Order Quantity - SUM"
        group_label: "Measures"
        type: sum
        sql: ${TABLE}.`m_orderquantity_sum`;;
    }

    measure: m_salesamount_avg {
        label: "Sales Amount - AVG"
        group_label: "Measures"
        type: average
        sql: ${TABLE}.`m_salesamount_avg`;;
    }

    measure: m_salesamount_sum {
        label: "Sales Amount - SUM"
        group_label: "Measures"
        type: sum
        sql: ${TABLE}.`m_salesamount_sum`;;
    }

    measure: m_Sales_Tax_sum {
        label: "Sales Tax - SUM"
        group_label: "Measures"
        type: sum
        sql: ${TABLE}.`m_Sales Tax_sum`;;
    }

    measure: m_taxamt_avg {
        label: "Tax Amount -AVG"
        group_label: "Measures"
        type: average
        sql: ${TABLE}.`m_taxamt_avg`;;
    }

    measure: m_unitprice_avg {
        label: "Unit Price - AVG"
        group_label: "Measures"
        type: average
        sql: ${TABLE}.`m_unitprice_avg`;;
    }

}
