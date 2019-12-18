- dashboard: paymo_overview
  title: Paymo Overview
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
  - title: Week of
    name: Week of
    model: paymo
    explore: entry
    type: single_value
    fields: [entry.start_week]
    fill_fields: [entry.start_week]
    sorts: [entry.start_week desc]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    listen:
      Date: entry.start_date
    row: 2
    col: 0
    width: 6
    height: 2
  - title: Billable Hours This Month
    name: Billable Hours This Month
    model: paymo
    explore: entry
    type: single_value
    fields: [entry.billable_hours]
    filters:
      entry.start_month: 1 months
    limit: 500
    row: 2
    col: 6
    width: 9
    height: 2
  - title: Non-Billable Hours This Month
    name: Non-Billable Hours This Month
    model: paymo
    explore: entry
    type: single_value
    fields: [entry.non_billable_hours]
    filters:
      entry.start_month: 1 months
    limit: 500
    listen: {}
    row: 2
    col: 15
    width: 9
    height: 2
  - title: Billable Hours vs. Previous Month
    name: Billable Hours vs Previous Month
    model: paymo
    explore: entry
    type: looker_line
    fields: [entry.start_day_of_month, entry.billable_hours, entry.start_month]
    pivots: [entry.start_month]
    filters:
      entry.start_month: 2 months
      entry.billable_hours: NOT NULL
    sorts: [entry.start_month 0, entry.start_day_of_month]
    limit: 500
    dynamic_fields: [{table_calculation: billable_hours_runsum, label: Billable Hours
          (Runsum), expression: 'if(is_null(${entry.billable_hours}), null, running_total(${entry.billable_hours}))',
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: billable_hours_runsum,
            id: 2019-09 - billable_hours_runsum, name: 2019-09}, {axisId: billable_hours_runsum,
            id: 2019-10 - billable_hours_runsum, name: 2019-10}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      2019-09 - billable_hours_runsum: "#353b49"
      2019-10 - billable_hours_runsum: "#49cec1"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_fields: [entry.billable_hours]
    row: 4
    col: 0
    width: 24
    height: 5
  - title: Top Projects by Billable Hours
    name: Top Projects by Billable Hours
    model: paymo
    explore: entry
    type: looker_column
    fields: [project.project, entry.billable_hours]
    sorts: [entry.billable_hours desc]
    limit: 5
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: entry.billable_hours,
            id: entry.billable_hours, name: Billable Hours}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    row: 9
    col: 0
    width: 12
    height: 6
  - title: Top Time Eaters (Billable Projects)
    name: Top Time Eaters (Billable Projects)
    model: paymo
    explore: entry
    type: looker_column
    fields: [project.project, entry.non_billable_hours]
    filters:
      project.billable: 'true'
    sorts: [entry.non_billable_hours desc]
    limit: 5
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: entry.billable_hours,
            id: entry.billable_hours, name: Billable Hours}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    point_style: none
    series_colors:
      entry.billable_hours: "#49cec1"
      entry.non_billable_hours: "#ed6168"
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
    row: 15
    col: 0
    width: 12
    height: 6
  - title: Billable vs. Non-Billable Project Work (Previous 9 Weeks)
    name: Billable vs Non-Billable Project Work (Previous 9 Weeks)
    model: paymo
    explore: entry
    type: looker_area
    fields: [entry.billable_hours, entry.non_billable_hours, entry.start_week]
    fill_fields: [entry.start_week]
    filters:
      entry.start_week: 9 weeks ago for 9 weeks
      project.billable: 'true'
    sorts: [entry.billable_hours desc]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: entry.billable_hours,
            id: entry.billable_hours, name: Billable Hours}, {axisId: entry.non_billable_hours,
            id: entry.non_billable_hours, name: Non Billable Hours}], showLabels: false,
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle_outline
    series_colors:
      entry.billable_hours: "#49cec1"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    ordering: none
    show_null_labels: false
    listen: {}
    row: 21
    col: 0
    width: 12
    height: 7
  - title: Weekly Utilization Trend (Previous 9 Weeks)
    name: Weekly Utilization Trend (Previous 9 Weeks)
    model: paymo
    explore: entry
    type: looker_column
    fields: [entry.billable_hours, entry.non_billable_hours, entry.start_week, user.count]
    fill_fields: [entry.start_week]
    filters:
      entry.start_week: 9 weeks ago for 9 weeks
    sorts: [entry.start_week]
    limit: 500
    dynamic_fields: [{table_calculation: billable_hours, label: Billable Hours %,
        expression: "${entry.billable_hours}/(${user.count}*40)", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: non_billable_hours, label: Non-Billable Hours %, expression: "${entry.non_billable_hours}/(${user.count}*40)",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: not_recorded_hours, label: Not Recorded
          Hours %, expression: "(if((40*${user.count})-${entry.billable_hours}-${entry.non_billable_hours}<0,0,(40*${user.count})-${entry.billable_hours}-${entry.non_billable_hours}))/(40*${user.count})",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: entry.billable_hours,
            id: entry.billable_hours, name: Billable Hours}, {axisId: entry.non_billable_hours,
            id: entry.non_billable_hours, name: Non Billable Hours}], showLabels: false,
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle_outline
    series_colors:
      entry.billable_hours: "#49cec1"
      billable_hours: "#49cec1"
      not_recorded_hours: "#353b49"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
        line_value: '0.75'}]
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    show_null_points: true
    interpolation: linear
    hidden_fields: [entry.non_billable_hours, entry.billable_hours, user.count]
    listen: {}
    row: 21
    col: 12
    width: 12
    height: 7
  - title: Week Tracking
    name: Week Tracking
    model: paymo
    explore: entry
    type: looker_bar
    fields: [entry.billable_hours, entry.non_billable_hours, entry.hours, user.user]
    sorts: [entry.billable_hours desc]
    limit: 500
    dynamic_fields: [{table_calculation: billable_hours, label: Billable Hours %,
        expression: "${entry.billable_hours}/40", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: non_billable_hours,
        label: Non-Billable Hours %, expression: "${entry.non_billable_hours}/40",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: not_recorded_hours, label: Not Recorded
          Hours %, expression: "(if(40-${entry.hours}<0,0,40-${entry.hours}))/40",
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: billable_hours, id: billable_hours,
            name: Billable Hours %}, {axisId: non_billable_hours, id: non_billable_hours,
            name: Non-Billable Hours %}, {axisId: not_recorded_hours, id: not_recorded_hours,
            name: Not Recorded Hours %}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
      billable_hours: "#49cec1"
      not_recorded_hours: "#353b49"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
        line_value: '0.75'}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [entry.billable_hours, entry.non_billable_hours, entry.hours]
    listen:
      Date: entry.start_date
    row: 9
    col: 12
    width: 12
    height: 12
  - name: 'dashboard'
    type: text
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Overview</b></font>
    row: 0
    col: 7
    width: 11
    height: 2
  - name: 'scaffold'
    type: text
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Paymo</b></font>
    row: 0
    col: 0
    width: 7
    height: 2
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 1 weeks ago for 1 weeks
    allow_multiple_values: true
    required: false
