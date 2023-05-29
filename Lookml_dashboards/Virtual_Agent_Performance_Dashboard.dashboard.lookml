- dashboard: virtual_agent_analytics
  title: Virtual Agent Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: W3BfNUllErdGfabR3b1WBG
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
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 4
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
    single_value_title: Average sessions per day
    show_view_names: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 4
    width: 4
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
    single_value_title: Average queries per session
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 8
    width: 5
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
    series_types: {}
    hidden_pivots: {}
    hidden_fields: [dialogflow_bigquery_export_data_cleaned.count_session]
    listen: {}
    row: 0
    col: 13
    width: 6
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
    dynamic_fields: [{category: table_calculation, label: percent of match type count,
        value_format: !!null '', value_format_name: percent_0, calculation_type: percent_of_column_sum,
        table_calculation: percent_of_match_type_count, args: [dialogflow_bigquery_export_data_cleaned.count],
        _kind_hint: measure, _type_hint: number}]
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
    series_types: {}
    hidden_pivots: {}
    hidden_fields: [dialogflow_bigquery_export_data_cleaned.count, dialogflow_bigquery_export_data_cleaned.success_rate]
    listen: {}
    row: 0
    col: 19
    width: 5
    height: 3
  - title: Avg Session Duration
    name: Avg Session Duration
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [ccai_session_data.avg_duration]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, label: percent of match type count,
        value_format: !!null '', value_format_name: percent_0, calculation_type: percent_of_column_sum,
        table_calculation: percent_of_match_type_count, args: [dialogflow_bigquery_export_data_cleaned.count],
        _kind_hint: measure, _type_hint: number, is_disabled: true}]
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
    series_types: {}
    listen: {}
    row: 3
    col: 13
    width: 6
    height: 3
  - title: Avg Sentiment Score
    name: Avg Sentiment Score
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [ccai_session_data.average_sentiment_score]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, label: percent of match type count,
        value_format: !!null '', value_format_name: percent_0, calculation_type: percent_of_column_sum,
        table_calculation: percent_of_match_type_count, args: [dialogflow_bigquery_export_data_cleaned.count],
        _kind_hint: measure, _type_hint: number, is_disabled: true}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 22
    arm_weight: 48
    spinner_length: 92
    spinner_weight: 55
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: value
    value_label_font: 12
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    label_font_size: 4
    spinner_type: spinner
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#223E80"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.46
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    series_types: {}
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
    hidden_pivots: {}
    listen: {}
    row: 3
    col: 19
    width: 5
    height: 3
  - title: Weekly Average Sentiment Trend
    name: Weekly Average Sentiment Trend
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_area
    fields: [ccai_session_data.request_day_of_week, ccai_session_data.average_sentiment_score]
    fill_fields: [ccai_session_data.request_day_of_week]
    sorts: [ccai_session_data.average_sentiment_score desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, label: percent of match type count,
        value_format: !!null '', value_format_name: percent_0, calculation_type: percent_of_column_sum,
        table_calculation: percent_of_match_type_count, args: [dialogflow_bigquery_export_data_cleaned.count],
        _kind_hint: measure, _type_hint: number, is_disabled: true}]
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Day of week
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
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
    ordering: none
    show_null_labels: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 6
    col: 0
    width: 12
    height: 7
  - title: New Tile
    name: New Tile (3)
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [dialogflow_bigquery_export_data_cleaned.count]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, label: percent of match type count,
        value_format: !!null '', value_format_name: percent_0, calculation_type: percent_of_column_sum,
        table_calculation: percent_of_match_type_count, args: [dialogflow_bigquery_export_data_cleaned.count],
        _kind_hint: measure, _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Queries
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
    series_types: {}
    hidden_pivots: {}
    listen: {}
    row: 3
    col: 8
    width: 5
    height: 3
  - title: New Tile
    name: New Tile (4)
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [dialogflow_bigquery_export_data_cleaned.query_breakdown, dialogflow_bigquery_export_data_cleaned.count]
    filters:
      dialogflow_bigquery_export_data_cleaned.query_breakdown: Handled Queries
    sorts: [dialogflow_bigquery_export_data_cleaned.query_breakdown]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, label: percent of match type count,
        value_format: !!null '', value_format_name: percent_0, calculation_type: percent_of_column_sum,
        table_calculation: percent_of_match_type_count, args: [dialogflow_bigquery_export_data_cleaned.count],
        _kind_hint: measure, _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Handled Queries
    defaults_version: 1
    listen: {}
    row: 3
    col: 4
    width: 4
    height: 3
  - title: New Tile
    name: New Tile (5)
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [dialogflow_bigquery_export_data_cleaned.query_breakdown, dialogflow_bigquery_export_data_cleaned.count]
    filters:
      dialogflow_bigquery_export_data_cleaned.query_breakdown: Unhandled Queries
    sorts: [dialogflow_bigquery_export_data_cleaned.query_breakdown]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, label: percent of match type count,
        value_format: !!null '', value_format_name: percent_0, calculation_type: percent_of_column_sum,
        table_calculation: percent_of_match_type_count, args: [dialogflow_bigquery_export_data_cleaned.count],
        _kind_hint: measure, _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Unhandled Queries
    defaults_version: 1
    listen: {}
    row: 3
    col: 0
    width: 4
    height: 3
  - title: Unhandled Request Analysis
    name: Unhandled Request Analysis
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_grid
    fields: [dialogflow_bigquery_export_data_cleaned.query_breakdown, dialogflow_bigquery_export_data_cleaned.user_query,
      dialogflow_bigquery_export_data_cleaned.count_session, dialogflow_bigquery_export_data_cleaned.count,
      dialogflow_bigquery_export_data_cleaned.avg_sentiment_score]
    filters:
      dialogflow_bigquery_export_data_cleaned.query_breakdown: Unhandled Queries
    sorts: [dialogflow_bigquery_export_data_cleaned.count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
    series_labels:
      dialogflow_bigquery_export_data_cleaned.count: Frequency
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    series_types: {}
    hidden_fields: [dialogflow_bigquery_export_data_cleaned.query_breakdown]
    listen: {}
    row: 13
    col: 0
    width: 24
    height: 6
  - title: Time Split
    name: Time Split
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_funnel
    fields: [dialogflow_bigquery_export_data_cleaned.count_session, dialogflow_bigquery_export_data_cleaned.time_bucket]
    fill_fields: [dialogflow_bigquery_export_data_cleaned.time_bucket]
    sorts: [dialogflow_bigquery_export_data_cleaned.count_session desc 0]
    limit: 500
    column_limit: 50
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
    series_types: {}
    listen: {}
    row: 19
    col: 0
    width: 12
    height: 6
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: dialogflow_bigquery_export_data_cleaned.count_session,
            id: dialogflow_bigquery_export_data_cleaned.count_session, name: Total
              calls}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Day of week
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 19
    col: 12
    width: 12
    height: 6
  - title: User Utterances
    name: User Utterances
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_wordcloud
    fields: [dialogflow_bigquery_export_data_cleaned.user_query, dialogflow_bigquery_export_data_cleaned.count]
    sorts: [dialogflow_bigquery_export_data_cleaned.count desc 0]
    limit: 500
    column_limit: 50
    color_application: undefined
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
    series_types: {}
    listen: {}
    row: 6
    col: 12
    width: 12
    height: 7
  - title: Traffic By Entry Intent
    name: Traffic By Entry Intent
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_bar
    fields: [ccai_session_data.entry_intent, ccai_session_data.count_session]
    sorts: [ccai_session_data.entry_intent]
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
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    listen: {}
    row: 25
    col: 0
    width: 12
    height: 7
  - title: Traffic By Exit Intent
    name: Traffic By Exit Intent
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_bar
    fields: [ccai_session_data.count_session, ccai_session_data.exit_intent]
    sorts: [ccai_session_data.count_session desc 0]
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
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    listen: {}
    row: 25
    col: 12
    width: 12
    height: 7
  - title: " Total Intent Analysis"
    name: " Total Intent Analysis"
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_grid
    fields: [dialogflow_bigquery_export_data_cleaned.intent_triggered, dialogflow_bigquery_export_data_cleaned.count,
      dialogflow_bigquery_export_data_cleaned.count_session, dialogflow_bigquery_export_data_cleaned.avg_sentiment_score]
    sorts: [dialogflow_bigquery_export_data_cleaned.intent_triggered]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
    series_labels:
      dialogflow_bigquery_export_data_cleaned.count: Frequency
    series_cell_visualizations:
      dialogflow_bigquery_export_data_cleaned.count:
        is_active: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    series_types: {}
    listen: {}
    row: 32
    col: 0
    width: 24
    height: 5
