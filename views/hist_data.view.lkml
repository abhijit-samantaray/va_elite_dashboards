# The name of this view in Looker is "Hist Data"
view: hist_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ccai_dataset_bigquery.hist_data`
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

  dimension: json_payload_query_result_advanced_settings_audio_export_gcs_destination {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_advancedSettings_audioExportGcsDestination ;;
  }

  dimension: json_payload_query_result_advanced_settings_logging_settings_enable_interaction_logging {
    type: yesno
    sql: ${TABLE}.jsonPayload_queryResult_advancedSettings_loggingSettings_enableInteractionLogging ;;
  }

  dimension: json_payload_query_result_advanced_settings_speech_settings_endpointer_sensitivity {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_advancedSettings_speechSettings_endpointerSensitivity ;;
  }

  dimension: json_payload_query_result_advanced_settings_speech_settings_no_speech_timeout {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_advancedSettings_speechSettings_noSpeechTimeout ;;
  }

  dimension: json_payload_query_result_current_flow_display_name {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_currentFlow_displayName ;;
  }

  dimension: json_payload_query_result_current_flow_name {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_currentFlow_name ;;
  }

  dimension: json_payload_query_result_current_page_display_name {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_currentPage_displayName ;;
  }

  dimension: json_payload_query_result_current_page_name {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_currentPage_name ;;
  }

  dimension: json_payload_query_result_diagnostic_info_alternative_matched_intents {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_diagnosticInfo_Alternative_Matched_Intents ;;
  }

  dimension: json_payload_query_result_diagnostic_info_execution_sequence {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_diagnosticInfo_Execution_Sequence ;;
  }

  dimension: json_payload_query_result_diagnostic_info_session_id {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_diagnosticInfo_Session_Id ;;
  }

  dimension: json_payload_query_result_diagnostic_info_transition_targets_chain {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_diagnosticInfo_Transition_Targets_Chain ;;
  }

  dimension: json_payload_query_result_diagnostic_info_triggered_transition_names {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_diagnosticInfo_Triggered_Transition_Names ;;
  }

  dimension: json_payload_query_result_diagnostic_info_webhook_latencies__ms_ {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_diagnosticInfo_Webhook_Latencies__ms_ ;;
  }

  dimension: json_payload_query_result_form_filling_info_entity_type {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_formFillingInfo_entityType ;;
  }

  dimension: json_payload_query_result_form_filling_info_parameter {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_formFillingInfo_parameter ;;
  }

  dimension: json_payload_query_result_intent_detection_confidence {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_intentDetectionConfidence ;;
  }

  dimension: json_payload_query_result_intent_display_name {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_intent_displayName ;;
  }

  dimension: json_payload_query_result_intent_name {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_intent_name ;;
  }

  dimension: json_payload_query_result_language_code {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_languageCode ;;
  }

  dimension: json_payload_query_result_match_confidence {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_match_confidence ;;
  }

  dimension: json_payload_query_result_match_event {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_match_event ;;
  }

  dimension: json_payload_query_result_match_intent_display_name {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_match_intent_displayName ;;
  }

  dimension: json_payload_query_result_match_intent_name {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_match_intent_name ;;
  }

  dimension: json_payload_query_result_match_match_type {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_match_matchType ;;
  }

  dimension: json_payload_query_result_match_parameters__acc_num_ {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_match_parameters__acc_num_ ;;
  }

  dimension: json_payload_query_result_match_parameters__account_number_ {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_match_parameters__account_number_ ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_json_payload_query_result_match_parameters__account_number_ {
    type: sum
    sql: ${json_payload_query_result_match_parameters__account_number_} ;;
  }

  measure: average_json_payload_query_result_match_parameters__account_number_ {
    type: average
    sql: ${json_payload_query_result_match_parameters__account_number_} ;;
  }

  dimension: json_payload_query_result_match_parameters__full_name__name {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_match_parameters__full_name__name ;;
  }

  dimension: json_payload_query_result_match_parameters__full_name__original {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_match_parameters__full_name__original ;;
  }

  dimension: json_payload_query_result_match_parameters__number_sequence_ {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_match_parameters__number_sequence_ ;;
  }

  dimension: json_payload_query_result_match_parameters_otp {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_match_parameters_otp ;;
  }

  dimension: json_payload_query_result_match_parameters_ssn {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_match_parameters_ssn ;;
  }

  dimension: json_payload_query_result_match_resolved_input {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_match_resolvedInput ;;
  }

  dimension: json_payload_query_result_parameters__acc_num_ {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_parameters__acc_num_ ;;
  }

  dimension: json_payload_query_result_parameters__account_number_ {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_parameters__account_number_ ;;
  }

  dimension: json_payload_query_result_parameters__full_name__name {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_parameters__full_name__name ;;
  }

  dimension: json_payload_query_result_parameters__full_name__original {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_parameters__full_name__original ;;
  }

  dimension: json_payload_query_result_parameters__number_sequence_ {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_parameters__number_sequence_ ;;
  }

  dimension: json_payload_query_result_parameters_authenticated {
    type: yesno
    sql: ${TABLE}.jsonPayload_queryResult_parameters_authenticated ;;
  }

  dimension: json_payload_query_result_parameters_in_hours {
    type: yesno
    sql: ${TABLE}.jsonPayload_queryResult_parameters_in_hours ;;
  }

  dimension: json_payload_query_result_parameters_is_out_bound_call {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_parameters_isOutBoundCall ;;
  }

  dimension: json_payload_query_result_parameters_is_user_authenticated {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_parameters_is_user_authenticated ;;
  }

  dimension: json_payload_query_result_parameters_language {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_parameters_language ;;
  }

  dimension: json_payload_query_result_parameters_otp {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_parameters_otp ;;
  }

  dimension: json_payload_query_result_parameters_retry_counter {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_parameters_retryCounter ;;
  }

  dimension: json_payload_query_result_parameters_session_id {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_parameters_sessionID ;;
  }

  dimension: json_payload_query_result_parameters_ssn {
    type: number
    sql: ${TABLE}.jsonPayload_queryResult_parameters_ssn ;;
  }

  dimension: json_payload_query_result_response_messages {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_responseMessages ;;
  }

  dimension: json_payload_query_result_text {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_text ;;
  }

  dimension: json_payload_query_result_transcript {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_transcript ;;
  }

  dimension: json_payload_query_result_trigger_intent {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_triggerIntent ;;
  }

  dimension: json_payload_query_result_webhook_display_names {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_webhookDisplayNames ;;
  }

  dimension: json_payload_query_result_webhook_ids {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_webhookIds ;;
  }

  dimension: json_payload_query_result_webhook_latencies {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_webhookLatencies ;;
  }

  dimension: json_payload_query_result_webhook_payloads {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_webhookPayloads ;;
  }

  dimension: json_payload_query_result_webhook_statuses {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_webhookStatuses ;;
  }

  dimension: json_payload_query_result_webhook_tags {
    type: string
    sql: ${TABLE}.jsonPayload_queryResult_webhookTags ;;
  }

  dimension: json_payload_response_id {
    type: string
    sql: ${TABLE}.jsonPayload_responseId ;;
  }

  dimension: json_payload_response_type {
    type: string
    sql: ${TABLE}.jsonPayload_responseType ;;
  }

  dimension: labels_agent_id {
    type: string
    sql: ${TABLE}.labels_agent_id ;;
  }

  dimension: labels_environment_id {
    type: string
    sql: ${TABLE}.labels_environment_id ;;
  }

  dimension: labels_location_id {
    type: string
    sql: ${TABLE}.labels_location_id ;;
  }

  dimension: labels_session_id {
    type: string
    sql: ${TABLE}.labels_session_id ;;
  }

  dimension: log_name {
    type: string
    sql: ${TABLE}.logName ;;
  }

  dimension: receive_location {
    type: string
    sql: ${TABLE}.receiveLocation ;;
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

  dimension: resource_labels_project_id {
    type: string
    sql: ${TABLE}.resource_labels_project_id ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.resource_type ;;
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      json_payload_query_result_intent_display_name,
      json_payload_query_result_current_flow_name,
      json_payload_query_result_current_page_display_name,
      json_payload_query_result_current_flow_display_name,
      log_name,
      json_payload_query_result_match_intent_display_name,
      json_payload_query_result_current_page_name,
      json_payload_query_result_parameters__full_name__name,
      json_payload_query_result_match_parameters__full_name__name,
      json_payload_query_result_intent_name,
      json_payload_query_result_match_intent_name
    ]
  }
}
