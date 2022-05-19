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

    dimension: ORDER_d_half_year {
        label: "ORDER Half Year"
        group_label: "Date Dimension"
        type: date_time
        sql: ${TABLE}.`ORDER d_half_year`;;
    }

    dimension: ORDER_d_quarter {
        label: "ORDER Quarter"
        group_label: "Date Dimension"
        type: date_time
        sql: ${TABLE}.`ORDER d_quarter`;;
    }

    dimension: SHIP_d_half_year {
        label: "SHIP Half Year"
        group_label: "Date Dimension"
        type: date_time
        sql: ${TABLE}.`SHIP d_half_year`;;
    }

    dimension: SHIP_d_quarter {
        label: "SHIP Quarter"
        group_label: "Date Dimension"
        type: date_time
        sql: ${TABLE}.`SHIP d_quarter`;;
    }

    dimension: Date_Hierarchy__weeks__ORDER_Date_Hierarchy__weeks_ {
        label: " ORDER Date Key"
        group_label: "Date Dimension.ORDER Date Hierarchy (weeks)"
        type: date
        sql: ${TABLE}.`ORDER Date Hierarchy (weeks)`;;
    }

    dimension: Date_Hierarchy__weeks__ORDER_Half_Year_Of_Year_Name {
        label: "    ORDER Half Year Of Year Name"
        group_label: "Date Dimension.ORDER Date Hierarchy (weeks)"
        type: string
        allow_fill: no
        sql: ${TABLE}.`ORDER Half Year Of Year Name`;;
        drill_fields: [Date_Hierarchy__weeks__ORDER_Month_Name_2]
    }

    dimension: Date_Hierarchy__weeks__ORDER_Month_Name_2 {
        label: "   ORDER Month Name"
        group_label: "Date Dimension.ORDER Date Hierarchy (weeks)"
        type: date_month
        sql: ${TABLE}.`ORDER Month Name 2`;;
        drill_fields: [Date_Hierarchy__weeks__ORDER_Week_Of_Year_Name]
    }

    dimension: Date_Hierarchy__weeks__ORDER_Week_Of_Year_Name {
        label: "  ORDER Week Of Year Name"
        group_label: "Date Dimension.ORDER Date Hierarchy (weeks)"
        type: date_week
        sql: ${TABLE}.`ORDER Week Of Year Name`;;
        drill_fields: [Date_Hierarchy__weeks__ORDER_Date_Hierarchy__weeks_]
    }

    dimension: Date_Hierarchy__weeks__ORDER_Year_Name_2 {
        label: "     ORDER Year Name"
        group_label: "Date Dimension.ORDER Date Hierarchy (weeks)"
        type: date_year
        sql: ${TABLE}.`ORDER Year Name 2`;;
        drill_fields: [Date_Hierarchy__weeks__ORDER_Half_Year_Of_Year_Name]
    }

    dimension: Datecustom_Hierarchy_ORDER_Date_Key {
        label: " ORDER Date Key"
        group_label: "Date Dimension.ORDER Datecustom Hierarchy"
        type: date
        sql: ${TABLE}.`ORDER Date Key`;;
    }

    dimension: Datecustom_Hierarchy_ORDER_Half_Year_Name {
        label: "    ORDER Half Year Name"
        group_label: "Date Dimension.ORDER Datecustom Hierarchy"
        type: string
        allow_fill: no
        sql: ${TABLE}.`ORDER Half Year Name`;;
        drill_fields: [Datecustom_Hierarchy_ORDER_Quarter_Name]
    }

    dimension: Datecustom_Hierarchy_ORDER_Month_Name {
        label: "  ORDER Month Name"
        group_label: "Date Dimension.ORDER Datecustom Hierarchy"
        type: date_month
        sql: ${TABLE}.`ORDER Month Name`;;
        drill_fields: [Datecustom_Hierarchy_ORDER_Date_Key]
    }

    dimension: Datecustom_Hierarchy_ORDER_Quarter_Name {
        label: "   ORDER Quarter Name"
        group_label: "Date Dimension.ORDER Datecustom Hierarchy"
        type: date_quarter
        sql: ${TABLE}.`ORDER Quarter Name`;;
        drill_fields: [Datecustom_Hierarchy_ORDER_Month_Name]
    }

    dimension: Datecustom_Hierarchy_ORDER_Year_Name {
        label: "     ORDER Year Name"
        group_label: "Date Dimension.ORDER Datecustom Hierarchy"
        type: date_year
        sql: ${TABLE}.`ORDER Year Name`;;
        drill_fields: [Datecustom_Hierarchy_ORDER_Half_Year_Name]
    }

    dimension: Datecustom_Hierarchy_SHIP_Date_Key {
        label: " SHIP Date Key"
        group_label: "Date Dimension.SHIP Datecustom Hierarchy"
        type: date
        sql: ${TABLE}.`SHIP Date Key`;;
    }

    dimension: Datecustom_Hierarchy_SHIP_Half_Year_Name {
        label: "    SHIP Half Year Name"
        group_label: "Date Dimension.SHIP Datecustom Hierarchy"
        type: string
        allow_fill: no
        sql: ${TABLE}.`SHIP Half Year Name`;;
        drill_fields: [Datecustom_Hierarchy_SHIP_Quarter_Name]
    }

    dimension: Datecustom_Hierarchy_SHIP_Month_Name {
        label: "  SHIP Month Name"
        group_label: "Date Dimension.SHIP Datecustom Hierarchy"
        type: date_month
        sql: ${TABLE}.`SHIP Month Name`;;
        drill_fields: [Datecustom_Hierarchy_SHIP_Date_Key]
    }

    dimension: Datecustom_Hierarchy_SHIP_Quarter_Name {
        label: "   SHIP Quarter Name"
        group_label: "Date Dimension.SHIP Datecustom Hierarchy"
        type: date_quarter
        sql: ${TABLE}.`SHIP Quarter Name`;;
        drill_fields: [Datecustom_Hierarchy_SHIP_Month_Name]
    }

    dimension: Datecustom_Hierarchy_SHIP_Year_Name {
        label: "     SHIP Year Name"
        group_label: "Date Dimension.SHIP Datecustom Hierarchy"
        type: date_year
        sql: ${TABLE}.`SHIP Year Name`;;
        drill_fields: [Datecustom_Hierarchy_SHIP_Half_Year_Name]
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

    measure: m_unitprice_avg {
        label: "Unit Price - AVG"
        group_label: "Measures"
        type: average
        sql: ${TABLE}.`m_unitprice_avg`;;
    }

}
