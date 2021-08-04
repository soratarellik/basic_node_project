
const qa_self_diagnosis = {
   diagnosis_id : {
        table_name : qa_self_diagnosis,
        column_name : diagnosis_id,
    },
   customer_id : {
        table_name : qa_self_diagnosis,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   date : {
        table_name : qa_self_diagnosis,
        column_name : date,
    },
   establishment_name : {
        table_name : qa_self_diagnosis,
        column_name : establishment_name,
    },
   establishment_type : {
        table_name : qa_self_diagnosis,
        column_name : establishment_type,
    },
   establishment_address : {
        table_name : qa_self_diagnosis,
        column_name : establishment_address,
    },
   establishment_director : {
        table_name : qa_self_diagnosis,
        column_name : establishment_director,
    },
   establishment_siret : {
        table_name : qa_self_diagnosis,
        column_name : establishment_siret,
    },
   legal_person_name : {
        table_name : qa_self_diagnosis,
        column_name : legal_person_name,
    },
   legal_person_address : {
        table_name : qa_self_diagnosis,
        column_name : legal_person_address,
    },
   legal_person_quality : {
        table_name : qa_self_diagnosis,
        column_name : legal_person_quality,
    },
   involved_service : {
        table_name : qa_self_diagnosis,
        column_name : involved_service,
    },
   referent_name : {
        table_name : qa_self_diagnosis,
        column_name : referent_name,
    },
   referent_telephone : {
        table_name : qa_self_diagnosis,
        column_name : referent_telephone,
    },
   referent_mail : {
        table_name : qa_self_diagnosis,
        column_name : referent_mail,
    },
   organization_name : {
        table_name : qa_self_diagnosis,
        column_name : organization_name,
    },
   organization_address : {
        table_name : qa_self_diagnosis,
        column_name : organization_address,
    },
   organisation_quality : {
        table_name : qa_self_diagnosis,
        column_name : organisation_quality,
    },
   organization_person_name : {
        table_name : qa_self_diagnosis,
        column_name : organization_person_name,
    },
   organization_siret : {
        table_name : qa_self_diagnosis,
        column_name : organization_siret,
    },
   establishment_room_number : {
        table_name : qa_self_diagnosis,
        column_name : establishment_room_number,
    },
   max_theoritical_staff : {
        table_name : qa_self_diagnosis,
        column_name : max_theoritical_staff,
    },
   investigated_room_number : {
        table_name : qa_self_diagnosis,
        column_name : investigated_room_number,
    },
   investigated_room_justification : {
        table_name : qa_self_diagnosis,
        column_name : investigated_room_justification,
    },
   window_ventilation_only : {
        table_name : qa_self_diagnosis,
        column_name : window_ventilation_only,
    },
   ventilation_grid : {
        table_name : qa_self_diagnosis,
        column_name : ventilation_grid,
    },
   natural_ventilation : {
        table_name : qa_self_diagnosis,
        column_name : natural_ventilation,
    },
   mechanical_ventilation : {
        table_name : qa_self_diagnosis,
        column_name : mechanical_ventilation,
    },
   simple_extraction_flow : {
        table_name : qa_self_diagnosis,
        column_name : simple_extraction_flow,
    },
   simple_extraction_sweep_flow : {
        table_name : qa_self_diagnosis,
        column_name : simple_extraction_sweep_flow,
    },
   simple_insufflation_flow : {
        table_name : qa_self_diagnosis,
        column_name : simple_insufflation_flow,
    },
   double_flow : {
        table_name : qa_self_diagnosis,
        column_name : double_flow,
    },
   double_sweep_flow : {
        table_name : qa_self_diagnosis,
        column_name : double_sweep_flow,
    },
   last_vent_maintenance_date : {
        table_name : qa_self_diagnosis,
        column_name : last_vent_maintenance_date,
    },
   last_filter_change_date : {
        table_name : qa_self_diagnosis,
        column_name : last_filter_change_date,
    },
   total_room : {
        table_name : qa_self_diagnosis,
        column_name : total_room,
    },
   total_building : {
        table_name : qa_self_diagnosis,
        column_name : total_building,
    },
   total_opening : {
        table_name : qa_self_diagnosis,
        column_name : total_opening,
    },
   total_working_opening : {
        table_name : qa_self_diagnosis,
        column_name : total_working_opening,
    },
   total_accessible_opening : {
        table_name : qa_self_diagnosis,
        column_name : total_accessible_opening,
    },
   total_maniable_opening : {
        table_name : qa_self_diagnosis,
        column_name : total_maniable_opening,
    },
   total_vent : {
        table_name : qa_self_diagnosis,
        column_name : total_vent,
    },
   total_clogged_vent : {
        table_name : qa_self_diagnosis,
        column_name : total_clogged_vent,
    },
   total_dirty_vent : {
        table_name : qa_self_diagnosis,
        column_name : total_dirty_vent,
    },
   recommandation : {
        table_name : qa_self_diagnosis,
        column_name : recommandation,
    },
}
module.exports = qa_self_diagnosis
