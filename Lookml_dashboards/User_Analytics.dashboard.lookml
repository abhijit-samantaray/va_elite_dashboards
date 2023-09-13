- dashboard: user_analytics
  title: User Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ZR0qP7SiJHGPEhYBhSbp7x
  elements:
  - title: Avg Sentiment Score
    name: Avg Sentiment Score
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [ccai_session_data.average_sentiment_score]
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
    hidden_fields: []
    hidden_points_if_no: []
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
    listen:
      Date: ccai_session_data.date_date
    row: 7
    col: 0
    width: 12
    height: 7
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
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
      options:
        steps: 5
    x_axis_label: Day of week
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      ccai_session_data.average_sentiment_score: "#219670"
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
    listen:
      Date: ccai_session_data.date_date
    row: 14
    col: 0
    width: 15
    height: 7
  - title: New Tile
    name: New Tile
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [dialogflow_bigquery_export_data_cleaned.count]
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
    hidden_pivots: {}
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 0
    width: 8
    height: 3
  - title: New Tile
    name: New Tile (2)
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [dialogflow_bigquery_export_data_cleaned.query_breakdown, dialogflow_bigquery_export_data_cleaned.count]
    filters:
      dialogflow_bigquery_export_data_cleaned.query_breakdown: Handled Queries
    sorts: [dialogflow_bigquery_export_data_cleaned.query_breakdown]
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
    single_value_title: Handled Queries
    defaults_version: 1
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 8
    width: 8
    height: 3
  - title: New Tile
    name: New Tile (3)
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: single_value
    fields: [dialogflow_bigquery_export_data_cleaned.query_breakdown, dialogflow_bigquery_export_data_cleaned.count]
    filters:
      dialogflow_bigquery_export_data_cleaned.query_breakdown: Unhandled Queries
    sorts: [dialogflow_bigquery_export_data_cleaned.query_breakdown]
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
    single_value_title: Unhandled Queries
    defaults_version: 1
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 16
    width: 8
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
      dialogflow_bigquery_export_data_cleaned.user_query: "-NULL"
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
    hidden_fields: [dialogflow_bigquery_export_data_cleaned.query_breakdown]
    listen:
      Date: ccai_session_data.date_date
    row: 21
    col: 0
    width: 24
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
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
      options:
        steps: 5
    rotation: true
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
    col: 12
    width: 12
    height: 7
  - title: Matched VS Unmatched Phrases
    name: Matched VS Unmatched Phrases
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_line
    fields: [dialogflow_bigquery_export_data_cleaned.Handled_Queries, dialogflow_bigquery_export_data_cleaned.Unhandled_Queries,
      dialogflow_bigquery_export_data_cleaned.request_month_name]
    fill_fields: [dialogflow_bigquery_export_data_cleaned.request_month_name]
    sorts: [dialogflow_bigquery_export_data_cleaned.request_month_name]
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
    - category: table_calculation
      expression: "${ccai_session_data.total_contained_calls}/${ccai_session_data.count_session}"
      label: Handover Rate
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      table_calculation: handover_rate
      _type_hint: number
      is_disabled: true
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
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Date: ccai_session_data.date_date
    row: 27
    col: 0
    width: 12
    height: 7
  - title: Phrases Match By Conversation Type
    name: Phrases Match By Conversation Type
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_line
    fields: [dialogflow_bigquery_export_data_cleaned.Handled_Queries, dialogflow_bigquery_export_data_cleaned.count,
      dialogflow_bigquery_export_data_cleaned.request_month_name, dialogflow_bigquery_export_data_cleaned.flow_name]
    pivots: [dialogflow_bigquery_export_data_cleaned.flow_name]
    fill_fields: [dialogflow_bigquery_export_data_cleaned.request_month_name]
    filters:
      dialogflow_bigquery_export_data_cleaned.flow_name: "-NULL"
    sorts: [dialogflow_bigquery_export_data_cleaned.flow_name, dialogflow_bigquery_export_data_cleaned.request_month_name
        desc]
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
      is_disabled: true
    - category: table_calculation
      expression: "${dialogflow_bigquery_export_data_cleaned.Handled_Queries}/${dialogflow_bigquery_export_data_cleaned.count}"
      label: Handled Query Rate
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      table_calculation: handled_query_rate
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
    point_style: none
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
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [dialogflow_bigquery_export_data_cleaned.Handled_Queries, dialogflow_bigquery_export_data_cleaned.count]
    listen:
      Date: ccai_session_data.date_date
    row: 27
    col: 12
    width: 12
    height: 7
  - title: Conversation History
    name: Conversation History
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: table
    fields: [dialogflow_bigquery_export_data_cleaned.session_id, dialogflow_bigquery_export_data_cleaned.conversation_journey]
    sorts: [dialogflow_bigquery_export_data_cleaned.session_id]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      dialogflow_bigquery_export_data_cleaned.conversation_journey: Conversation History
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#223E80",
        font_color: !!null '', color_application: {collection_id: standalone-project,
          palette_id: standalone-project-sequential-0, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: !!null ''}]
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
    listen:
      Date: ccai_session_data.date_date
    row: 14
    col: 15
    width: 9
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<table style=\"width:100%;border-radius: 6px; background-color:#FFFFFF;\
      \ margin: 0px;\"><tr>\n          <td class=\"vis\" style=\"width:80%; text-align:left;\
      \ padding-left:10px;\">\n            <h1 style=\"color:#005495; margin-bottom:0px;\"\
      \ > Virtual Agent Analytics </h1><br>\n            <div style=\"letter-spacing:0.3px;line-height:1;\"\
      >\n            <table><tr><td style=\"width:30%;\">\n\t    <a href=\"/embed/dashboards/1633\"\
      >\n            <font color=\"#005495\" size=\"3\"> Virtual Agent Analytics </font></a>\n\
      \            </td><td style=\"width:20%;\">\n            <font color=\"#129fd9\"\
      \ size=\"3\">| User Analytics </font>\n            </td><td style=\"width:30%;\"\
      >\n            <a href=\"/embed/dashboards/1642\">\n            <font color=\"\
      #005495\" size=\"3\">| Action Analytics</font></a>\n            </td></tr><tr><td>\n\
      \n            </td></tr></table>\n            <br/>\n            </div>\n  \
      \        </td>\n          <td style =  \"text-align:right;\">\n            <div><img\
      \ style=\"width:100%\" src=\"https://logovectorseek.com/wp-content/uploads/2021/06/quantiphi-inc-logo-vector.png\"\
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
