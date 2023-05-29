# The name of this view in Looker is "Dialogflow Bigquery Export Data Cleaned"
view: dialogflow_bigquery_export_data_cleaned {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ccai_dataset_bigquery.dialogflow_bigquery_export_data_cleaned`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bot Response" in Explore.

  dimension: bot_response {
    type: string
    sql: ${TABLE}.bot_response ;;
  }

  dimension: flow_name {
    type: string
    sql: ${TABLE}.flow_name ;;
  }

  dimension: intent_detection_confidence {
    type: string
    sql: ${TABLE}.intent_detection_confidence ;;
  }

  dimension: intent_triggered {
    type: string
    sql: ${TABLE}.intent_triggered ;;
  }

  dimension: interaction_id {
    type: string
    sql: ${TABLE}.interaction_id ;;
  }

  dimension: list_id {
    type: string
    sql: ${TABLE}.list_id ;;
  }

  dimension: match_type {
    type: string
    sql: ${TABLE}.match_type ;;
  }

  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
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
    datatype: datetime
    sql: ${TABLE}.request_time ;;
  }

  dimension_group: request_time_ist {
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
    datatype: datetime
    sql: ${TABLE}.request_time_ist ;;
  }

  dimension: response_id {
    type: string
    sql: ${TABLE}.response_id ;;
  }

  dimension: sentiment_magnitude {
    type: number
    sql: ${TABLE}.sentiment_magnitude ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sentiment_magnitude {
    type: sum
    sql: ${sentiment_magnitude} ;;
  }

  measure: average_sentiment_magnitude {
    type: average
    sql: ${sentiment_magnitude} ;;
  }

  dimension: sentiment_score {
    type: number
    sql: ${TABLE}.sentiment_score ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.time_zone ;;
  }

  dimension: user_query {
    type: string
    sql: ${TABLE}.user_query ;;
  }

  measure: count {
    type: count
    drill_fields: [flow_name]
  }
}
