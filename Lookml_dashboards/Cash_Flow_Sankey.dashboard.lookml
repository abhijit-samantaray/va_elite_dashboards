- dashboard: call_flow_sankey
  title: Call Flow [Sankey]
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: Jw0jk3iShukOjZjA0lh4p9
  elements:
  - title: Call Flow(Sankey)  [1-8 levels]
    name: Call Flow(Sankey)  [1-8 levels]
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: marketplace_viz_sankey::sankey-marketplace
    fields: [sankey_page.row_1, sankey_page.row_2, sankey_page.row_3, sankey_page.row_4,
      sankey_page.row_5, sankey_page.row_6, sankey_page.row_7, sankey_page.row_8,
      sankey_page.row_9, sankey_page.count]
    filters:
      sankey_page.row_1: "-NULL"
      sankey_page.row_2: "-NULL"
      sankey_page.row_3: "-NULL"
    sorts: [sankey_page.row_1]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    hidden_fields: [sankey_page.row_9]
    hidden_points_if_no: []
    show_view_names: true
    label_type: name
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Repeat Calls
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 0
    width: 24
    height: 11
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<table style=\"width:100%; border-radius: 6px; background-color:#FFFFFF;\
      \ margin: 0px;\"><tr>\n          <td class=\"vis\" style=\"width:80%; text-align:left;\
      \ padding-left:10px;\">\n            <h1 style=\"color:#005495; margin-bottom:\
      \ 0px;\" > Cash Flow [Sankey] </h1><br>\n            <div style=\"letter-spacing:0.3px;line-height:1;\"\
      >\n              <table style=\"letter-spacing:0.3px;line-height:1.5; margin:\
      \ 0px;\"><tr><td style=\"width:30%;\">\n            <a href=\"https://quantiphi.looker.com/embed/dashboards/1646\"\
      >\n            <font color=\"#005495\" size=\"3\"> Virtual Agent Analytics </font></a>\n\
      \            </td><td style=\"width:20%;\">\n\t    <a href=\"/embed/dashboards/1644\"\
      >\n            <font color=\"#005495\" size=\"3\">| User Analytics </font></a>\n\
      \            </td><td style=\"width:30%;\">\n\t    <a href=\"/embed/dashboards/1647\"\
      >\n            <font color=\"#005495\" size=\"3\">| Action Analytics </font></a>\n\
      \            </td></tr><tr><td>\n\t    <a href=\"/embed/dashboards/1648\">\n\
      \            <font color=\"#005495\" size=\"3\"> Agent Transfer Analytics </font></a>\n\
      \            </td><td>\n            <font color=\"#129fd9\" size=\"3\">| Call\
      \ Flow [Sankey] </font>\n            </td><td>\n            <a href=\"/embed/dashboards/1652\"\
      >\n            <font color=\"#005495\" size=\"3\">| Call Flow [Collapsible Tree]\
      \ </font></a>\n            </td></tr></table>\n            <br/>\n         \
      \   </div>\n          </td>\n          <td>\n            <div><img style=\"\
      width:100%\" src=\"https://logovectorseek.com/wp-content/uploads/2021/06/quantiphi-inc-logo-vector.png\"\
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
