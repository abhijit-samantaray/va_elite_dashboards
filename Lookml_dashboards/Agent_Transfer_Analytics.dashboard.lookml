- dashboard: agent_transfer_analytics_
  title: 'Agent Transfer Analytics '
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 4ufQ9bkK0uGRgrZRZsqe4b
  elements:
  - title: Total Contained Calls
    name: Total Contained Calls
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [ccai_session_data.total_contained_calls]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 6
    width: 6
    height: 3
  - title: Total Hung-up Calls
    name: Total Hung-up Calls
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [ccai_session_data.total_hung_up_calls]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 12
    width: 6
    height: 3
  - title: New Tile
    name: New Tile
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [ccai_session_data.total_agent_transfer]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Agent Transfer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 0
    width: 6
    height: 3
  - title: Agent Transfers By Day
    name: Agent Transfers By Day
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_column
    fields: [ccai_session_data.request_date, ccai_session_data.total_agent_transfer,
      dialogflow_bigquery_export_data_cleaned.flow_name]
    pivots: [dialogflow_bigquery_export_data_cleaned.flow_name]
    fill_fields: [ccai_session_data.request_date]
    filters:
      dialogflow_bigquery_export_data_cleaned.flow_name: "-NULL"
    sorts: [dialogflow_bigquery_export_data_cleaned.flow_name, ccai_session_data.request_date
        desc]
    limit: 500
    column_limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
      options:
        steps: 5
    y_axes: [{label: Total Agent Transfers, orientation: left, series: [{axisId: dialogflow_bigquery_export_data_cleaned.flow_name___null
              - ccai_session_data.total_agent_transfer, id: dialogflow_bigquery_export_data_cleaned.flow_name___null
              - ccai_session_data.total_agent_transfer, name: "∅"}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Call Date
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Deflected Rate
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_session_data.date_date
    row: 7
    col: 0
    width: 24
    height: 7
  - title: Total Calls Distribution
    name: Total Calls Distribution
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_pie
    fields: [ccai_session_data.call_type, ccai_session_data.count_session]
    sorts: [ccai_session_data.count_session desc 0]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 70
    start_angle:
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      custom:
        id: b9b27ebe-8f6e-01ec-f146-798f8e47d3e0
        label: Custom
        type: continuous
        stops:
        - color: "#00008B"
          offset: 0
        - color: "#9FD5F8"
          offset: 100
      options:
        steps: 5
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Date: ccai_session_data.date_date
    row: 14
    col: 0
    width: 24
    height: 7
  - title: New Tile
    name: New Tile (2)
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [ccai_session_data.average_CSAT_score]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: "${dialogflow_bigquery_export_data_cleaned.intent_triggered}"
      label: intent
      value_format:
      value_format_name:
      dimension: intent
      _kind_hint: measure
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average CSAT Score
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 18
    width: 6
    height: 3
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<table style=\"width:100%; border-radius: 6px; background-color:#FFFFFF;\
      \ margin: 0px;\"><tr>\n          <td class=\"vis\" style=\"width:80%; text-align:left;\
      \ padding-left:10px;\">\n            <h1 style=\"color:#005495; margin-bottom:\
      \ 0px;\" > Agent Transfer Analytics </h1><br>\n            <div style=\"letter-spacing:0.3px;line-height:1;\"\
      >\n            <table style=\"letter-spacing:0.3px;line-height:1.5; margin:\
      \ 0px;\"><tr><td style=\"width:30%;\">\n\t    <a href=\"https://quantiphi.looker.com/embed/dashboards/1653\"\
      >\n            <font color=\"#005495\" size=\"3\"> Virtual Agent Analytics</font></a>\n\
      \            </td><td style=\"width:20%;\">\n\t    <a href=\"/embed/dashboards/1654\"\
      >\n            <font color=\"#005495\" size=\"3\">| User Analytics </font></a>\n\
      \            </td><td style=\"width:30%;\">\n\t    <a href=\"/embed/dashboards/1656\"\
      >\n            <font color=\"#005495\" size=\"3\">| Action Analytics </font></a>\n\
      \            </td></tr><tr><td>\n            <font color=\"#129fd9\" size=\"\
      3\"> Agent Transfer Analytics</font>\n            </td><td>\n\n            </td></tr></table>\n\
      \            <br/>\n            </div>\n          </td>\n          <td>\n  \
      \          <div><img style=\"width:100%\" src=\"https://logovectorseek.com/wp-content/uploads/2021/06/quantiphi-inc-logo-vector.png\"\
      ></div>\n          </td>\n        </tr></table>"
    row: 0
    col: 0
    width: 24
    height: 4
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 90 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    listens_to_filters: []
    field: ccai_session_data.date_date
