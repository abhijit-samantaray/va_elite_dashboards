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

  dimension: agentTransfer_reason {
    type: string
    sql: ${TABLE}.Is_agent_transfer_reason ;;
  }

  dimension: agentTransfer_flag_original {
    type: number
    sql: ${TABLE}.Is_agent_transfer ;;
  }

  dimension: agent_transfer_failure {
    type: string
    sql: ${TABLE}.agent_transfer_failure ;;
  }

  dimension: agentTransfer_flag {
    type: number
    sql: case when ${agentTransfer_flag_original}=1 and ${agentTransfer_reason}!="NO_INPUT" then 1 else 0 end ;;
  }

  dimension: requested_agent_flag {
    type: number
    sql: ${TABLE}.is_planned_agent_transfer ;;
    #dummy data thats why is planned agent transfer column is used
  }

  dimension: caller_requested_agent_transfer {
    type: number
    sql: case when ${agentTransfer_flag} = 1 and ${requested_agent_flag} = 1 then 1 else 0 end;;
  }

  dimension: plannedAgentTransfer_flag {
    type: number
    hidden: yes
    sql: ${TABLE}.is_planned_agent_transfer ;;
  }

  dimension: planned_flag {
    type: number
    sql: case when ${agentTransfer_flag} = 1 and ${plannedAgentTransfer_flag} = 1 then 1 else 0 end ;;
  }

  dimension: unplanned_flag {
    type: number
    sql: case when ${agentTransfer_flag} = 1 and ${plannedAgentTransfer_flag} = 0 then 1 else 0 end ;;
  }

  dimension: containment_flag {
    label: "deflected_flag"
    type: number
    sql: case when (((${TABLE}.is_contained=1)  and ${agentTransfer_flag}=0)
          or (${agentTransfer_reason}="NO_INPUT" and ${agentTransfer_flag_original}=1)
          or (${planned_flag}=1)) then 1 else 0 end ;;
  }

  dimension: containment_flag_excluding_AT {
    label: "containment_flag"
    type: number
    sql: case when (((${TABLE}.is_contained =1)  and ${agentTransfer_flag}=0)
          or (${agentTransfer_reason}="NO_INPUT" and ${agentTransfer_flag_original}=1))
      then 1 else 0 end;;
  }

