- dashboard: paymo_employee_detail
  title: Paymo Employee Detail
  layout: newspaper
  elements:
  - name: 'powered by'
    type: text
    body_text: <a href="https://keboola.com" target="_blank"> <img src="https://www.keboola.com/data/poweredByKeboola.png"
      width="100%"/>
    row: 0
    col: 18
    width: 6
    height: 2
  - name: 'scaffold'
    type: text
    title_text: ''
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Paymo</b></font>
    row: 0
    col: 0
    width: 7
    height: 2
  - name: 'dashboard'
    type: text
    title_text: ''
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Employee Detail</b></font>
    body_text: ''
    row: 0
    col: 7
    width: 11
    height: 2
  - title: Time Split
    name: Time Split
    model: paymo
    explore: entry
    type: looker_bar
    fields: [entry.billable_hours, entry.non_billable_hours]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: entry.billable_hours,
            id: entry.billable_hours, name: Billable Hours}, {axisId: entry.non_billable_hours,
            id: entry.non_billable_hours, name: Non Billable Hours}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      entry.billable_hours: "#49cec1"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: entry.start_date
      User: user.user
      Project: project.project
      Client: client.client
    row: 2
    col: 0
    width: 19
    height: 5
  - title: Billable Hours
    name: Billable Hours
    model: paymo
    explore: entry
    type: single_value
    fields: [entry.billable_hours]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: entry.billable_hours,
            id: entry.billable_hours, name: Billable Hours}, {axisId: entry.non_billable_hours,
            id: entry.non_billable_hours, name: Non Billable Hours}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      entry.billable_hours: "#49cec1"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: entry.start_date
      User: user.user
      Project: project.project
      Client: client.client
    row: 2
    col: 19
    width: 5
    height: 3
  - title: Recorded Hours
    name: Recorded Hours
    model: paymo
    explore: entry
    type: single_value
    fields: [entry.hours]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: entry.billable_hours,
            id: entry.billable_hours, name: Billable Hours}, {axisId: entry.non_billable_hours,
            id: entry.non_billable_hours, name: Non Billable Hours}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      entry.billable_hours: "#49cec1"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: entry.start_date
      User: user.user
      Project: project.project
      Client: client.client
    row: 5
    col: 19
    width: 5
    height: 2
  - title: Personal - Week Tracking
    name: Personal - Week Tracking
    model: paymo
    explore: entry
    type: looker_column
    fields: [entry.start_date, entry.hours, entry.within_budget]
    pivots: [entry.within_budget]
    fill_fields: [entry.start_date]
    sorts: [entry.start_date desc, entry.within_budget]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: entry.billable_hours,
            id: entry.billable_hours, name: Billable Hours}, {axisId: entry.non_billable_hours,
            id: entry.non_billable_hours, name: Non Billable Hours}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      entry.billable_hours: "#49cec1"
      Excluded - entry.hours: "#353b49"
      Partial - entry.hours: "#e9b404"
      Yes - entry.hours: "#49cec1"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#706080",
        line_value: '8', label: Expected}]
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: entry.start_date
      User: user.user
      Project: project.project
      Client: client.client
    row: 7
    col: 0
    width: 12
    height: 6
  - title: Hours by Day
    name: Hours by Day
    model: paymo
    explore: entry
    type: looker_column
    fields: [entry.start_date, entry.billable_hours, entry.non_billable_hours]
    fill_fields: [entry.start_date]
    sorts: [entry.start_date desc]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: entry.billable_hours,
            id: entry.billable_hours, name: Billable Hours}, {axisId: entry.non_billable_hours,
            id: entry.non_billable_hours, name: Non Billable Hours}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      entry.billable_hours: "#49cec1"
      Excluded - entry.hours: "#353b49"
      Partial - entry.hours: "#e9b404"
      Yes - entry.hours: "#49cec1"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#706080",
        line_value: '8', label: Expected}]
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: entry.start_date
      User: user.user
      Project: project.project
      Client: client.client
    row: 7
    col: 12
    width: 12
    height: 6
  - title: Personal - Client Tracking
    name: Personal - Client Tracking
    model: paymo
    explore: entry
    type: looker_column
    fields: [entry.billable_hours, entry.non_billable_hours, project.project]
    sorts: [sum_for_order desc]
    limit: 500
    dynamic_fields: [{table_calculation: sum_for_order, label: Sum for order, expression: "${entry.billable_hours}+${entry.non_billable_hours}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: entry.billable_hours,
            id: entry.billable_hours, name: Billable Hours}, {axisId: entry.non_billable_hours,
            id: entry.non_billable_hours, name: Non Billable Hours}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      entry.billable_hours: "#49cec1"
      Excluded - entry.hours: "#353b49"
      Partial - entry.hours: "#e9b404"
      Yes - entry.hours: "#49cec1"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    hidden_fields: [sum_for_order]
    listen:
      Date: entry.start_date
      User: user.user
      Project: project.project
      Client: client.client
    row: 13
    col: 0
    width: 12
    height: 6
  - title: FTE
    name: FTE
    model: paymo
    explore: entry
    type: looker_bar
    fields: [entry.billable_hours, entry.non_billable_hours, project.project, entry.start_week]
    sorts: [entry.start_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: available_hours_per_week, label: Available
          Hours Per Week, expression: '40', value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: dimension, _type_hint: number}, {table_calculation: billable_fte,
        label: Billable FTE %, expression: "${entry.billable_hours}/${available_hours_per_week}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: non_billable_fte, label: Non-Billable
          FTE %, expression: "${entry.non_billable_hours}/${available_hours_per_week}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: entry.billable_hours,
            id: entry.billable_hours, name: Billable Hours}, {axisId: entry.non_billable_hours,
            id: entry.non_billable_hours, name: Non Billable Hours}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      entry.billable_hours: "#49cec1"
      Excluded - entry.hours: "#353b49"
      Partial - entry.hours: "#e9b404"
      Yes - entry.hours: "#49cec1"
      billable_fte: "#49cec1"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    hidden_fields: [entry.non_billable_hours, entry.billable_hours, available_hours_per_week]
    listen:
      Date: entry.start_date
      User: user.user
      Project: project.project
      Client: client.client
    row: 13
    col: 12
    width: 12
    height: 6
  - name: Billable Utilization % (Last 6 Months)
    title: Billable Utilization % (Last 6 Months)
    merged_queries:
    - model: paymo
      explore: workday
      type: looker_line
      fields: [workday.date_month, workday.workdays]
      fill_fields: [workday.date_month]
      filters:
        workday.date_month: 6 months
      sorts: [workday.date_month desc]
      limit: 500
      dynamic_fields: [{table_calculation: workhours, label: Workhours, expression: "${workday.workdays}*8",
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}]
    - model: paymo
      explore: entry
      type: table
      fields: [entry.start_month, entry.billable_hours]
      fill_fields: [entry.start_month]
      sorts: [entry.start_month desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: entry.start_month
        source_field_name: workday.date_month
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: billable_utilization,
            id: billable_utilization, name: Billable Utilization %}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      billable_utilization: "#49cec1"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: margins, line_value: mean, range_start: max,
        range_end: min, margin_top: '0', margin_value: '0.8', margin_bottom: '0.2',
        label_position: right, color: "#000000"}]
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_area
    hidden_fields: [workday.workdays, workhours, entry.billable_hours]
    dynamic_fields: [{table_calculation: billable_utilization, label: Billable Utilization
          %, expression: "${entry.billable_hours}/${workhours}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
    listen:
    -
    - User: user.user
      Project: project.project
      Client: client.client
    row: 19
    col: 0
    width: 24
    height: 6
  - title: Personal - Log
    name: Personal - Log
    model: paymo
    explore: entry
    type: table
    fields: [entry.start_date, project.project, entry.hours, entry.billable_hours,
      entry.non_billable_hours, task.tasklist_name, task.task_name, entry.description]
    sorts: [entry.start_date, project.project, task.tasklist_name, task.task_name]
    limit: 500
    total: true
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: entry.billable_hours,
            id: entry.billable_hours, name: Billable Hours}, {axisId: entry.non_billable_hours,
            id: entry.non_billable_hours, name: Non Billable Hours}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      entry.billable_hours: "#49cec1"
      Excluded - entry.hours: "#353b49"
      Partial - entry.hours: "#e9b404"
      Yes - entry.hours: "#49cec1"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    hidden_fields: []
    listen:
      Date: entry.start_date
      User: user.user
      Project: project.project
      Client: client.client
    row: 25
    col: 0
    width: 24
    height: 9
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 1 weeks ago for 1 weeks
    allow_multiple_values: true
    required: false
  - name: User
    title: User
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: true
    model: paymo
    explore: entry
    listens_to_filters: []
    field: user.user
  - name: Project
    title: Project
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: paymo
    explore: entry
    listens_to_filters: [Client]
    field: project.project
  - name: Client
    title: Client
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: paymo
    explore: entry
    listens_to_filters: []
    field: client.client
