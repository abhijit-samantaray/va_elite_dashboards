# Define the database connection to be used for this model.
connection: "test_connection_-_qinsightstandalone"

# include all the views
include: "/views/**/*.view"
include: "/Lookml_dashboards/**/*.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: qai_va_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: qai_va_analytics_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Qai Va Analytics"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: dialogflow_bigquery_export_data_cleaned {
  join: ccai_session_data {
    type: left_outer
    relationship: many_to_one
    sql_on: ${dialogflow_bigquery_export_data_cleaned.session_id} = ${ccai_session_data.session_id} ;;
  }

  join: repeat_caller_flag {
    type: left_outer
    relationship: many_to_one
    sql_on: ${dialogflow_bigquery_export_data_cleaned.session_id}=${repeat_caller_flag.session_id} ;;
  }

  join: sankey_page {
    type: left_outer
    relationship: many_to_one
    sql_on: ${dialogflow_bigquery_export_data_cleaned.session_id}=${sankey_page.session_id} ;;
  }

  join: collapsible_tree_page {
    type: left_outer
    relationship: one_to_one
    sql_on: ${dialogflow_bigquery_export_data_cleaned.session_id}=${collapsible_tree_page.session_id} ;;
  }
}