# dimension: containment_flag {
#   type: number
#   sql: case when ${containment_flag_excluding_AT} = 1 or ${planned_flag} = 1 then 1 else 0 end ;;
# }

  dimension: hung_up_flag {
    type: number
    sql:${TABLE}.is_hungup = 1 ;;

    # case when ${agentTransfer_flag}=0 and ${containment_flag_excluding_AT}=0 then 1 else 0 end ;;
  }

  dimension: call_type {
    type: string
    sql: case when (((${containment_flag_excluding_AT}=1)  and ${agentTransfer_flag}=0)
        or (${agentTransfer_reason}="NO_INPUT" and ${agentTransfer_flag_original}=1)) then "Contained Calls"
        when ${agentTransfer_flag}=0 and cast(${hung_up_flag} as int64)=1 then "Hungup Calls"
        when ${agentTransfer_flag} = 1 and ${plannedAgentTransfer_flag} = 1 then "Planned Agent Transfer"
        when ${agentTransfer_flag} = 1 and ${requested_agent_flag} = 1 then "Unplanned Agent Transfers [Caller Requested]"
        else "Unplanned Agent Transfer [Others]" end;;
  }

  dimension: CSAT_score {
    type: number
    sql: ${TABLE}.csat_score ;;
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
      month_name,
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



  dimension: entry_page {
    type: string
    sql: ${TABLE}.entry_page ;;
  }

  dimension: exit_page {
    type: string
    sql: ${TABLE}.exit_page ;;
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
      month_name,
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

  dimension: Planned_Unplanned {
    label: "Agent Transfer Breakdown"
    type: string
    sql: case when ${agentTransfer_flag} = 1 and ${plannedAgentTransfer_flag} = 1 then "Planned Agent Transfer"
            when ${agentTransfer_flag} = 1 and ${plannedAgentTransfer_flag} = 0 then "UnPlanned Agent Transfer"
            else "No Agent Transfer" end ;;
  }

  dimension: second_last_exit_intent {
    label: "Exit Action Breakdown"
    type: string
    sql: ${TABLE}.second_last_exit_intent ;;
  }

  dimension: second_last_page {
    label: "Exit Page Breakdown"
    type: string
    sql: ${TABLE}.second_last_page ;;
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

  measure: total_planned_agent {
    type: sum_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${planned_flag} ;;
  }

  measure: total_unplanned_agent {
    type: sum_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${unplanned_flag} ;;
  }

  measure: total_unplanned_agent_transfer_percent {
    type: number
    sql: round((${total_unplanned_agent}/${total_agent_transfer})*100,2) ;;
  }

  measure: total_agent_transfer {
    type: sum_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${agentTransfer_flag} ;;
  }

  measure: total_contained_calls {
    type: sum_distinct
    sql_distinct_key: ${session_id} ;;
    sql: cast(${containment_flag_excluding_AT} as int64) ;;
  }

  measure: total_hung_up_calls {
    type: sum_distinct
    sql_distinct_key: ${session_id} ;;
    sql: cast(${hung_up_flag} as int64) ;;
  }

  measure: total_agent_transfer_failure {
    type: sum_distinct
    sql_distinct_key: ${session_id} ;;
    sql: cast(${agent_transfer_failure} as int64) ;;
  }


  measure: containment_rate {
    label: "deflected_rate"
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql:${containment_flag} ;;
    value_format: "0.00%"
  }

  measure: containment_rate_excluding_AT {
    label: "containment_rate"
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${containment_flag_excluding_AT} ;;
    value_format: "0.00%"
  }

  measure: hung_up_rate {
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${hung_up_flag} ;;
    value_format: "0.00%"
  }

  measure: agent_routing_rate {
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${agentTransfer_flag} ;;
    value_format: "0.00%"
  }

  measure: caller_requested_agent_transfer_rate{
    type: average_distinct
    sql_distinct_key: ${session_id};;
    sql: ${caller_requested_agent_transfer} ;;
    value_format: "0.00%"
  }

  measure: average_CSAT_score {
    type: average_distinct
    sql_distinct_key: ${session_id};;
    sql: ${CSAT_score} ;;
    value_format: "0.000"
  }

  measure: total_confirm_issue_resolved {
    description: "Count of sessions where status =CONFIRM_ISSUE_RESOLVED"
    type: count_distinct
    sql: ${session_id} ;;
    filters: [dialogflow_bigquery_export_data_cleaned.intent_triggered: "CONFIRM_ISSUE_RESOLVED"]
  }


  measure: Calls_beyond_Avg_Call_Length{
    hidden: yes
    type:count_distinct
    sql: ${session_id} ;;
    filters: [is_beyond_duration: "yes"]

  }

  measure:per_calls_beyond_avg_call_Length {
    type: number
    sql: ${Calls_beyond_Avg_Call_Length}/nullif(${count_session},0) ;;
    value_format_name: percent_2
  }

  dimension:avg_duration2 {
    hidden: yes
    type: number
    sql: ${conversation_length_in_seconds}/86400 ;;
  }

  dimension: is_beyond_duration {
    hidden: yes
    type: yesno
    sql: ${conversation_length_in_seconds} > ${avg_duration2};;
  }

#### metrics with embedded titles
  measure: containment_rate_with_title {
    type: number
    sql: ${containment_rate} ;;
    html: {{value | number_with_delimiter | divided_by: 1 | round: 4 | times: 100}}% <br><h4 style="margin-top:0; font-size: 16px;">Containment Rate</h4>;;
  }

  measure: agent_routing_rate_with_title {
    type: number
    sql: ${agent_routing_rate} ;;
    html: {{value | number_with_delimiter | divided_by: 1 | round: 4 | times: 100}}% <br><h4 style="margin-top:0; font-size: 16px;">Agent Transfer Rate</h4>;;
  }
####


}
