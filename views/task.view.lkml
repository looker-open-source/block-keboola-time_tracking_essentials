view: task {
  sql_table_name: TASK ;;

  dimension: task_id {
    label: "Task ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."TASK_ID" ;;
  }

  dimension: project_id {
    type: string
    hidden: yes
    sql: ${TABLE}."PROJECT_ID" ;;
  }

  dimension: billing_type {
    type: string
    sql: ${TABLE}."BILLING_TYPE" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: task_billable {
    description: "Flags if task is billable."
    type: string
    sql: ${TABLE}."TASK_BILLABLE" ;;
  }

  dimension: task_name {
    type: string
    sql: ${TABLE}."TASK_NAME" ;;
  }

  dimension: tasklist_name {
    type: string
    sql: ${TABLE}."TASKLIST_NAME" ;;
  }

  dimension: budget_hours_dimension {
    hidden: yes
    type: number
    sql: ${TABLE}."BUDGET_HOURS" ;;
  }

  dimension: price_per_hour_dimension {
    hidden: yes
    type: number
    sql: ${TABLE}."PRICE_PER_HOUR" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      task_id,
      task_name,
      tasklist_name,
      project.project,
      entry.count
    ]
  }
}
