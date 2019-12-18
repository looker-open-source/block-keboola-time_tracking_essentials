project_name: "block-keboola-time_tracking_essentials"

################ Constants ################

constant: CONFIG_PROJECT_NAME {
  value: "block-keboola-time_tracking_essentials-config"
  export: override_required
}

constant: CONNECTION {
  value: "keboola_block_paymo"
  export: override_required
}

constant: SCHEMA_NAME {
  value: "WORKSPACE_545053954"
  export: override_required
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: SCHEMA_NAME {
    value: "@{SCHEMA_NAME}"
  }
}
