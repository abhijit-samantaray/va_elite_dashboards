view: repeat_caller_flag {
  derived_table: {
    sql: with flowname_group as (SELECT session_id, phone_number,flow_name, min(request_time) as request_time
            FROM `qai-insurance-health-prod.ccai_dataset_bigquery.dialogflow_bigquery_export_data_cleaned`
            where phone_number is not null and flow_name is not null
            --and {% condition request_date %} request_time {% endcondition %}
            group by session_id,phone_number,flow_name
            order by session_id,phone_number,flow_name),
            ---Creating a new column next_timestamp which is next in partition group for timestamp difference
            flowname_lead as (
            select flowname_group.*,
            --adding a lead column over flowname to check timestamp difference
            LEAD(request_time) OVER (PARTITION BY phone_number,flow_name ORDER BY request_time desc) AS next_timestamp
            from flowname_group),
            ---Finding which two consecutive timestamp has less than 24 hours difference
            ---Finding which caller who has called for same flow and storing 1 as a floag for the phone number
            repeat_caller as(select
            flowname_lead.*,
            max(case when timestamp_diff(request_time, next_timestamp, hour)<=24 then 1 else 0 end) over (partition by phone_number) as repeat_call_flag
            randbetween(0,1) as repeat_call_flag -- dummy query to generate data
            from flowname_lead)
            select
            repeat_caller.session_id,
            repeat_caller.phone_number,
            repeat_caller.flow_name,
            repeat_caller.request_time,
            --repeat_caller.date,
            repeat_caller.repeat_call_flag
            from repeat_caller
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: phone_number {
    type: number
    sql: ${TABLE}.phone_number ;;
  }

  dimension: flow_name {
    type: string
    sql: ${TABLE}.flow_name ;;
  }

  dimension_group: request {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      hour_of_day,
      day_of_week,
      year
    ]
    sql: ${TABLE}.request_time ;;
  }

  dimension: repeat_call_flag {
    type: number
    sql: ${TABLE}.repeat_call_flag ;;
  }

  measure: average_repeat_call_flag {
    type: average_distinct
    sql_distinct_key: ${phone_number} ;;
    sql: ${repeat_call_flag} ;;
    value_format: "0.00%"
  }

  set: detail {
    fields: [session_id, phone_number, flow_name, request_time, repeat_call_flag]
  }
}
