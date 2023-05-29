# The name of this view in Looker is "Conversation Data Dummy"
view: conversation_data_dummy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ccai_dataset_bigquery.conversation_data_dummy`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bot ID" in Explore.

  dimension: bot_id {
    type: string
    sql: ${TABLE}.bot_id ;;
  }

  dimension: flow_id {
    type: number
    sql: ${TABLE}.flow_id ;;
  }

  dimension: flow_name {
    type: number
    sql: ${TABLE}.flow_name ;;
  }

  dimension: intent_detection_confidence {
    type: number
    sql: ${TABLE}.intent_detection_confidence ;;
  }

  dimension: intent_display_name {
    type: string
    sql: ${TABLE}.intent_display_name ;;
  }

  dimension: is_end_flow {
    type: number
    sql: ${TABLE}.is_end_flow ;;
  }

  dimension: is_end_session {
    type: number
    sql: ${TABLE}.is_end_session ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_end_session {
    type: sum
    sql: ${is_end_session} ;;
  }

  measure: average_is_end_session {
    type: average
    sql: ${is_end_session} ;;
  }

  dimension: is_fallback {
    type: number
    sql: ${TABLE}.is_fallback ;;
  }

  dimension: is_live_agent_transferred {
    type: number
    sql: ${TABLE}.is_live_agent_transferred ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: match_type {
    type: string
    sql: ${TABLE}.match_type ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: page_id {
    type: number
    sql: ${TABLE}.page_id ;;
  }

  dimension: page_name {
    type: number
    sql: ${TABLE}.page_name ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}.query_text ;;
  }

  dimension: response_id {
    type: string
    sql: ${TABLE}.response_id ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: user_sentiment_score {
    type: number
    sql: ${TABLE}.user_sentiment_score ;;
  }

  measure: count {
    type: count
    drill_fields: [flow_name, intent_display_name, page_name]
  }
}
