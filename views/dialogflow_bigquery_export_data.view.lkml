# The name of this view in Looker is "Dialogflow Bigquery Export Data"
view: dialogflow_bigquery_export_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ccai_dataset_bigquery.dialogflow_bigquery_export_data`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Agent ID" in Explore.

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
  }

  dimension: conversation_name {
    type: string
    sql: ${TABLE}.conversation_name ;;
  }

  dimension: conversation_signals {
    type: string
    sql: ${TABLE}.conversation_signals ;;
  }

  dimension: derived_data {
    type: string
    sql: ${TABLE}.derived_data ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: partial_responses {
    type: string
    sql: ${TABLE}.partial_responses ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: request {
    type: string
    sql: ${TABLE}.request ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: request {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.request_time ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }

  dimension: turn_position {
    type: number
    sql: ${TABLE}.turn_position ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_turn_position {
    type: sum
    sql: ${turn_position} ;;
  }

  measure: average_turn_position {
    type: average
    sql: ${turn_position} ;;
  }

  measure: count {
    type: count
    drill_fields: [conversation_name]
  }
}
