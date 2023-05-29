# The name of this view in Looker is "Ccai Session Data"
view: ccai_session_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ccai_dataset_bigquery.ccai_session_data`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Conversation Length In Seconds" in Explore.

  dimension: conversation_length_in_seconds {
    type: number
    sql: ${TABLE}.conversation_length_in_seconds ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_conversation_length_in_seconds {
    type: sum
    sql: ${conversation_length_in_seconds} ;;
  }

  measure: average_conversation_length_in_seconds {
    type: average
    sql: ${conversation_length_in_seconds} ;;
  }

  dimension: count_of_msg {
    type: number
    sql: ${TABLE}.count_of_msg ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: entry_intent {
    label: "Entry Action"
    type: string
    sql: ${TABLE}.entry_intent ;;
  }

  dimension: exit_intent {
    label: "Exit Action"
    type: string
    sql: ${TABLE}.exit_intent ;;
  }

  dimension: first_intent {
    type: string
    sql: ${TABLE}.first_intent ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension_group: request {
    type: time
    timeframes: [
      raw,
      time,
      hour_of_day,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.request_time ;;
  }

  dimension: hour_bucket {
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

  dimension: duration_bucket{
    label: "Call Duration"
    type: string
    case: {
      when: {
        sql: ${conversation_length_in_seconds}<=60;;
        label: "<1 min"
      }
      when: {
        sql: ${conversation_length_in_seconds}>60 and ${conversation_length_in_seconds}<=180;;
        label: "1-3 min"
      }
      when: {
        sql: ${conversation_length_in_seconds}>180 and ${conversation_length_in_seconds}<=300;;
        label: "3-5 min"
      }
      when: {
        sql: ${conversation_length_in_seconds}>300 and ${conversation_length_in_seconds}<=420;;
        label: "5-7 min"
      }
      when: {
        sql: ${conversation_length_in_seconds}>420 ;;
        label: ">7 min"
      }
    }
  }


  dimension: sentiment_score {
    type: number
    sql: ${TABLE}.sentiment_score ;;
  }

  dimension: sentiment_score_session {
    type: number
    sql: ${TABLE}.sentiment_score;;
  }

  dimension: session_id {
    label: "Call ID"
    type: string
    sql: ${TABLE}.session_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: avg_duration {
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql:(${conversation_length_in_seconds}/86400.0) ;;
    value_format: "[mm]\" m \"ss\" s\""
  }

  measure: count_session {
    label: "Total calls"
    type: count_distinct
    sql:${session_id}  ;;
  }

  measure: avg_query_per_session {
    type: number
    sql: sum(${count_of_msg})/nullif(count(Distinct ${session_id}),0) ;;
    value_format: "0"
  }

  measure: average_sentiment_score {
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql: trunc(round(${TABLE}.sentiment_score,3),3) ;;
    value_format: "0.000"
  }


}
