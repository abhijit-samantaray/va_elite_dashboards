
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

  dimension: phone_number{
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: intent_triggered {
    type: string
    sql: ${TABLE}.intent_triggered ;;
  }

  dimension: intent_for_logs {
    label: "Action"
    type: string
    sql: case when ${match_type}type}="INTENT" or ${match_type}type}="DIRECT_INTENT" then ${intent_triggered} else ${match_type}type} end ;;
  }

  dimension: interaction_id {
    type: string
    sql: ${TABLE}.interaction_id ;;
    suggest_persist_for: "15 minutes"
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
      millisecond,
      date,
      week,
      month,
      month_name,
      quarter,
      hour_of_day,
      day_of_week,
      year
    ]
    sql: ${TABLE}.request_time ;;
  }

  dimension: date {
    type: date
    sql:${TABLE}.request_time  ;;
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

  dimension_group: response {
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
    sql: ${TABLE}.response_time ;;
  }

  dimension: time_bucket {
    type: string
    case: {
      when: {
        sql: ${request_hour_of_day}=0;;
        label: "12AM - 01AM"
      }
      when: {
        sql: ${request_hour_of_day}=1;;
        label: "01AM - 02AM"
      }
      when: {
        sql: ${request_hour_of_day}=2;;
        label: "02AM - 03AM"
      }
      when: {
        sql: ${request_hour_of_day}=3;;
        label: "03AM - 04AM"
      }
      when: {
        sql: ${request_hour_of_day}=4;;
        label: "04AM - 05AM"
      }
      when: {
        sql: ${request_hour_of_day}=5;;
        label: "05AM - 06AM"
      }
      when: {
        sql: ${request_hour_of_day}=6;;
        label: "06AM - 07AM"
      }
      when: {
        sql: ${request_hour_of_day}=7;;
        label: "07AM - 08AM"
      }
      when: {
        sql: ${request_hour_of_day}=8;;
        label: "08AM - 09AM"
      }
      when: {
        sql: ${request_hour_of_day}=9;;
        label: "09AM - 10AM"
      }
      when: {
        sql: ${request_hour_of_day}=10;;
        label: "10AM - 11AM"
      }
      when: {
        sql: ${request_hour_of_day}=11;;
        label: "11AM - 12PM"
      }
      when: {
        sql: ${request_hour_of_day}=12;;
        label: "12PM - 01PM"
      }
      when: {
        sql: ${request_hour_of_day}=13;;
        label: "01PM - 02PM"
      }
      when: {
        sql: ${request_hour_of_day}=14;;
        label: "02PM - 03PM"
      }
      when: {
        sql: ${request_hour_of_day}=15;;
        label: "03PM - 04PM"
      }
      when: {
        sql: ${request_hour_of_day}=16;;
        label: "04PM - 05PM"
      }
      when: {
        sql: ${request_hour_of_day}=17;;
        label: "05PM - 06PM"
      }
      when: {
        sql: ${request_hour_of_day}=18;;
        label: "06PM - 07PM"
      }
      when: {
        sql: ${request_hour_of_day}=19;;
        label: "07PM - 08PM"
      }
      when: {
        sql: ${request_hour_of_day}=20;;
        label: "08PM - 09PM"
      }
      when: {
        sql: ${request_hour_of_day}=21;;
        label: "09PM - 10PM"
      }
      when: {
        sql: ${request_hour_of_day}=22;;
        label: "10PM - 11PM"
      }
      when: {
        sql: ${request_hour_of_day}=23;;
        label: "11PM - 12AM"
      }

    }
  }

  dimension: response_id {
    type: string
    sql: ${TABLE}.response_id ;;
  }

  dimension: sentiment_magnitude {
    type: number
    sql: ${TABLE}.sentiment_magnitude ;;
  }

  dimension: sentiment_score {
    type: number
    sql: ${TABLE}.sentiment_score ;;
  }

  dimension: session_id {
    label: "Call ID"
    type: string
    sql: ${TABLE}.session_id ;;
    suggest_persist_for: "15 minutes"
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.time_zone ;;
  }

  dimension: user_query {
    label: "User Request"
    type: string
    sql: ${TABLE}.user_query ;;
  }

  dimension: success_rate {
    type: string
    sql: case when ${match_type}="NO_MATCH" then "No Match" else "Match" end;;
  }

  dimension: query_breakdown {
    label: "User Request Breakdown"
    type: string
    sql: case when ${match_type}="NO_MATCH" then "Unhandled Queries" else "Handled Queries" end;;
  }



  measure: count {
    type: count
    drill_fields: []
  }

  measure: avg_sentiment_score {
    type: average
    sql: trunc(round(ifnull(${TABLE}.sentiment_score,0.001),3),3) ;;
    value_format: "0.000"
  }

  dimension: sentiment_category {
    type: string
    description: "Negative sentiment score is bad, 0 sentiment score is neutral, and positive sentiment score is good."
    sql: CASE
              WHEN ${sentiment_score} <= -0.05 THEN "Negative"
              WHEN ${sentiment_score} >= 0.05 THEN "Positive"
              ELSE "Neutral" END;;
  }

  measure: total_sentiment_magnitude {
    type: sum
    sql: ${sentiment_magnitude} ;;
  }

  measure: average_sentiment_magnitude {
    type: average
    sql: ${sentiment_magnitude} ;;
  }

  measure: count_session {
    label: "Total calls"
    type: count_distinct
    sql:${session_id}  ;;
  }

  measure: total_responses {
    description: "Total number of messages"
    type: count_distinct
    sql: ${response_id} ;;
  }

  measure: avg_session_per_day {
    type: number
    sql:count(distinct ${session_id})/nullif(count(distinct ${request_date}),0)  ;;
    value_format: "0"
  }

  measure: avg_query_per_session {
    type: number
    sql: count(${response_id})/nullif(count(Distinct ${session_id}),0) ;;
    value_format: "0"
  }

  measure: avg_confidence_score {
    type: average
    sql: ${intent_detection_confidence} ;;
    value_format: "0.00"
  }

  measure: Handled_Queries {
    type: count_distinct
    sql: ${response_id} ;;
    filters: [match_type: "DIRECT_INTENT, INTENT, NO_INPUT, PARAMETER_FILLING"]
  }

  measure: Unhandled_Queries {
    type: count_distinct
    sql: ${response_id} ;;
    filters: [match_type: "NO_MATCH"]
  }

  measure: agent_routing_rate {
    type: number
    sql: count(distinct (case when ${intent_triggered}="Agent" then ${session_id} end))/
      nullif(count(distinct ${session_id}),0);;
    value_format: "0.00%"
  }

  measure: influenced_agent {
    type: number
    sql: count(distinct case when ${intent_triggered}="Agent" then ${session_id} end)/ nullif(count(distinct ${session_id}),0) ;;
    value_format: "0.00%"
  }

  measure: va_offer_rate_with_title{
    type: percent_of_total
    sql: ${count} ;;
    html: {{value | number_with_delimiter | divided_by: 1 | round: 2 | times: 1}}% <br><h4 style="margin-top:0; font-size: 16px;">Voice Bot Success Rate</h4>;;
  }
}
