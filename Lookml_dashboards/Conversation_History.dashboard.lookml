- dashboard: conversation_history
  title: Conversation History
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Nwna5fIWQ8Nks8alujuhlL
  elements:
  - title: Conversation History
    name: Conversation History
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: looker_grid
    fields: [dialogflow_bigquery_export_data_cleaned.session_id, dialogflow_bigquery_export_data_cleaned.bot_response,
      dialogflow_bigquery_export_data_cleaned.intent_for_logs, dialogflow_bigquery_export_data_cleaned.request_millisecond,
      dialogflow_bigquery_export_data_cleaned.user_query]
    sorts: [dialogflow_bigquery_export_data_cleaned.request_millisecond desc]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    minimum_column_width: 75
    header_font_color: "#ffffff"
    header_background_color: "#005495"
    defaults_version: 1
    listen:
      Call ID: dialogflow_bigquery_export_data_cleaned.session_id
    row: 0
    col: 0
    width: 24
    height: 11
  filters:
  - name: Call ID
    title: Call ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    listens_to_filters: []
    field: dialogflow_bigquery_export_data_cleaned.session_id
