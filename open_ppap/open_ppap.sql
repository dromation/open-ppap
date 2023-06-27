BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "PPAP_SUPPLIER" (
	"ppap_number"	INTEGER,
	"ppap_level"	INTEGER,
	"ppap_project_name"	INTEGER,
	"ppap_project_number"	INTEGER,
	"ppap_product_name"	INTEGER,
	"ppap_product_number"	INTEGER,
	"ppap_supplier_name"	INTEGER,
	"ppap_supplier_number"	INTEGER,
	"ppap_supplier_site"	INTEGER,
	"ppap_supplier_address"	INTEGER,
	"ppap_supplier_country"	INTEGER,
	"ppap_supplier_state"	INTEGER,
	"ppap_supplier_code"	INTEGER,
	"ppap_supplier_phone"	INTEGER,
	"ppap_supplier_contact_person"	INTEGER,
	PRIMARY KEY("ppap_number","ppap_level","ppap_project_name","ppap_project_number","ppap_product_name","ppap_product_number")
);
CREATE TABLE IF NOT EXISTS "PPAP_PRODUCT" (
	"ppap_product_id"	INTEGER,
	"ppap_product_name"	INTEGER,
	"ppap_product_number"	INTEGER,
	"ppap_level"	INTEGER,
	"ppap_product_safety"	INTEGER,
	"ppap_product_regulation"	INTEGER,
	"ppap_product_special"	INTEGER,
	PRIMARY KEY("ppap_product_number","ppap_product_id","ppap_product_name","ppap_level")
);
CREATE TABLE IF NOT EXISTS "PPAP_LEVEL" (
	"ppap_project_id"	INTEGER,
	"ppap_number"	INTEGER,
	"ppap_product_id"	INTEGER,
	"ppap_level"	INTEGER,
	"ppap_product_regulation"	INTEGER
);
CREATE TABLE IF NOT EXISTS "PPAP_PROJECT" (
	"ppap_number"	INTEGER,
	"ppap_project_id"	INTEGER,
	"ppap_product_id"	INTEGER,
	"ppap_project_name"	INTEGER,
	"ppap_project_number"	INTEGER,
	"ppap_product_name"	INTEGER,
	"ppap_product_number"	INTEGER,
	"ppap_manager"	INTEGER,
	"ppap_project_manager"	INTEGER,
	"ppap_supplier_manager"	INTEGER,
	"ppap_review_team"	TEXT,
	"ppap_supplier_team"	TEXT,
	"ppap_level"	NUMERIC,
	"ppap_original_date"	INTEGER,
	"ppap_revision_date"	INTEGER,
	"ppap_project_status"	INTEGER,
	"ppap_project_phase"	INTEGER,
	PRIMARY KEY("ppap_project_id","ppap_product_id","ppap_project_name","ppap_project_number","ppap_product_name","ppap_product_number","ppap_manager","ppap_project_manager","ppap_supplier_manager","ppap_review_team","ppap_supplier_team","ppap_number","ppap_level","ppap_original_date","ppap_revision_date")
);
CREATE TABLE IF NOT EXISTS "PPAP_TEAM" (
	"ppap_number"	INTEGER,
	"ppap_product_id"	INTEGER,
	"ppap_manager"	INTEGER,
	"ppap_project_manager"	INTEGER,
	"ppap_core_team"	TEXT,
	"ppap_supplier_name"	INTEGER,
	"ppap_supplier_contact_person"	INTEGER,
	"ppap_supplier_members"	INTEGER
);
CREATE TABLE IF NOT EXISTS "PPAP_ELEMENTS" (
	"ppap_number"	INTEGER,
	"ppap_level"	INTEGER,
	"ppap_psw"	INTEGER,
	"ppap_design_record"	INTEGER,
	"ppap_customer_approval"	INTEGER,
	"ppap_DFMEA_number"	INTEGER,
	"ppap_PFD_number"	INTEGER,
	"ppap_PFMEA_number"	INTEGER,
	"ppap_CP_number"	INTEGER,
	"ppap_MSA_number"	INTEGER,
	"ppap_GRR_number"	INTEGER,
	"ppap_DR_report"	INTEGER,
	"ppap_MPT_report"	INTEGER,
	"ppap_IPS_report"	INTEGER,
	"ppap_results_graph"	INTEGER,
	"ppap_QLD"	INTEGER,
	"ppap_AAR"	INTEGER,
	"ppap_RandR"	INTEGER,
	"ppap_trialR"	INTEGER,
	"ppap_master_sample"	INTEGER,
	"ppap_CA"	INTEGER,
	"ppap_customer_reqs"	INTEGER
);
CREATE TABLE IF NOT EXISTS "PPAP_PSW" (
	"ppap_number"	INTEGER,
	"ppap_project_id"	INTEGER,
	"ppap_product_id"	INTEGER,
	"ppap_level"	INTEGER,
	"ppap_manager"	INTEGER,
	"ppap_supplier_contact_person"	INTEGER,
	"ppap_project_manager"	INTEGER,
	"ppap_supplier_members"	INTEGER,
	"ppap_psw_product_info"	TEXT,
	"ppap_psw_product_revision_date"	INTEGER,
	"ppap_psw_drawing_number"	INTEGER,
	"ppap_psw_description"	TEXT,
	"ppap_psw_deliverables"	INTEGER,
	"ppap_psw_items_list"	BLOB,
	"ppap_psw_approval"	INTEGER,
	"ppap_psw_signatures"	TEXT,
	"ppap_psw_references"	TEXT,
	"ppap_psw_remarks"	TEXT,
	"ppap_psw_sustainability"	TEXT,
	"ppap_psw_submission_results"	TEXT,
	"ppap_psw_declaration"	INTEGER
);
CREATE TABLE IF NOT EXISTS "PPAP_DESIGN_RECORD" (
	"ppap_number"	INTEGER,
	"ppap_project_number"	INTEGER,
	"ppap_product_number"	INTEGER,
	"ppap_project_name"	INTEGER,
	"ppap_product_name"	INTEGER,
	"ppap_dr_drawing"	INTEGER,
	"ppap_product_drawing"	INTEGER,
	"ppap_drawing_number"	INTEGER,
	"ppap_product_desc"	INTEGER,
	"ppap_dr_remarks"	INTEGER
);
CREATE TABLE IF NOT EXISTS "PPAP_CUSTOMER_APPROVAL" (
	"ppap_number"	INTEGER,
	"ppap_ca_id"	INTEGER,
	"ppap_ca_number"	INTEGER,
	"ppap_ca_dev_number"	INTEGER,
	"ppap_ca_deviation"	INTEGER,
	"ppap_ca_dev_origin"	INTEGER,
	"ppap_ca_subject"	INTEGER,
	"ppap_ca_responsible"	INTEGER,
	"ppap_ca_supplier_responsible"	INTEGER,
	"ppap_ca_status"	INTEGER
);
CREATE TABLE IF NOT EXISTS "PPAP_FMEA" (
	"ppap_number"	INTEGER,
	"ppap_project_id"	INTEGER,
	"ppap_product_id"	INTEGER,
	"ppap_fmea_id"	INTEGER,
	"ppap_fmea_type"	INTEGER,
	"ppap_fmea_number"	INTEGER,
	"ppap_fmea_status"	INTEGER
);
CREATE TABLE IF NOT EXISTS "PPAP_FMEA_TYPE" (
	"ppap_number"	INTEGER,
	"ppap_product_id"	INTEGER,
	"ppap_project_id"	INTEGER,
	"ppap_design_fmea"	BLOB,
	"ppap_process_fmea"	BLOB
);
CREATE TABLE IF NOT EXISTS "PPAP_CONTROL_PLAN" (
	"ppap_number"	INTEGER,
	"ppap_product_id"	INTEGER,
	"ppap_product_name"	INTEGER,
	"ppap_controlp_number"	INTEGER,
	"ppap_controlp_supplier"	INTEGER,
	"ppap_controlp_supplier_members"	INTEGER,
	"ppap_controlp_ca_approval"	INTEGER,
	"ppap_controlp_contacts"	INTEGER,
	"ppap_control_plan"	BLOB
);
COMMIT;
