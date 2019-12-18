include: "//@{CONFIG_PROJECT_NAME}/workday.view"

view: workday {
  extends: [workday_config]
}

view: workday_core {
  sql_table_name: @{SCHEMA_NAME}.WORKDAY ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}."DATE" ;;
  }

  dimension: workday {
    description: "Flags workdays (Mon-Fri by default. You can change it in Keboola Connection)."
    type: string
    sql: ${TABLE}."WORKDAY" ;;
  }

  measure: workdays {
    type: count_distinct
    sql: ${TABLE}."DATE" ;;
    filters: {
      field: workday
      value: "true"
    }
  }

  measure: billable_capacity {
    type: number
    sql: ${workdays}*8 ;;
  }

  measure: billable_target {
    description: "This should be change accordingly to your needs. Default is 6 Billable hours per day."
    type: number
    sql: ${billable_capacity}*0.6 ;;
  }

  measure: count {
    type: count
  }
}
