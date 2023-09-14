- dashboard: call_flow_collapsible_tree
  title: Call Flow [Collapsible Tree]
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: FsjYWitDKCrHGnoNYBDkhX
  elements:
  - title: Call Flow [Collapsible Tree]
    name: Call Flow [Collapsible Tree]
    model: qai_va_analytics
    explore: dialogflow_bigquery_export_data_cleaned
    type: dialogflow_analytics_qai::Collapsable_Tree[Custom_BPA]
    fields: [collapsible_tree_page.row_1, collapsible_tree_page.row_2, collapsible_tree_page.row_3,
      collapsible_tree_page.row_4, collapsible_tree_page.row_5, collapsible_tree_page.row_6,
      collapsible_tree_page.row_7, collapsible_tree_page.row_8, collapsible_tree_page.row_9,
      collapsible_tree_page.count]
    filters:
      collapsible_tree_page.row_1: "-NULL"
      collapsible_tree_page.row_2: -"null(405)",-"null(154)",-"null(144)",-"null(28)"
      collapsible_tree_page.row_3: -"null(27)",-"null(6)",-"null(2)"
    sorts: [collapsible_tree_page.count desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: false
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
    defaults_version: 0
    listen:
      Date: ccai_session_data.date_date
    row: 4
    col: 0
    width: 24
    height: 12
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<table style=\"width:100%; border-radius: 6px; background-color:#FFFFFF;\
      \ margin: 0px;\"><tr>\n          <td class=\"vis\" style=\"width:80%; text-align:left;\
      \ padding-left:10px;\">\n            <h1 style=\"color:#005495; margin-bottom:\
      \ 0px;\" > Call Flow [Collapsible Tree] </h1><br>\n            <div style=\"\
      letter-spacing:0.3px;line-height:1;\">\n              <table style=\"letter-spacing:0.3px;line-height:1.5;\
      \ margin: 0px;\"><tr><td style=\"width:30%;\">\n            <a href=\"https://quantiphi.looker.com/embed/dashboards/1646\"\
      >\n            <font color=\"#005495\" size=\"3\"> Virtual Agent Analytics </font></a>\n\
      \            </td><td style=\"width:20%;\">\n\t    <a href=\"/embed/dashboards/1644\"\
      >\n            <font color=\"#005495\" size=\"3\">| User Analytics </font></a>\n\
      \            </td><td style=\"width:30%;\">\n\t    <a href=\"/embed/dashboards/1647\"\
      >\n            <font color=\"#005495\" size=\"3\">| Action Analytics </font></a>\n\
      \            </td></tr><tr><td>\n\t    <a href=\"/embed/dashboards/1648\">\n\
      \            <font color=\"#005495\" size=\"3\"> Agent Transfer Analytics </font></a>\n\
      \            </td><td>\n\t    <a href=\"/embed/dashboards/1652\">\n        \
      \    <font color=\"#005495\" size=\"3\">| Call Flow [Sankey] </font></a>\n \
      \           </td><td>\n            <font color=\"#129fd9\" size=\"3\">| Call\
      \ Flow [Collapsible Tree] </font>\n            </td></tr></table>\n        \
      \    <br/>\n            </div>\n          </td>\n          <td>\n          \
      \  <div><img style=\"width:100%\" src=\"https://logovectorseek.com/wp-content/uploads/2021/06/quantiphi-inc-logo-vector.png\"\
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
