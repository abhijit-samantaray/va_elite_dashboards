view: collapsible_tree_page {

  derived_table: {
    explore_source: dialogflow_bigquery_export_data_cleaned {
      column: session_id {field:sankey_page.session_id}
      column: row_1 {field:sankey_page.row_1}
      column: row_2 {field:sankey_page.row_2}
      column: row_3 {field:sankey_page.row_3}
      column: row_4 {field:sankey_page.row_4}
      column: row_5 {field:sankey_page.row_5}
      column: row_6 {field:sankey_page.row_6}
      column: row_7 {field:sankey_page.row_7}
      column: row_8 {field:sankey_page.row_8}
      column: row_9 {field:sankey_page.row_9}
      column: row_10 {field:sankey_page.row_10}
      column: row_11 {field:sankey_page.row_11}
      column: row_12 {field:sankey_page.row_12}
      column: row_13 {field:sankey_page.row_13}
      column: row_14 {field:sankey_page.row_14}
      column: row_15 {field:sankey_page.row_15}
      column: row_16 {field:sankey_page.row_16}
      column: row_17 {field:sankey_page.row_17}
      column: row_18 {field:sankey_page.row_18}
      column: row_19 {field:sankey_page.row_19}
      column: row_20 {field:sankey_page.row_20}
      column: row_21 {field:sankey_page.row_21}
      column: row_22 {field:sankey_page.row_22}
      column: row_23 {field:sankey_page.row_23}
      column: row_24 {field:sankey_page.row_24}
      column: row_25 {field:sankey_page.row_25}
      column: row_26 {field:sankey_page.row_26}
      column: row_27 {field:sankey_page.row_27}
      column: row_28 {field:sankey_page.row_28}
      column: row_29 {field:sankey_page.row_29}
      column: row_30 {field:sankey_page.row_30}
      derived_column: count_row_1 {sql:count(session_id) over (partition by row_1);;}
      derived_column: count_row_2 {sql:count(session_id) over (partition by row_1,row_2);;}
      derived_column: count_row_3 {sql:count(session_id) over (partition by row_1,row_2,row_3);;}
      derived_column: count_row_4 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4);;}
      derived_column: count_row_5 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5);;}
      derived_column: count_row_6 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6);;}
      derived_column: count_row_7 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7);;}
      derived_column: count_row_8 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8);;}
      derived_column: count_row_9 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9);;}
      derived_column: count_row_10 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10);;}
      derived_column: count_row_11 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11);;}
      derived_column: count_row_12 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12);;}
      derived_column: count_row_13 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13);;}
      derived_column: count_row_14 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14);;}
      derived_column: count_row_15 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15);;}
      derived_column: count_row_16 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16);;}
      derived_column: count_row_17 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17);;}
      derived_column: count_row_18 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18);;}
      derived_column: count_row_19 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18,row_19);;}
      derived_column: count_row_20 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18,row_19,row_20);;}
      derived_column: count_row_21 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18,row_19,row_20,row_21);;}
      derived_column: count_row_22 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18,row_19,row_20,row_21,row_22);;}
      derived_column: count_row_23 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18,row_19,row_20,row_21,row_22,row_23);;}
      derived_column: count_row_24 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18,row_19,row_20,row_21,row_22,row_23,row_24);;}
      derived_column: count_row_25 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18,row_19,row_20,row_21,row_22,row_23,row_24,row_25);;}
      derived_column: count_row_26 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18,row_19,row_20,row_21,row_22,row_23,row_24,row_25,row_26);;}
      derived_column: count_row_27 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18,row_19,row_20,row_21,row_22,row_23,row_24,row_25,row_26,row_27);;}
      derived_column: count_row_28 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18,row_19,row_20,row_21,row_22,row_23,row_24,row_25,row_26,row_27,row_28);;}
      derived_column: count_row_29 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18,row_19,row_20,row_21,row_22,row_23,row_24,row_25,row_26,row_27,row_28,row_29);;}
      derived_column: count_row_30 {sql:count(session_id) over (partition by row_1,row_2,row_3,row_4,row_5,row_6,row_7,row_8,row_9,row_10,row_11,row_12,row_13,row_14,row_15,row_16,row_17,row_18,row_19,row_20,row_21,row_22,row_23,row_24,row_25,row_26,row_27,row_28,row_29,row_30);;}

      timezone: EST5EDT
      bind_all_filters: yes
    }

  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
    primary_key: yes
  }

  dimension: row_1 {
    type: string
    sql:case when  ${TABLE}.row_1 is null then concat( "null","(",${TABLE}.count_row_1,")") else
      concat( ${TABLE}.row_1,"(",${TABLE}.count_row_1,")") end;;
  }

  dimension: row_2 {
    type: string
    sql: case when  ${TABLE}.row_2 is null then concat( "null","(",${TABLE}.count_row_2,")") else
      concat( ${TABLE}.row_2,"(",${TABLE}.count_row_2,")") end;;
  }

  dimension: row_3 {
    type: string
    sql: case when  ${TABLE}.row_3 is null then concat( "null","(",${TABLE}.count_row_3,")") else
      concat( ${TABLE}.row_3,"(",${TABLE}.count_row_3,")") end ;;
  }

  dimension: row_4 {
    type: string
    sql:case when  ${TABLE}.row_4 is null then concat( "null","(",${TABLE}.count_row_4,")") else
      concat( ${TABLE}.row_4,"(",${TABLE}.count_row_4,")") end  ;;
  }

  dimension: row_5 {
    type: string
    sql: case when  ${TABLE}.row_5 is null then concat( "null","(",${TABLE}.count_row_5,")") else
      concat( ${TABLE}.row_5,"(",${TABLE}.count_row_5,")") end ;;
  }

  dimension: row_6 {
    type: string
    sql: case when  ${TABLE}.row_6 is null then concat( "null","(",${TABLE}.count_row_6,")") else
      concat( ${TABLE}.row_6,"(",${TABLE}.count_row_6,")") end ;;
  }

  dimension: row_7 {
    type: string
    sql: case when  ${TABLE}.row_7 is null then concat( "null","(",${TABLE}.count_row_7,")") else
      concat( ${TABLE}.row_7,"(",${TABLE}.count_row_7,")") end  ;;
  }

  dimension: row_8 {
    type: string
    sql: case when  ${TABLE}.row_8 is null then concat( "null","(",${TABLE}.count_row_8,")") else
      concat( ${TABLE}.row_8,"(",${TABLE}.count_row_8,")") end ;;
  }
  dimension: row_9 {
    type: string
    sql: case when  ${TABLE}.row_9 is null then concat( "null","(",${TABLE}.count_row_9,")") else
      concat( ${TABLE}.row_9,"(",${TABLE}.count_row_9,")") end ;;
  }

  dimension: row_10 {
    type: string
    sql: case when  ${TABLE}.row_10 is null then concat( "null","(",${TABLE}.count_row_10,")") else
      concat( ${TABLE}.row_10,"(",${TABLE}.count_row_10,")") end ;;
  }

  dimension: row_11 {
    type: string
    sql: case when  ${TABLE}.row_11 is null then concat( "null","(",${TABLE}.count_row_11,")") else
      concat( ${TABLE}.row_11,"(",${TABLE}.count_row_11,")") end ;;
  }

  dimension: row_12 {
    type: string
    sql: case when  ${TABLE}.row_12 is null then concat( "null","(",${TABLE}.count_row_12,")") else
      concat( ${TABLE}.row_12,"(",${TABLE}.count_row_12,")") end ;;
  }

  dimension: row_13 {
    type: string
    sql: case when  ${TABLE}.row_13 is null then concat( "null","(",${TABLE}.count_row_13,")") else
      concat( ${TABLE}.row_13,"(",${TABLE}.count_row_13,")") end ;;
  }

  dimension: row_14 {
    type: string
    sql: case when  ${TABLE}.row_14 is null then concat( "null","(",${TABLE}.count_row_14,")") else
      concat( ${TABLE}.row_14,"(",${TABLE}.count_row_14,")") end ;;
  }

  dimension: row_15 {
    type: string
    sql: case when  ${TABLE}.row_15 is null then concat( "null","(",${TABLE}.count_row_15,")") else
      concat( ${TABLE}.row_15,"(",${TABLE}.count_row_15,")") end ;;
  }

  dimension: row_16 {
    type: string
    sql: case when  ${TABLE}.row_16 is null then concat( "null","(",${TABLE}.count_row_16,")") else
      concat( ${TABLE}.row_16,"(",${TABLE}.count_row_16,")") end ;;
  }

  dimension: row_17 {
    type: string
    sql: case when  ${TABLE}.row_17 is null then concat( "null","(",${TABLE}.count_row_17,")") else
      concat( ${TABLE}.row_17,"(",${TABLE}.count_row_17,")") end ;;
  }

  dimension: row_18 {
    type: string
    sql: case when  ${TABLE}.row_18 is null then concat( "null","(",${TABLE}.count_row_18,")") else
      concat( ${TABLE}.row_18,"(",${TABLE}.count_row_18,")") end ;;
  }

  dimension: row_19 {
    type: string
    sql: case when  ${TABLE}.row_19 is null then concat( "null","(",${TABLE}.count_row_19,")") else
      concat( ${TABLE}.row_19,"(",${TABLE}.count_row_19,")") end ;;
  }

  dimension: row_20 {
    type: string
    sql: case when  ${TABLE}.row_20 is null then concat( "null","(",${TABLE}.count_row_20,")") else
      concat( ${TABLE}.row_20,"(",${TABLE}.count_row_20,")") end ;;
  }

  dimension: row_21 {
    type: string
    sql: case when  ${TABLE}.row_21 is null then concat( "null","(",${TABLE}.count_row_21,")") else
      concat( ${TABLE}.row_21,"(",${TABLE}.count_row_21,")") end ;;
  }

  dimension: row_22 {
    type: string
    sql: case when  ${TABLE}.row_22 is null then concat( "null","(",${TABLE}.count_row_22,")") else
      concat( ${TABLE}.row_22,"(",${TABLE}.count_row_22,")") end ;;
  }

  dimension: row_23 {
    type: string
    sql: case when  ${TABLE}.row_23 is null then concat( "null","(",${TABLE}.count_row_23,")") else
      concat( ${TABLE}.row_23,"(",${TABLE}.count_row_23,")") end ;;
  }

  dimension: row_24 {
    type: string
    sql: case when  ${TABLE}.row_24 is null then concat( "null","(",${TABLE}.count_row_24,")") else
      concat( ${TABLE}.row_24,"(",${TABLE}.count_row_24,")") end ;;
  }

  dimension: row_25 {
    type: string
    sql: case when  ${TABLE}.row_25 is null then concat( "null","(",${TABLE}.count_row_25,")") else
      concat( ${TABLE}.row_25,"(",${TABLE}.count_row_25,")") end ;;
  }

  dimension: row_26 {
    type: string
    sql: case when  ${TABLE}.row_26 is null then concat( "null","(",${TABLE}.count_row_26,")") else
      concat( ${TABLE}.row_26,"(",${TABLE}.count_row_26,")") end ;;
  }

  dimension: row_27 {
    type: string
    sql: case when  ${TABLE}.row_27 is null then concat( "null","(",${TABLE}.count_row_27,")") else
      concat( ${TABLE}.row_27,"(",${TABLE}.count_row_27,")") end ;;
  }

  dimension: row_28 {
    type: string
    sql: case when  ${TABLE}.row_28 is null then concat( "null","(",${TABLE}.count_row_28,")") else
      concat( ${TABLE}.row_28,"(",${TABLE}.count_row_28,")") end ;;
  }

  dimension: row_29 {
    type: string
    sql: case when  ${TABLE}.row_29 is null then concat( "null","(",${TABLE}.count_row_29,")") else
      concat( ${TABLE}.row_29,"(",${TABLE}.count_row_29,")") end ;;
  }

  dimension: row_30 {
    type: string
    sql: case when  ${TABLE}.row_30 is null then concat( "null","(",${TABLE}.count_row_30,")") else
      concat( ${TABLE}.row_30,"(",${TABLE}.count_row_30,")") end ;;
  }

  measure: count {
    type: count_distinct
    sql: ${session_id} ;;
  }

}
