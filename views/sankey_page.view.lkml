view: sankey_page {
  derived_table: {
    sql: with T1 as (
        select C.session_id, C.page, C.request_time, S.Is_agent_transfer
        from `qai-insurance-health-prod.ccai_dataset_bigquery.dialogflow_bigquery_export_data_cleaned` C
        join `qai-insurance-health-prod.ccai_dataset_bigquery.ccai_session_data` S
        on C.session_id = S.session_ID
        --where {% condition request_date %} request_time {% endcondition %}
        ),
      T2 as (Select session_id,
        page,
        lead(page) over (partition by session_id order by request_time asc) as next_page,
        request_time
        from T1
        order by session_id),
      T3 as(  select * ,
        case when page = next_page then 0 else 1 end as skip_0
        from T2
        order by session_id),
      T4 as(select session_id,page,request_time,
      row_number() over (partition by session_id order by request_time asc) as row_num,
      from T3
      where skip_0 = 1),
      T5 as (SELECT * FROM
        T4
        PIVOT(max(page) FOR row_num IN (1, 2, 3, 4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30))),
      T6 as (
        SELECT session_id, Is_agent_transfer FROM
        (SELECT session_id,Is_agent_transfer, ROW_NUMBER() OVER (PARTITION BY session_id  ORDER BY request_time  DESC) AS exit_rn
        FROM T1)
        WHERE exit_rn=1
      ),
      T7 as (select
      session_id,
      --agentTransfer_flag,
      min(request_time) as request_time,
      --min(agentTransfer_flag),
      max(_1) as row_1,
      max(_2) as row_2,
      max(_3) as row_3,
      max(_4) as row_4,
      max(_5) as row_5,
      max(_6) as row_6,
      max(_7) as row_7,
      max(_8) as row_8,
      max(_9) as row_9,
      max(_10) as row_10,
      max(_11) as row_11,
      max(_12) as row_12,
      max(_13) as row_13,
      max(_14) as row_14,
      max(_15) as row_15,
      max(_16) as row_16,
      max(_17) as row_17,
      max(_18) as row_18,
      max(_19) as row_19,
      max(_20) as row_20,
      max(_21) as row_21,
      max(_22) as row_22,
      max(_23) as row_23,
      max(_24) as row_24,
      max(_25) as row_25,
      max(_26) as row_26,
      max(_27) as row_27,
      max(_28) as row_28,
      max(_29) as row_29,
      max(_30) as row_30,
       from T5
      group by 1)
      select T6.*,T7.* except(session_id)
      from T7 left join T6 on T7.session_id=T6.session_id
 ;;
  }


  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
    primary_key: yes
  }

  dimension: is_agent_transfer {
    type: number
    sql: ${TABLE}.Is_agent_transfer ;;
  }

  dimension_group: request {
    type: time
    timeframes: [
      raw,
      time,
      millisecond,
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

  dimension: row_1 {
    type: string
    sql: ${TABLE}.row_1 ;;
  }

  dimension: row_2 {
    type: string
    sql: ${TABLE}.row_2 ;;
  }

  dimension: row_3 {
    type: string
    sql: ${TABLE}.row_3 ;;
  }

  dimension: row_4 {
    type: string
    sql: ${TABLE}.row_4 ;;
  }

  dimension: row_5 {
    type: string
    sql: ${TABLE}.row_5 ;;
  }

  dimension: row_6 {
    type: string
    sql: ${TABLE}.row_6 ;;
  }

  dimension: row_7 {
    type: string
    sql: ${TABLE}.row_7 ;;
  }

  dimension: row_8 {
    type: string
    sql: ${TABLE}.row_8 ;;
  }

  dimension: row_9 {
    type: string
    sql: ${TABLE}.row_9 ;;
  }

  dimension: row_10 {
    type: string
    sql: ${TABLE}.row_10 ;;
  }

  dimension: row_11 {
    type: string
    sql: ${TABLE}.row_11 ;;
  }

  dimension: row_12 {
    type: string
    sql: ${TABLE}.row_12 ;;
  }

  dimension: row_13 {
    type: string
    sql: ${TABLE}.row_13 ;;
  }

  dimension: row_14 {
    type: string
    sql: ${TABLE}.row_14 ;;
  }

  dimension: row_15 {
    type: string
    sql: ${TABLE}.row_15 ;;
  }

  dimension: row_16 {
    type: string
    sql: ${TABLE}.row_16 ;;
  }

  dimension: row_17 {
    type: string
    sql: ${TABLE}.row_17 ;;
  }

  dimension: row_18 {
    type: string
    sql: ${TABLE}.row_18 ;;
  }

  dimension: row_19 {
    type: string
    sql: ${TABLE}.row_19 ;;
  }

  dimension: row_20 {
    type: string
    sql: ${TABLE}.row_20 ;;
  }

  dimension: row_21 {
    type: string
    sql: ${TABLE}.row_21 ;;
  }

  dimension: row_22 {
    type: string
    sql: ${TABLE}.row_22 ;;
  }

  dimension: row_23 {
    type: string
    sql: ${TABLE}.row_23 ;;
  }

  dimension: row_24 {
    type: string
    sql: ${TABLE}.row_24 ;;
  }

  dimension: row_25 {
    type: string
    sql: ${TABLE}.row_25 ;;
  }

  dimension: row_26 {
    type: string
    sql: ${TABLE}.row_26 ;;
  }

  dimension: row_27 {
    type: string
    sql: ${TABLE}.row_27 ;;
  }

  dimension: row_28 {
    type: string
    sql: ${TABLE}.row_28 ;;
  }

  dimension: row_29 {
    type: string
    sql: ${TABLE}.row_29 ;;
  }

  dimension: row_30 {
    type: string
    sql: ${TABLE}.row_30 ;;
  }

  measure: count {
    type: count_distinct
    sql: ${session_id} ;;
  }

  set: detail {
    fields: [
      session_id,
      is_agent_transfer,
      request_time,
      row_1,
      row_2,
      row_3,
      row_4,
      row_5,
      row_6,
      row_7,
      row_8,
      row_9,
      row_10,
      row_11,
      row_12,
      row_13,
      row_14,
      row_15,
      row_16,
      row_17,
      row_18,
      row_19,
      row_20,
      row_21,
      row_22,
      row_23,
      row_24,
      row_25,
      row_26,
      row_27,
      row_28,
      row_29,
      row_30
    ]
  }
}
