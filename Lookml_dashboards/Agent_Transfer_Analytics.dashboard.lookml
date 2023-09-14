- dashboard: agent_transfer_analytics
  title: Agent Transfer Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: boeeK2PucUKE5bqruzO4Vd
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
    col: 8
    width: 8
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
    row: 10
    col: 0
    width: 8
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
    width: 8
    height: 3
  - title: Agent Transfer Breakdown
    name: Agent Transfer Breakdown
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_pie
    fields: [ccai_session_data.Planned_Unplanned, ccai_session_data.count_session]
    filters:
      ccai_session_data.Planned_Unplanned: "-No Agent Transfer"
    sorts: [ccai_session_data.count_session desc 0]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 70
    start_angle: 45
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-diverging-0
      options:
        steps: 5
    series_colors: {}
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total Agent Transfer
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
    row: 7
    col: 16
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (2)
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [ccai_session_data.caller_requested_agent_transfer_rate]
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
    single_value_title: Caller Requested Agent Transfers
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
    row: 7
    col: 8
    width: 8
    height: 3
  - title: New Tile
    name: New Tile (3)
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [ccai_session_data.containment_rate]
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
    single_value_title: Deflected Rate
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
    row: 10
    col: 8
    width: 8
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
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      palette_id: ff31218a-4f9d-493c-ade2-22266f5934b8
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
    series_colors:
      ChangeAddress - ccai_session_data.total_agent_transfer: "#E6985A"
      ChangeNumber - ccai_session_data.total_agent_transfer: "#C9D275"
      Balance - ccai_session_data.total_agent_transfer: "#F5E578"
      Consolidate_in - ccai_session_data.total_agent_transfer: "#6C5174"
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
    row: 13
    col: 0
    width: 24
    height: 8
  - title: Agent Transfer Reason (page name)
    name: Agent Transfer Reason (page name)
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_grid
    fields: [dialogflow_bigquery_export_data_cleaned.count_session, ccai_session_data.second_last_page]
    filters:
      ccai_session_data.agentTransfer_flag: '1'
      ccai_session_data.second_last_page: "-NULL"
    sorts: [dialogflow_bigquery_export_data_cleaned.count_session desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      dialogflow_bigquery_export_data_cleaned.count_session: Total Calls
    series_cell_visualizations:
      dialogflow_bigquery_export_data_cleaned.count_session:
        is_active: true
    header_background_color: "#20B283"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Date: ccai_session_data.date_date
    row: 21
    col: 12
    width: 12
    height: 8
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
    row: 21
    col: 0
    width: 12
    height: 8
  - title: Agent Transfer Failure
    name: Agent Transfer Failure
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [ccai_session_data.total_agent_transfer_failure]
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
    row: 7
    col: 0
    width: 8
    height: 3
  - title: New Tile
    name: New Tile (4)
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
    col: 16
    width: 8
    height: 3
  - title: Containment VS Transfers
    name: Containment VS Transfers
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_area
    fields: [ccai_session_data.total_agent_transfer, ccai_session_data.count_session,
      ccai_session_data.date_month_name]
    fill_fields: [ccai_session_data.date_month_name]
    sorts: [ccai_session_data.date_month_name]
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: right
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: quantiphi-color-codes
      palette_id: quantiphi-color-codes-categorical-0
      options:
        steps: 5
        reverse: true
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date: ccai_session_data.date_date
    row: 29
    col: 0
    width: 12
    height: 8
  - title: Containment By Conversation Type
    name: Containment By Conversation Type
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_line
    fields: [ccai_session_data.count_session, ccai_session_data.date_month_name, ccai_session_data.total_contained_calls,
      dialogflow_bigquery_export_data_cleaned.flow_name]
    pivots: [dialogflow_bigquery_export_data_cleaned.flow_name]
    fill_fields: [ccai_session_data.date_month_name]
    filters:
      dialogflow_bigquery_export_data_cleaned.flow_name: "-NULL"
    sorts: [dialogflow_bigquery_export_data_cleaned.flow_name, ccai_session_data.date_month_name]
    limit: 500
    column_limit: 10
    dynamic_fields:
    - category: dimension
      expression: "${dialogflow_bigquery_export_data_cleaned.intent_triggered}"
      label: intent
      value_format:
      value_format_name:
      dimension: intent
      _kind_hint: measure
      _type_hint: string
    - category: table_calculation
      expression: "${ccai_session_data.total_contained_calls}/${ccai_session_data.count_session}"
      label: Handover Rate
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      table_calculation: handover_rate
      _type_hint: number
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
    legend_position: right
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
      options:
        steps: 5
    x_axis_label: Month
    x_axis_zoom: true
    y_axis_zoom: true
    x_axis_datetime_label: ''
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [ccai_session_data.count_session, ccai_session_data.total_contained_calls]
    listen:
      Date: ccai_session_data.date_date
    row: 29
    col: 12
    width: 12
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<table style=\"width:100%; border-radius: 6px; background-color:#FFFFFF;\
      \ margin: 0px;\"><tr>\n          <td class=\"vis\" style=\"width:80%; text-align:left;\
      \ padding-left:10px;\">\n            <h1 style=\"color:#005495; margin-bottom:\
      \ 0px;\" > Agent Transfer Analytics </h1><br>\n            <div style=\"letter-spacing:0.3px;line-height:1;\"\
      >\n              <table style=\"letter-spacing:0.3px;line-height:1.5; margin:\
      \ 0px;\"><tr><td style=\"width:30%;\">\n            <a href=\"https://quantiphi.looker.com/embed/dashboards/1646\"\
      >\n            <font color=\"#005495\" size=\"3\"> Virtual Agent Analytics </font></a>\n\
      \            </td><td style=\"width:20%;\">\n\t    <a href=\"/embed/dashboards/1644\"\
      >\n            <font color=\"#005495\" size=\"3\">| User Analytics </font></a>\n\
      \            </td><td style=\"width:30%;\">\n\t    <a href=\"/embed/dashboards/1647\"\
      >\n            <font color=\"#005495\" size=\"3\">| Action Analytics </font></a>\n\
      \            </td></tr><tr><td>\n            <font color=\"#129fd9\" size=\"\
      3\"> Agent Transfer Analytics </font>\n            </td><td>\n            <a\
      \ href=\"/embed/dashboards/1650\">\n            <font color=\"#005495\" size=\"\
      3\">| Call Flow [Sankey] </font></a>\n            </td><td>\n            <a\
      \ href=\"/embed/dashboards/1652\">\n            <font color=\"#005495\" size=\"\
      3\">| Call Flow [Collapsible Tree] </font></a>\n            </td></tr></table>\n\
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
      type: advanced
      display: popover
      options: []
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    listens_to_filters: []
    field: ccai_session_data.date_date
