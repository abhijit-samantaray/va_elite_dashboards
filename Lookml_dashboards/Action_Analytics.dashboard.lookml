- dashboard: action_analytics
  title: Action Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: mE8gFPIK8VCSFrdRtkx4zC
  elements:
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
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 0
    width: 12
    height: 7
  - title: Traffic By Exit Intent
    name: Traffic By Exit Intent
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_bar
    fields: [ccai_session_data.count_session, ccai_session_data.exit_intent]
    filters:
      ccai_session_data.exit_intent: "-NULL"
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
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_session_data.date_date
    row: 4
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
    filters:
      dialogflow_bigquery_export_data_cleaned.intent_triggered: "-NULL"
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
    listen:
      Date: ccai_session_data.date_date
    row: 11
    col: 0
    width: 24
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<table style=\"width:100%; border-radius: 6px; background-color:#FFFFFF;\
      \ margin: 0px;\"><tr>\n          <td class=\"vis\" style=\"width:80%; text-align:left;\
      \ padding-left:10px;\">\n            <h1 style=\"color:#005495; margin-bottom:0px;\"\
      \ > Virtual Agent Analytics </h1><br>\n            <div style=\"letter-spacing:0.3px;line-height:1;\"\
      >\n            <table><tr><td style=\"width:30%;\">\n\t    <a href=\"/embed/dashboards/1633\"\
      >\n            <font color=\"#005495\" size=\"3\"> Virtual Agent Analytics </font></a>\n\
      \            </td><td style=\"width:20%;\">\n\t    <a href=\"/embed/dashboards/1641\"\
      >\n            <font color=\"#005495\" size=\"3\">| User Analytics </font></a>\n\
      \            </td><td style=\"width:30%;\">\n            <font color=\"#129fd9\"\
      \ size=\"3\">| Action Analytics </font>\n            </td></tr><tr><td>\n\n\
      \            </td></tr></table>\n            <br/>\n            </div>\n   \
      \       </td>\n          <td style =  \"text-align:right;\">\n            <div><img\
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
