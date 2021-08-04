
const qa_qai_pack = {
   pack_id : {
        table_name : qa_qai_pack,
        column_name : pack_id,
    },
   sensor_id : {
        table_name : qa_qai_pack,
        column_name : sensor_id,
        foreign_table : qa_sensor,
        foreign_key : sensor_id,
    },
   start_date : {
        table_name : qa_qai_pack,
        column_name : start_date,
    },
   end_date : {
        table_name : qa_qai_pack,
        column_name : end_date,
    },
   room_sample : {
        table_name : qa_qai_pack,
        column_name : room_sample,
    },
   batch : {
        table_name : qa_qai_pack,
        column_name : batch,
    },
   radiello_ref_145 : {
        table_name : qa_qai_pack,
        column_name : radiello_ref_145,
    },
   radiello_ref_165 : {
        table_name : qa_qai_pack,
        column_name : radiello_ref_165,
    },
   temperature_start : {
        table_name : qa_qai_pack,
        column_name : temperature_start,
    },
   number_of_people : {
        table_name : qa_qai_pack,
        column_name : number_of_people,
    },
   vent_frequency_per_day : {
        table_name : qa_qai_pack,
        column_name : vent_frequency_per_day,
    },
   vent_duration_per_day : {
        table_name : qa_qai_pack,
        column_name : vent_duration_per_day,
    },
   external_condition_road_works : {
        table_name : qa_qai_pack,
        column_name : external_condition_road_works,
    },
   external_condition_neighborhood : {
        table_name : qa_qai_pack,
        column_name : external_condition_neighborhood,
    },
   external_condition_industrial_activities : {
        table_name : qa_qai_pack,
        column_name : external_condition_industrial_activities,
    },
   external_condition_other : {
        table_name : qa_qai_pack,
        column_name : external_condition_other,
    },
   particular_event_works : {
        table_name : qa_qai_pack,
        column_name : particular_event_works,
    },
   particular_event_home_fragrance : {
        table_name : qa_qai_pack,
        column_name : particular_event_home_fragrance,
    },
   particular_event_cigarette_smoke : {
        table_name : qa_qai_pack,
        column_name : particular_event_cigarette_smoke,
    },
   particular_event_household_product : {
        table_name : qa_qai_pack,
        column_name : particular_event_household_product,
    },
   particular_event_furniture_change : {
        table_name : qa_qai_pack,
        column_name : particular_event_furniture_change,
    },
   particular_event_other : {
        table_name : qa_qai_pack,
        column_name : particular_event_other,
    },
}
module.exports = qa_qai_pack
