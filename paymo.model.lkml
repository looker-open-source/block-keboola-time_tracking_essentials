connection: "@{connection}"

# include all the views
include: "/views/**/*.view"

# include all lookml dashboards
include: "*.dashboard.lookml"

datagroup: salesforce_mrr_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: entry {
  label: "Project Management"
  join: user {
    type: left_outer
    sql_on: ${entry.user_id}=${user.user_id} ;;
    relationship: many_to_one
  }

  join: task {
    type: left_outer
    sql_on: ${entry.task_id}=${task.task_id} ;;
    relationship: many_to_one
  }

  join: project {
    type: left_outer
    sql_on: ${task.project_id}=${project.project_id} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${project.client_id}=${client.client_id} ;;
    relationship: many_to_one
  }
}

explore: workday {}
