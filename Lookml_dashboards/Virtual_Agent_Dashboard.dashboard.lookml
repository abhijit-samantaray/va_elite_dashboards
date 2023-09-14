- dashboard: virtual_agent_analytics_
  title: 'Virtual Agent Analytics '
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: iLPdXGmpGdLrYbNHTXhlWM
  elements:
  - title: Total Sessions
    name: Total Sessions
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [dialogflow_bigquery_export_data_cleaned.count_session]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    defaults_version: 1
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 0
    width: 8
    height: 3
  - title: New Tile
    name: New Tile
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [dialogflow_bigquery_export_data_cleaned.avg_session_per_day]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average Sessions Per Day
    show_view_names: false
    defaults_version: 1
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 8
    width: 8
    height: 3
  - title: New Tile
    name: New Tile (2)
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [ccai_session_data.avg_query_per_session]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average Queries Per Session
    show_view_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 16
    width: 8
    height: 3
  - title: Busiest Hour
    name: Busiest Hour
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [dialogflow_bigquery_export_data_cleaned.time_bucket, dialogflow_bigquery_export_data_cleaned.count_session]
    filters:
      dialogflow_bigquery_export_data_cleaned.count_session: NOT NULL
    sorts: [dialogflow_bigquery_export_data_cleaned.count_session desc 0]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#223E80",
        font_color: !!null '', color_application: {collection_id: standalone-project,
          palette_id: standalone-project-sequential-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [dialogflow_bigquery_export_data_cleaned.count_session]
    listen:
      Date: ccai_session_data.date_date
    row: 7
    col: 16
    width: 8
    height: 3
  - title: Success Rate
    name: Success Rate
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [dialogflow_bigquery_export_data_cleaned.success_rate, dialogflow_bigquery_export_data_cleaned.count]
    sorts: [dialogflow_bigquery_export_data_cleaned.success_rate]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: percent of match type count
      value_format:
      value_format_name: percent_0
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_match_type_count
      args:
      - dialogflow_bigquery_export_data_cleaned.count
      _kind_hint: measure
      _type_hint: number
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#223E80",
        font_color: !!null '', color_application: {collection_id: standalone-project,
          palette_id: standalone-project-sequential-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [dialogflow_bigquery_export_data_cleaned.count, dialogflow_bigquery_export_data_cleaned.success_rate]
    listen:
      Date: ccai_session_data.date_date
    row: 7
    col: 8
    width: 8
    height: 3
  - title: Avg Session Duration
    name: Avg Session Duration
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [ccai_session_data.avg_duration]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: percent of match type count
      value_format:
      value_format_name: percent_0
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_match_type_count
      args:
      - dialogflow_bigquery_export_data_cleaned.count
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
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
  - title: Time Split
    name: Time Split
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_line
    fields: [dialogflow_bigquery_export_data_cleaned.count_session, dialogflow_bigquery_export_data_cleaned.time_bucket]
    fill_fields: [dialogflow_bigquery_export_data_cleaned.time_bucket]
    sorts: [dialogflow_bigquery_export_data_cleaned.count_session desc 0]
    limit: 500
    column_limit: 50
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
    show_null_points: true
    interpolation: linear
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Date: ccai_session_data.date_date
    row: 10
    col: 0
    width: 12
    height: 7
  - title: Weekly Traffic
    name: Weekly Traffic
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_bar
    fields: [dialogflow_bigquery_export_data_cleaned.request_day_of_week, dialogflow_bigquery_export_data_cleaned.count_session]
    fill_fields: [dialogflow_bigquery_export_data_cleaned.request_day_of_week]
    sorts: [dialogflow_bigquery_export_data_cleaned.count_session desc 0]
    limit: 500
    column_limit: 50
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
    color_application:
      collection_id: quantiphi-color-codes
      palette_id: quantiphi-color-codes-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: dialogflow_bigquery_export_data_cleaned.count_session,
            id: dialogflow_bigquery_export_data_cleaned.count_session, name: Total
              calls}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Day of week
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      dialogflow_bigquery_export_data_cleaned.count_session: "#5177af"
    defaults_version: 1
    listen:
      Date: ccai_session_data.date_date
    row: 10
    col: 12
    width: 12
    height: 7
  - title: Session Analytics
    name: Session Analytics
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_grid
    fields: [ccai_session_data.duration_bucket, ccai_session_data.count_session, ccai_session_data.avg_query_per_session,
      ccai_session_data.average_sentiment_score]
    filters:
      ccai_session_data.duration_bucket: "- NULL"
    sorts: [ccai_session_data.average_sentiment_score desc 0]
    limit: 500
    column_limit: 50
    query_timezone: UTC
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
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      ccai_session_data.count_session: Session Traffic
    series_cell_visualizations:
      ccai_session_data.count_session:
        is_active: true
    header_background_color: "#7CC8FA"
    defaults_version: 1
    listen:
      Date: ccai_session_data.date_date
    row: 17
    col: 0
    width: 16
    height: 6
  - title: New Tile
    name: New Tile (3)
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [ccai_session_data.per_calls_beyond_avg_call_Length]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: "% Calls Beyond Average Call Length"
    defaults_version: 1
    listen:
      Date: ccai_session_data.date_date
    row: 17
    col: 16
    width: 8
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <table style="width:100%; border-radius: 6px; background-color:#FFFFFF; margin: 0px;"><tr>
                <td class="vis" style="width:80%; text-align:left; padding-left:10px;">
                  <h1 style="color:#005495; margin-bottom: 0px;" > Virtual Agent Analytics </h1><br>
                  <table style="letter-spacing:0.3px;line-height:1.5; margin: 0px;"><tr><td style="width:30%;">
                  <font color="#129fd9" size="3"> Virtual Agent Analytics </font>
                  </td><td style="width:20%;">
                  <a href="/embed/dashboards/1644">
                  <font color="#005495" size="3">| User Analytics </font></a>
                  </td><td style="width:30%;">
                  <a href="/embed/dashboards/1647">
                  <font color="#005495" size="3">| Action Analytics </font></a>
                  </td></tr><tr><td>
                  <a href="/embed/dashboards/1648">
                  <font color="#005495" size="3"> Agent Transfer Analytics </font></a>
                  </td><td>
                  <a href="/embed/dashboards/1650">
                  <font color="#005495" size="3">| Call Flow [Sankey] </font></a>
                  </td><td>
                  <a href="/embed/dashboards/1652">
                  <font color="#005495" size="3">| Call Flow [Collapsible Tree] </font></a>
                  </td></tr></table>
                  <br/>
                </td>
                <td>
                  <div><img style="width:100%;" src="https://logovectorseek.com/wp-content/uploads/2021/06/quantiphi-inc-logo-vector.png"></div>
                </td>
              </tr></table>
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
