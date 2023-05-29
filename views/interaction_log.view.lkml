# The name of this view in Looker is "Interaction Log"
view: interaction_log {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ccai_dataset_bigquery.interaction_log`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Insert ID" in Explore.

  dimension: insert_id {
    type: string
    sql: ${TABLE}.insertId ;;
  }

  dimension: labels__protocol {
    type: string
    sql: ${TABLE}.labels.protocol ;;
    group_label: "Labels"
    group_item_label: "Protocol"
  }

  dimension: labels__request_id {
    type: string
    sql: ${TABLE}.labels.request_id ;;
    group_label: "Labels"
    group_item_label: "Request ID"
  }

  dimension: labels__source {
    type: string
    sql: ${TABLE}.labels.source ;;
    group_label: "Labels"
    group_item_label: "Source"
  }

  dimension: labels__type {
    type: string
    sql: ${TABLE}.labels.type ;;
    group_label: "Labels"
    group_item_label: "Type"
  }

  dimension: log_name {
    type: string
    sql: ${TABLE}.logName ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: receive_timestamp {
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
    sql: ${TABLE}.receiveTimestamp ;;
  }

  dimension: resource__labels__project_id {
    type: string
    sql: ${TABLE}.resource.labels.project_id ;;
    group_label: "Resource Labels"
    group_item_label: "Project ID"
  }

  dimension: resource__type {
    type: string
    sql: ${TABLE}.resource.type ;;
    group_label: "Resource"
    group_item_label: "Type"
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }

  dimension: text_payload {
    type: string
    sql: ${TABLE}.textPayload ;;
  }

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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: trace {
    type: string
    sql: ${TABLE}.trace ;;
  }

  measure: count {
    type: count
    drill_fields: [log_name]
  }
}
