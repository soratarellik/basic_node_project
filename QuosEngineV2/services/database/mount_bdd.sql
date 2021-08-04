-- Auteur : VAN Cyril
-- Création : 27-07-2021
-- Modification : 03-08-2021
-- Version : 2B.1.0

-- Prévoir la mise en place d'index sur les colonnes servant de clés étrangère pour réduire le temps de jointure et de recherche
-- A ne faire que sur des tables qui sont très grandes et qui ont besoin de beaucoup de modifications et de jointure

-- Suppression des tables existantes dans la base de donnéees

DROP TABLE IF EXISTS subscription CASCADE;
DROP TABLE IF EXISTS quos_product CASCADE;
DROP TABLE IF EXISTS address CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS user_token CASCADE;
DROP TABLE IF EXISTS customer CASCADE;	
DROP TABLE IF EXISTS user_product CASCADE;
DROP TABLE IF EXISTS customer_user CASCADE;
DROP TABLE IF EXISTS customer_product CASCADE;
DROP TABLE IF EXISTS user_address_preference CASCADE;

DROP TABLE IF EXISTS role CASCADE;
DROP TABLE IF EXISTS customer_right CASCADE;
DROP TABLE IF EXISTS qa_customer_right CASCADE;
DROP TABLE IF EXISTS qb_customer_right CASCADE;
DROP TABLE IF EXISTS qs_customer_right CASCADE;
DROP TABLE IF EXISTS qt_customer_right CASCADE;
DROP TABLE IF EXISTS qp_customer_right CASCADE;
DROP TABLE IF EXISTS user_right CASCADE;
DROP TABLE IF EXISTS qa_user_right CASCADE;
DROP TABLE IF EXISTS qb_user_right CASCADE;
DROP TABLE IF EXISTS qs_user_right CASCADE;
DROP TABLE IF EXISTS qt_user_right CASCADE;
DROP TABLE IF EXISTS qp_user_right CASCADE;
DROP TABLE IF EXISTS user_access CASCADE;

DROP TABLE IF EXISTS network_name CASCADE;
DROP TABLE IF EXISTS chart_type CASCADE;
DROP TABLE IF EXISTS period_setting CASCADE;
DROP TABLE IF EXISTS granularity_setting CASCADE;
DROP TABLE IF EXISTS mqtt_channel CASCADE;
DROP TABLE IF EXISTS origin_page CASCADE;

DROP TABLE IF EXISTS qa_data_type CASCADE;
DROP TABLE IF EXISTS qa_pn_product CASCADE;
DROP TABLE IF EXISTS qa_sensor CASCADE;
DROP TABLE IF EXISTS qa_sensor_param CASCADE;
DROP TABLE IF EXISTS qa_sensor_date CASCADE;
DROP TABLE IF EXISTS qa_sensor_threshold CASCADE;
DROP TABLE IF EXISTS qa_group CASCADE;
DROP TABLE IF EXISTS qa_sensor_group CASCADE;
DROP TABLE IF EXISTS qa_room_type CASCADE;
DROP TABLE IF EXISTS qa_building CASCADE;
DROP TABLE IF EXISTS qa_sensor_location CASCADE;
DROP TABLE IF EXISTS qa_lorawan_network CASCADE;
DROP TABLE IF EXISTS qa_icone CASCADE;
DROP TABLE IF EXISTS qa_downlink_mode CASCADE;
DROP TABLE IF EXISTS qa_downlink CASCADE;
DROP TABLE IF EXISTS qa_qai_pack CASCADE;
DROP TABLE IF EXISTS qa_evt_attribution CASCADE;
DROP TABLE IF EXISTS qa_evt CASCADE;
DROP TABLE IF EXISTS qa_evt_co2 CASCADE;
DROP TABLE IF EXISTS qa_evt_temperature CASCADE;
DROP TABLE IF EXISTS qa_evt_humidity CASCADE;
DROP TABLE IF EXISTS qa_analysis_type CASCADE;
DROP TABLE IF EXISTS qa_target_type CASCADE;
DROP TABLE IF EXISTS qa_analysis CASCADE;
DROP TABLE IF EXISTS qa_sensor_analysis CASCADE;
DROP TABLE IF EXISTS qa_building_analysis CASCADE;
DROP TABLE IF EXISTS qa_group_analysis CASCADE;
DROP TABLE IF EXISTS qa_report CASCADE;
DROP TABLE IF EXISTS qa_report_room CASCADE;
DROP TABLE IF EXISTS qa_report_analysis CASCADE;
DROP TABLE IF EXISTS qa_sensor_report CASCADE;
DROP TABLE IF EXISTS qa_building_report CASCADE;
DROP TABLE IF EXISTS qa_group_report CASCADE;
DROP TABLE IF EXISTS qa_report_to_user CASCADE;
DROP TABLE IF EXISTS qa_alert CASCADE;
DROP TABLE IF EXISTS qa_alert_mail_history CASCADE;
DROP TABLE IF EXISTS qa_user_to_alert CASCADE;
DROP TABLE IF EXISTS qa_self_diagnosis CASCADE;
DROP TABLE IF EXISTS qa_self_diagnosis_investigated_room CASCADE;
DROP TABLE IF EXISTS qa_self_diagnosis_annex CASCADE;
DROP TABLE IF EXISTS qa_self_diagnosis_establishment_type CASCADE;

DROP TABLE IF EXISTS qb_data_type CASCADE;
DROP TABLE IF EXISTS qb_pn_product CASCADE;
DROP TABLE IF EXISTS qb_bin_model CASCADE;
DROP TABLE IF EXISTS qb_bin_content_type CASCADE;
DROP TABLE IF EXISTS qb_sensor CASCADE;
DROP TABLE IF EXISTS qb_sensor_param CASCADE;
DROP TABLE IF EXISTS qb_sensor_date CASCADE;
DROP TABLE IF EXISTS qb_sensor_threshold CASCADE;
DROP TABLE IF EXISTS qb_group CASCADE;
DROP TABLE IF EXISTS qb_sensor_group CASCADE;
DROP TABLE IF EXISTS qb_sensor_location CASCADE;
DROP TABLE IF EXISTS qb_lorawan_network CASCADE;
DROP TABLE IF EXISTS qb_downlink_mode CASCADE;
DROP TABLE IF EXISTS qb_downlink CASCADE;
DROP TABLE IF EXISTS qb_evt_attribution CASCADE;
DROP TABLE IF EXISTS qb_evt CASCADE;
DROP TABLE IF EXISTS qb_evt_filling_distance CASCADE;
DROP TABLE IF EXISTS qb_evt_collected CASCADE;
DROP TABLE IF EXISTS qb_analysis_type CASCADE;
DROP TABLE IF EXISTS qb_target_type CASCADE;
DROP TABLE IF EXISTS qb_analysis CASCADE;
DROP TABLE IF EXISTS qb_sensor_analysis CASCADE;
DROP TABLE IF EXISTS qb_group_analysis CASCADE;
DROP TABLE IF EXISTS qb_report CASCADE;
DROP TABLE IF EXISTS qb_report_analysis CASCADE;
DROP TABLE IF EXISTS qb_report_content_type CASCADE;
DROP TABLE IF EXISTS qb_sensor_report CASCADE;
DROP TABLE IF EXISTS qb_group_report CASCADE;
DROP TABLE IF EXISTS qb_report_to_user CASCADE;
DROP TABLE IF EXISTS qb_alert CASCADE;
DROP TABLE IF EXISTS qb_alert_mail_history CASCADE;
DROP TABLE IF EXISTS qb_user_to_alert CASCADE;
DROP TABLE IF EXISTS qb_tour CASCADE;
DROP TABLE IF EXISTS qb_tour_sensor CASCADE;

DROP TABLE IF EXISTS qs_data_type CASCADE;
DROP TABLE IF EXISTS qs_pn_product CASCADE;
DROP TABLE IF EXISTS qs_silo_model CASCADE;
DROP TABLE IF EXISTS qs_silo_content_type CASCADE;
DROP TABLE IF EXISTS qs_sensor CASCADE;
DROP TABLE IF EXISTS qs_sensor_param CASCADE;
DROP TABLE IF EXISTS qs_sensor_date CASCADE;
DROP TABLE IF EXISTS qs_sensor_threshold CASCADE;
DROP TABLE IF EXISTS qs_group CASCADE;
DROP TABLE IF EXISTS qs_sensor_group CASCADE;
DROP TABLE IF EXISTS qs_sensor_location CASCADE;
DROP TABLE IF EXISTS qs_lorawan_network CASCADE;
DROP TABLE IF EXISTS qs_downlink_mode CASCADE;
DROP TABLE IF EXISTS qs_downlink CASCADE;
DROP TABLE IF EXISTS qs_evt_attribution CASCADE;
DROP TABLE IF EXISTS qs_evt CASCADE;
DROP TABLE IF EXISTS qs_evt_filling_distance CASCADE;
DROP TABLE IF EXISTS qs_analysis_type CASCADE;
DROP TABLE IF EXISTS qs_target_type CASCADE;
DROP TABLE IF EXISTS qs_analysis CASCADE;
DROP TABLE IF EXISTS qs_sensor_analysis CASCADE;
DROP TABLE IF EXISTS qs_group_analysis CASCADE;
DROP TABLE IF EXISTS qs_report CASCADE;
DROP TABLE IF EXISTS qs_report_analysis CASCADE;
DROP TABLE IF EXISTS qs_report_content_type CASCADE;
DROP TABLE IF EXISTS qs_sensor_report CASCADE;
DROP TABLE IF EXISTS qs_group_report CASCADE;
DROP TABLE IF EXISTS qs_report_to_user CASCADE;
DROP TABLE IF EXISTS qs_alert CASCADE;
DROP TABLE IF EXISTS qs_alert_mail_history CASCADE;
DROP TABLE IF EXISTS qs_user_to_alert CASCADE;
DROP TABLE IF EXISTS qs_tour CASCADE;
DROP TABLE IF EXISTS qs_tour_sensor CASCADE;

DROP TABLE IF EXISTS qt_data_type CASCADE;
DROP TABLE IF EXISTS qt_pn_product CASCADE;
DROP TABLE IF EXISTS qt_model CASCADE;
DROP TABLE IF EXISTS qt_substrate CASCADE;
DROP TABLE IF EXISTS qt_language CASCADE;
DROP TABLE IF EXISTS qt_plant_family CASCADE;
DROP TABLE IF EXISTS qt_plant CASCADE;
DROP TABLE IF EXISTS qt_plant_humidity CASCADE;
DROP TABLE IF EXISTS qt_plant_temperature CASCADE;
DROP TABLE IF EXISTS qt_plant_sunshine CASCADE;
DROP TABLE IF EXISTS qt_sensor CASCADE;
DROP TABLE IF EXISTS qt_sensor_param CASCADE;
DROP TABLE IF EXISTS qt_sensor_date CASCADE;
DROP TABLE IF EXISTS qt_sensor_plant CASCADE;
DROP TABLE IF EXISTS qt_sensor_threshold CASCADE;
DROP TABLE IF EXISTS qt_group CASCADE;
DROP TABLE IF EXISTS qt_sensor_group CASCADE;
DROP TABLE IF EXISTS qt_sensor_location CASCADE;
DROP TABLE IF EXISTS qt_lorawan_network CASCADE;
DROP TABLE IF EXISTS qt_downlink_mode CASCADE;
DROP TABLE IF EXISTS qt_downlink CASCADE;
DROP TABLE IF EXISTS qt_evt_attribution CASCADE;
DROP TABLE IF EXISTS qt_evt CASCADE;
DROP TABLE IF EXISTS qt_evt_humidity CASCADE;
-- DROP TABLE IF EXISTS qt_evt_capacity CASCADE;
DROP TABLE IF EXISTS qt_evt_temperature CASCADE;
DROP TABLE IF EXISTS qt_analysis_type CASCADE;
DROP TABLE IF EXISTS qt_target_type CASCADE;
DROP TABLE IF EXISTS qt_analysis CASCADE;
DROP TABLE IF EXISTS qt_sensor_analysis CASCADE;
DROP TABLE IF EXISTS qt_group_analysis CASCADE;
DROP TABLE IF EXISTS qt_report CASCADE;
DROP TABLE IF EXISTS qt_report_analysis CASCADE;
DROP TABLE IF EXISTS qt_sensor_report CASCADE;
DROP TABLE IF EXISTS qt_group_report CASCADE;
DROP TABLE IF EXISTS qt_report_to_user CASCADE;
DROP TABLE IF EXISTS qt_alert CASCADE;
DROP TABLE IF EXISTS qt_alert_mail_history CASCADE;
DROP TABLE IF EXISTS qt_user_to_alert CASCADE;

DROP TABLE IF EXISTS qp_data_type CASCADE;
DROP TABLE IF EXISTS qp_pn_product CASCADE;
DROP TABLE IF EXISTS qp_park_type CASCADE;
DROP TABLE IF EXISTS qp_payment_condition CASCADE;
DROP TABLE IF EXISTS qp_sensor CASCADE;
DROP TABLE IF EXISTS qp_sensor_param CASCADE;
DROP TABLE IF EXISTS qp_sensor_date CASCADE;
DROP TABLE IF EXISTS qp_sensor_threshold CASCADE;
DROP TABLE IF EXISTS qp_group CASCADE;
DROP TABLE IF EXISTS qp_sensor_group CASCADE;
DROP TABLE IF EXISTS qp_sensor_location CASCADE;
DROP TABLE IF EXISTS qp_lorawan_network CASCADE;
DROP TABLE IF EXISTS qp_downlink_mode CASCADE;
DROP TABLE IF EXISTS qp_downlink CASCADE;
DROP TABLE IF EXISTS qp_evt_attribution CASCADE;
DROP TABLE IF EXISTS qp_evt CASCADE;
DROP TABLE IF EXISTS qp_evt_occupation CASCADE;
DROP TABLE IF EXISTS qp_analysis_type CASCADE;
DROP TABLE IF EXISTS qp_target_type CASCADE;
DROP TABLE IF EXISTS qp_analysis CASCADE;
DROP TABLE IF EXISTS qp_sensor_analysis CASCADE;
DROP TABLE IF EXISTS qp_group_analysis CASCADE;
DROP TABLE IF EXISTS qp_report CASCADE;
DROP TABLE IF EXISTS qp_report_analysis CASCADE;
DROP TABLE IF EXISTS qp_report_park_type CASCADE;
DROP TABLE IF EXISTS qp_report_park_time CASCADE;
DROP TABLE IF EXISTS qp_sensor_report CASCADE;
DROP TABLE IF EXISTS qp_group_report CASCADE;
DROP TABLE IF EXISTS qp_report_to_user CASCADE;
DROP TABLE IF EXISTS qp_alert CASCADE;
DROP TABLE IF EXISTS qp_alert_mail_history CASCADE;
DROP TABLE IF EXISTS qp_user_to_alert CASCADE;
DROP TABLE IF EXISTS qp_tour CASCADE;
DROP TABLE IF EXISTS qp_tour_sensor CASCADE;


------------------------- TABLES CONCERNANT LES UTILISATEURS ET LES CLIENTS ------------------------------

-- Création de la table subscription
-- Contient les différents mode d'abonnement que peut avoir un client
CREATE TABLE subscription (
    subscription_id serial,
    name varchar(64) NOT NULL,

    PRIMARY KEY (subscription_id),
    CONSTRAINT unique_subscription_name UNIQUE (name)
);

-- Création de la table quos_product
-- Contient les noms des différents produits de Quos
CREATE TABLE quos_product (
	product_id serial,
	name varchar(64),

	PRIMARY KEY (product_id),
	CONSTRAINT unique_product_name UNIQUE (name)
);

-- Création de la table address
-- Contient des coordonnées GPS et des adresses 
CREATE TABLE address (
	address_id bigserial,
	number varchar(5),
	street varchar(512),
	city varchar(128),
	zipcode char(5),
	country varchar(128),
	latitude numeric(7, 5) NOT NULL,
	longitude numeric(7, 5) NOT NULL,
    building_name varchar(128),
    floor varchar(32),
    apartment varchar(64),
    additional varchar(64),

	PRIMARY KEY (address_id)
);

-- Création de la table customer (anciennement client)
-- Contient les informations sur les clients de l'entreprise
CREATE TABLE customer (
	customer_id bigserial,
	name varchar(256) NOT NULL,
	activity varchar(128),
    telephone varchar(30),
	address_id bigint NOT NULL,
	contact_last_name varchar(128) NOT NULL,
	contact_fisrt_name varchar(128) NOT NULL,
	contact_mail varchar(512) NOT NULL,
	siret varchar(20),

	PRIMARY KEY (customer_id),
	FOREIGN KEY (address_id) REFERENCES address(address_id),
	CONSTRAINT unique_siret UNIQUE (siret)
);

-- Création de la table users (user est un mot-clé réservé postgreSQL)
-- Contient les informations d'un utilisateur de la plateforme
CREATE TABLE users (
	user_id bigserial,
    last_name varchar(64) NOT NULL,
    first_name varchar(64) NOT NULL,
    mail varchar(512) NOT NULL,
	password varchar(512) NOT NULL,
	current_customer_id bigint NOT NULL,

	PRIMARY KEY (user_id),
	FOREIGN KEY (current_customer_id) REFERENCES customer(customer_id),
    CONSTRAINT unique_user_mail UNIQUE (mail)
);

-- Création de la table user_token
-- Contient les différents tokens d'un utilisateur
CREATE TABLE user_token (
	token_id bigserial,
	user_id bigint NOT NULL,
	reset_password_token varchar(256),
	reset_password_expiration bigint,
	confirmation_account_token varchar(256),
	confirmation_account_expiration bigint,
	change_email_token varchar(256),
	change_email_expiration bigint,

	PRIMARY KEY (token_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT unique_user_token UNIQUE (user_id)
);


-- Création de la table user_product
-- Contient les couples (utilisateur, produit, client) permettant de connaître la liste des produits possédés par un utilisateur
CREATE TABLE user_product (
	user_id bigint, 
	customer_id bigint,
	product_id int,

	PRIMARY KEY (user_id, product_id, customer_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (product_id) REFERENCES quos_product(product_id)
);

-- Création de la table customer_user
-- Contient les couples de (client, utilisateur) permettant de connaître la liste des utilisateurs de chaque client
CREATE TABLE customer_user (
	customer_id bigint,
	user_id bigint,

	PRIMARY KEY (customer_id, user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Création de la table customer_product
-- Contient les produits d'un client
CREATE TABLE customer_product (
	customer_id bigint,
	product_id int,

	PRIMARY KEY (customer_id, product_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (product_id) REFERENCES quos_product(product_id)
);

-- Création de la table user_preference
-- Contient les préférences d'adresse de l'utilisateur
CREATE TABLE user_address_preference (
	user_id bigint,
	customer_id bigint,
	address_id bigint,

	PRIMARY KEY (user_id, customer_id, address_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (address_id) REFERENCES address(address_id)
);

------------------------- TABLES CONCERNANT LES AUTORISATIONS UTILISATEURS ------------------------------

-- Création de la table role
-- Contient les différents role que peut avoir un utilisateur
CREATE TABLE role (
	role_id serial,
	name varchar(30) NOT NULL,

	PRIMARY KEY (role_id),
	CONSTRAINT unique_role_name UNIQUE (name)
);

-- Création de la table customer_right 
-- Contient des informations complémentaires pour la table customer
CREATE TABLE customer_right (
    right_id bigserial,
    customer_id bigint NOT NULL,
    max_user int NOT NULL CHECK (max_user >= 0) DEFAULT 5,
    max_admin int NOT NULL CHECK (max_admin >= 0) DEFAULT 1,
    subscription_id int NOT NULL,

    PRIMARY KEY (right_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (subscription_id) REFERENCES subscription(subscription_id),
    CONSTRAINT unique_customer_right UNIQUE (customer_id)
);

-- Création de la table qa_customer_right
-- Contient les droits d'accès de base d'un client pour la partie QuosAir de la plateforme (Ces droits doivent restreindre les droits des utilisateurs)
CREATE TABLE qa_customer_right (
	right_id bigserial,
	customer_id bigint NOT NULL,
	qai_option boolean NOT NULL DEFAULT false,
	guidance boolean NOT NULL DEFAULT false,
	self_diagnosis boolean NOT NULL DEFAULT false,
	
	PRIMARY KEY (right_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qa_customer_right UNIQUE (customer_id)
);

-- Création de la table qb_customer_right
-- Contient les droits d'accès de base d'un client pour la partie QuosBin de la plateforme (Ces droits doivent restreindre les droits des utilisateurs)
CREATE TABLE qb_customer_right (
	right_id bigserial,
	customer_id bigint NOT NULL,
	guidance boolean NOT NULL DEFAULT false,
	
	PRIMARY KEY (right_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qb_customer_right UNIQUE (customer_id)
);

-- Création de la table qs_customer_right
-- Contient les droits d'accès de base d'un client pour la partie QuosSilo de la plateforme (Ces droits doivent restreindre les droits des utilisateurs)
CREATE TABLE qs_customer_right (
	right_id bigserial,
	customer_id bigint NOT NULL,
	guidance boolean NOT NULL DEFAULT false,
	
	PRIMARY KEY (right_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qs_customer_right UNIQUE (customer_id)
);

-- Création de la table qt_customer_right
-- Contient les droits d'accès de base d'un client pour la partie QuosTerra de la plateforme (Ces droits doivent restreindre les droits des utilisateurs)
CREATE TABLE qt_customer_right (
	right_id bigserial,
	customer_id bigint NOT NULL,
	guidance boolean NOT NULL DEFAULT false,
	
	PRIMARY KEY (right_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qt_customer_right UNIQUE (customer_id)
);

-- Création de la table qp_customer_right
-- Contient les droits d'accès de base d'un client pour la partie QuosPark de la plateforme (Ces droits doivent restreindre les droits des utilisateurs)
CREATE TABLE qp_customer_right (
	right_id bigserial,
	customer_id bigint NOT NULL,
	guidance boolean NOT NULL DEFAULT false,
	
	PRIMARY KEY (right_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qp_customer_right UNIQUE (customer_id)
);

-- Création de la table user_right
-- Contient les droits d'accès aux fonctionnalités générale de la plateforme
CREATE TABLE user_right (
    user_id bigint,
	customer_id bigint,
    role_id int NOT NULL,
    user_creation boolean NOT NULL DEFAULT false,
    sensor_activation boolean NOT NULL DEFAULT false,

    PRIMARY KEY (user_id, customer_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (role_id) REFERENCES role(role_id)
);

-- Création de la table qa_user_right
-- Contient les droits d'accès aux fonctionnalités de Quos Air de la plateforme
CREATE TABLE qa_user_right (
    user_id bigint,
	customer_id bigint,
    qai_option boolean NOT NULL DEFAULT false,
    report_config boolean NOT NULL DEFAULT false,
    analysis_config boolean NOT NULL DEFAULT false,
    threshold_config boolean NOT NULL DEFAULT false,
    guidance_config boolean NOT NULL DEFAULT false,
    group_config boolean NOT NULL DEFAULT false,
    self_diagnosis boolean NOT NULL DEFAULT false,

    PRIMARY KEY (user_id, customer_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Création de la table qb_user_right
-- Contient les droits d'accès aux fonctionnalités de Quos Bin de la plateforme
CREATE TABLE qb_user_right (
    user_id bigint,
	customer_id bigint,
    report_config boolean NOT NULL DEFAULT false,
    analysis_config boolean NOT NULL DEFAULT false,
    threshold_config boolean NOT NULL DEFAULT false,
    guidance_config boolean NOT NULL DEFAULT false,
    group_config boolean NOT NULL DEFAULT false,

    PRIMARY KEY (user_id, customer_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Création de la table qs_user_right
-- Contient les droits d'accès aux fonctionnalités de Quos Silo de la plateforme
CREATE TABLE qs_user_right (
    user_id bigint,
	customer_id bigint,
    report_config boolean NOT NULL DEFAULT false,
    analysis_config boolean NOT NULL DEFAULT false,
    threshold_config boolean NOT NULL DEFAULT false,
    guidance_config boolean NOT NULL DEFAULT false,
    group_config boolean NOT NULL DEFAULT false,

    PRIMARY KEY (user_id, customer_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Création de la table qt_user_right
-- Contient les droits d'accès aux fonctionnalités de Quos Terra de la plateforme
CREATE TABLE qt_user_right (
    user_id bigint,
	customer_id bigint,
    report_config boolean NOT NULL DEFAULT false,
    analysis_config boolean NOT NULL DEFAULT false,
    threshold_config boolean NOT NULL DEFAULT false,
    group_config boolean NOT NULL DEFAULT false,

    PRIMARY KEY (user_id, customer_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Création de la table qp_user_right
-- Contient les droits d'accès aux fonctionnalités de Quos Park de la plateforme
CREATE TABLE qp_user_right (
    user_id bigint,
	customer_id bigint,
    report_config boolean NOT NULL DEFAULT false,
    analysis_config boolean NOT NULL DEFAULT false,
    threshold_config boolean NOT NULL DEFAULT false,
    guidance_config boolean NOT NULL DEFAULT false,
    group_config boolean NOT NULL DEFAULT false,

    PRIMARY KEY (user_id, customer_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Création de la table user_access
-- Contient les différents accès d'un utilisateurs et ses dates de connexion
CREATE TABLE user_access (
    user_id bigint NOT NULL,
	customer_id bigint NOT NULL,
    mobile_access boolean NOT NULL DEFAULT false,
    web_access boolean NOT NULL DEFAULT false,
    last_mobile_connection timestamptz,
    last_web_connection timestamptz,

    PRIMARY KEY (user_id, customer_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);


------------------------ TABLES CONCERNANT LES PARAMÈTRES GLOBAUX -----------------------

-- Création de la table network_name
-- Contient les noms des différents réseaux
CREATE TABLE network_name (
	network_name_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (network_name_id),
	CONSTRAINT unique_network_name UNIQUE (name)
);

-- Création de la table chart_type
-- Contient les noms des différents type de graphiques
CREATE TABLE chart_type (
	chart_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (chart_type_id),
	CONSTRAINT unique_chart_type_name UNIQUE (name)
);

-- Création de la table period_setting
-- Contient les noms des différents type de périodicité
CREATE TABLE period_setting (
	period_setting_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (period_setting_id),
	CONSTRAINT unique_period_setting_name UNIQUE (name)
);

-- Création de la table granularity_setting
-- Contient les noms des différentes type de granularité
CREATE TABLE granularity_setting (
	granularity_setting_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (granularity_setting_id),
	CONSTRAINT unique_granularity_setting_name UNIQUE (name)
);

-- Création de la table mqtt_channel
-- Contient les noms des différents canaux mqtt
CREATE TABLE mqtt_channel (
	mqtt_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (mqtt_id),
	CONSTRAINT unique_mqtt_channel_name UNIQUE (name)
);

-- Création de la table origin_page
-- Contient les types des différentes pages de la plateforme
CREATE TABLE origin_page (
	origin_page_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (origin_page_id),
	CONSTRAINT unique_origin_page_name UNIQUE (name)
);

------------------------ TABLES CONCERNANT QUOS AIR -----------------------------------

-- Création de la table qa_data_type
-- Contient les noms des types de données prévelées par les capteurs QuosAir
CREATE TABLE qa_data_type (
	data_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (data_type_id),
	CONSTRAINT unique_qa_data_type_name UNIQUE (name)
);

-- Création de la table qa_pn_product 
-- Contient les noms des différents numéro de production
CREATE TABLE qa_pn_product (
	pn_product_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (pn_product_id),
	CONSTRAINT unique_qa_pn_product_name UNIQUE (name)
);

-- Création de la table qa_sensor
-- Contient les informations de base d'un capteur QuosAir
CREATE TABLE qa_sensor (
	sensor_id bigserial,
	pn_product_id int NOT NULL,
	sn_product varchar(64) NOT NULL,
	name varchar(128) NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (sensor_id),
	FOREIGN KEY (pn_product_id) REFERENCES qa_pn_product(pn_product_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qa_sn_product UNIQUE (sn_product)
);

-- Création de la table qa_sensor_param
-- Contient les informations complémentaires d'un capteur QuosAir
CREATE TABLE qa_sensor_param (
	param_id bigserial,
	sensor_id bigint NOT NULL,
	is_activated boolean NOT NULL DEFAULT false,
	number_of_return int NOT NULL CHECK (number_of_return >= 0) DEFAULT 0,
	alert_activated boolean NOT NULL DEFAULT false,
	led_activated boolean NOT NULL DEFAULT true,

	PRIMARY KEY (param_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id),
	CONSTRAINT unique_qa_sensor_params_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qa_sensor_date
-- Contient les différentes date d'un capteur QuosAir
CREATE TABLE qa_sensor_date (
	date_id bigserial,
	sensor_id bigint NOT NULL,
	installation_date timestamptz,
	desactivation_date timestamptz,
	lost_communication_date timestamptz,

	PRIMARY KEY (date_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id),
	CONSTRAINT unique_qa_sensor_date_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qa_sensor_threshold
-- Contient les configurations des seuils d'un capteurs
CREATE TABLE qa_sensor_threshold (
	threshold_id bigserial,
	sensor_id bigint NOT NULL,
	data_type_id int NOT NULL,
	updated_at timestamptz NOT NULL DEFAULT now(),
	max_threshold numeric(8, 3) NOT NULL,
	max_comfort numeric(8, 3) NOT NULL,
	min_comfort numeric(8, 3) NOT NULL,
	min_threshold numeric(8, 3) NOT NULL,

	PRIMARY KEY (threshold_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id),
	FOREIGN KEY (data_type_id) REFERENCES qa_data_type(data_type_id),
	CONSTRAINT unique_qa_sensor_data_type_threshold UNIQUE (sensor_id, data_type_id)
);

-- Création de la table qa_group 
-- Contient les informations des différents groupes de capteurs QuosAir
CREATE TABLE qa_group (
	group_id bigserial,
	name varchar(128) NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (group_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qa_customer_group_name UNIQUE (name, customer_id)
);

-- Création de la table qa_sensor_group
-- Contient la liste des capteurs QuosAir par groupes
CREATE TABLE qa_sensor_group (
	group_id bigint,
	sensor_id bigint,

	PRIMARY KEY (group_id, sensor_id),
	FOREIGN KEY (group_id) REFERENCES qa_group(group_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id)
);

-- Création de la table qa_room_type 
-- Contient les différents noms de type de pièce
CREATE TABLE qa_room_type (
	room_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (room_type_id),
	CONSTRAINT unique_qa_room_type_name UNIQUE (name)
);

-- Création de la table qa_building
-- Contient les informations d'un batiment QuosAir
CREATE TABLE qa_building (
	building_id bigserial,
	name varchar(128) NOT NULL,
	address_id bigint,
	customer_id bigint NOT NULL,
	floors int NOT NULL CHECK (floors >= 0) DEFAULT 1,

	PRIMARY KEY (building_id),
	FOREIGN KEY (address_id) REFERENCES address(address_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_customer_building_name UNIQUE (customer_id, name)
);

-- Création de la table qa_sensor_location
-- Contient la localisation d'un capteur QuosAir
CREATE TABLE qa_sensor_location (
	location_id bigserial,
	sensor_id bigint NOT NULL,
	name varchar(128) NOT NULL,
	room_type_id int,
	building_id bigint,
	floor varchar(64),
	latitude numeric(7, 5),
	longitude numeric(7, 5),

	PRIMARY KEY (location_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id),
	FOREIGN KEY (room_type_id) REFERENCES qa_room_type(room_type_id),
	FOREIGN KEY (building_id) REFERENCES qa_building(building_id),
	CONSTRAINT unique_qa_sensor_location_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qa_network
-- Contient les informations réseaux d'un capteur QuosAir
CREATE TABLE qa_lorawan_network (
	lorawan_id bigserial,
	sensor_id bigint NOT NULL,
	dev_eui varchar(64) NOT NULL,
	dev_addr varchar(64) NOT NULL,
	app_eui varchar(64) NOT NULL,
	app_key varchar(64) NOT NULL,
	network_name_id int NOT NULL,
	attribution_date timestamptz DEFAULT now(),
	network_security_key varchar(128),
	app_security_key varchar(128),
	mqtt_id int NOT NULL,

	PRIMARY KEY (lorawan_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id),
	FOREIGN KEY (network_name_id) REFERENCES network_name(network_name_id),
	FOREIGN KEY (mqtt_id) REFERENCES mqtt_channel(mqtt_id),
	CONSTRAINT unique_qa_dev_eui UNIQUE (dev_eui),
	CONSTRAINT unique_qa_lorawan_network_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qa_icone
-- Contient les dates des différentes mesure icone d'un capteur QuosAir
CREATE TABLE qa_icone (
	icone_id bigserial,
	sensor_id bigint NOT NULL,
	start_date timestamptz NOT NULL,
	end_date timestamptz NOT NULL CHECK (end_date >= start_date),
	value int,

	PRIMARY KEY (icone_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id)
);

-- Création de la table qa_downlink_mode
-- Contient les différents mode de downlinks QuosAir
CREATE TABLE qa_downlink_mode (
	downlink_mode_id serial,
	name varchar(64) NOT NULL,
	mode char(4) NOT NULL,
	requires_value boolean NOT NULL,
	description text, 

	PRIMARY KEY (downlink_mode_id),
	CONSTRAINT unique_qa_downlink_mode_value UNIQUE (mode),
	CONSTRAINT unique_qa_downlink_mode_name UNIQUE (name)
);

-- Création de la table qa_downlink
-- Contient l'historique des downlinks envoyés
CREATE TABLE qa_downlink (
	downlink_id bigserial,
	sensor_id bigint NOT NULL,
	downlink_mode_id int NOT NULL,
	value char(8) NOT NULL,
	network_name_id int NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	received boolean,

	PRIMARY KEY (downlink_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id),
	FOREIGN KEY (downlink_mode_id) REFERENCES qa_downlink_mode(downlink_mode_id),
	FOREIGN KEY (network_name_id) REFERENCES network_name(network_name_id)
);

-- Création de la table qa_qai_pack
-- Contient les informations des formulaires des packs QAI
CREATE TABLE qa_qai_pack (
	pack_id bigserial,
	sensor_id bigint NOT NULL,
	start_date timestamptz NOT NULL,
	end_date timestamptz NOT NULL CHECK (end_date >= start_date),
	room_sample varchar(128) NOT NULL,
	batch varchar(128) NOT NULL,
	radiello_ref_145 varchar(128) NOT NULL,
	radiello_ref_165 varchar(128) NOT NULL,
	temperature_start numeric(8, 3) NOT NULL,
	number_of_people int NOT NULL,
	vent_frequency_per_day int NOT NULL,
	vent_duration_per_day int NOT NULL,
	external_condition_road_works varchar(256),
	external_condition_neighborhood varchar(256),
	external_condition_industrial_activities varchar(256),
	external_condition_other varchar(256),
	particular_event_works varchar(256),
	particular_event_home_fragrance varchar(256),
	particular_event_cigarette_smoke varchar(256),
	particular_event_household_product varchar(256),
	particular_event_furniture_change varchar(256),
	particular_event_other varchar(256),


	PRIMARY KEY (pack_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id)
);

-- Création de la table 
-- Contient les identifiants d'attribution pour les événements QuosAir
CREATE TABLE qa_evt_attribution (
	evt_attribution_id bigserial,
	sensor_id bigint NOT NULL,

	PRIMARY KEY (evt_attribution_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id),
	CONSTRAINT unique_qa_evt_attribution_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qa_evt
-- Contient les événements prélevés par les capteurs QuosAir
CREATE TABLE qa_evt (
	evt_id bigserial,
	evt_attribution_id bigint NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	battery_tension numeric(8, 3) NOT NULL,
	rssi int NOT NULL,
	status int NOT NULL DEFAULT 0,

	PRIMARY KEY (evt_id),
	FOREIGN KEY (evt_attribution_id) REFERENCES qa_evt_attribution(evt_attribution_id)
);

-- Création de la table qa_evt_co2
-- Contient les événements de co2 prélevés par les capteurs QuosAir
CREATE TABLE qa_evt_co2 (
	co2_id bigserial,
	evt_id bigint NOT NULL,
	value numeric(8, 3) NOT NULL,

	PRIMARY KEY (co2_id),
	FOREIGN KEY (evt_id) REFERENCES qa_evt(evt_id),
	CONSTRAINT unique_qa_evt_id_co2 UNIQUE (evt_id)
);

-- Création de la table qa_evt_temperature
-- Contient les événements de température prélevés par les capteurs QuosAir
CREATE TABLE qa_evt_temperature (
	temperature_id bigserial,
	evt_id bigint NOT NULL,
	value numeric(8, 3) NOT NULL,

	PRIMARY KEY (temperature_id),
	FOREIGN KEY (evt_id) REFERENCES qa_evt(evt_id),
	CONSTRAINT unique_qa_evt_id_temperature UNIQUE (evt_id)
);

-- Création de la table qa_evt_humidity
-- Contient les événements d'humidité prélevés par les capteurs QuosAir
CREATE TABLE qa_evt_humidity (
	humidity_id bigserial,
	evt_id bigint NOT NULL,
	value numeric(8, 3) NOT NULL,

	PRIMARY KEY (humidity_id),
	FOREIGN KEY (evt_id) REFERENCES qa_evt(evt_id),
	CONSTRAINT unique_qa_evt_id_humidity UNIQUE (evt_id)
);

-- Création de la table qa_analysis_type 
-- Contient les différentes analyses possibles pour les capteurs QuosAir
CREATE TABLE qa_analysis_type (
	analysis_type_id serial,
	name varchar(128) NOT NULL,

	PRIMARY KEY (analysis_type_id),
	CONSTRAINT unique_qa_analysis_type_name UNIQUE (name)
);

-- Création de la table qa_target_type 
-- Contient les différents type de cible pour les analyses et rapports QuosAir
CREATE TABLE qa_target_type (
	target_type_id serial,
	name varchar(128) NOT NULL,

	PRIMARY KEY (target_type_id),
	CONSTRAINT unique_qa_target_type_name UNIQUE (name)
);

-- Création de la table qa_analysis 
-- Contient les paramètres des analyses QuosAir
CREATE TABLE qa_analysis (
	analysis_id bigserial,
	user_id bigint NOT NULL,
	customer_id bigint NOT NULL,
	analysis_type_id int NOT NULL,
	target_type_id int NOT NULL,
	chart_type_id int NOT NULL,
	period_setting_id int NOT NULL,
	granularity_setting_id int NOT NULL,
	room_type_id int,
	origin_page_id int NOT NULL,
	title varchar(128) NOT NULL,
	all_selected boolean NOT NULL DEFAULT false,
	start_date timestamptz,
	end_date timestamptz CHECK (end_date >= start_date),

	PRIMARY KEY (analysis_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (analysis_type_id) REFERENCES qa_analysis_type(analysis_type_id),
	FOREIGN KEY (target_type_id) REFERENCES qa_target_type(target_type_id),
	FOREIGN KEY (chart_type_id) REFERENCES chart_type(chart_type_id),
	FOREIGN KEY (period_setting_id) REFERENCES period_setting(period_setting_id),
	FOREIGN KEY (granularity_setting_id) REFERENCES granularity_setting(granularity_setting_id),
	FOREIGN KEY (room_type_id) REFERENCES qa_room_type(room_type_id),
	FOREIGN KEY (origin_page_id) REFERENCES origin_page(origin_page_id)
);

-- Création de la table qa_sensor_analysis
-- Contient les capteurs concernés par une analyse
CREATE TABLE qa_sensor_analysis (
	analysis_id bigint,
	sensor_id bigint,

	PRIMARY KEY (analysis_id, sensor_id),
	FOREIGN KEY (analysis_id) REFERENCES qa_analysis(analysis_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id)
);

-- Création de la table qa_building_analysis 
-- Contient les batiments concernés par une analyse
CREATE TABLE qa_building_analysis (
	analysis_id bigint,
	building_id bigint,

	PRIMARY KEY (analysis_id, building_id),
	FOREIGN KEY (analysis_id) REFERENCES qa_analysis(analysis_id),
	FOREIGN KEY (building_id) REFERENCES qa_building(building_id)
);

-- Création de la table qa_group_analysis 
-- Contient les groupes concernés par une analyse
CREATE TABLE qa_group_analysis (
	analysis_id bigint,
	group_id bigint,

	PRIMARY KEY (analysis_id, group_id),
	FOREIGN KEY (analysis_id) REFERENCES qa_analysis(analysis_id),
	FOREIGN KEY (group_id) REFERENCES qa_group(group_id)
);

-- Création de la table qa_report
-- Contient les informations des rapport QuosAir
CREATE TABLE qa_report (
	report_id bigserial,
	customer_id bigint NOT NULL,
	target_type_id int NOT NULL,
	period_setting_id int NOT NULL,
	dispatch boolean NOT NULL DEFAULT false,
	all_selected boolean NOT NULL DEFAULT false,
	title varchar(128) NOT NULL,

	PRIMARY KEY (report_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (target_type_id) REFERENCES qa_target_type(target_type_id),
	FOREIGN KEY (period_setting_id) REFERENCES period_setting(period_setting_id)
);

-- Création de la table qa_report_room
-- Contient les pièces qui concernent les rapports QuosAir
CREATE TABLE qa_report_room (
	report_id bigint,
	room_type_id int,

	PRIMARY KEY (report_id, room_type_id),
	FOREIGN KEY (report_id) REFERENCES qa_report(report_id),
	FOREIGN KEY (room_type_id) REFERENCES qa_room_type(room_type_id)
);

-- Création de la table qa_report_analysis
-- Contient les analyses qui concernent les rapports QuosAir
CREATE TABLE qa_report_analysis (
	report_id bigint,
	analysis_type_id int,

	PRIMARY KEY (report_id, analysis_type_id),
	FOREIGN KEY (report_id) REFERENCES qa_report(report_id),
	FOREIGN KEY (analysis_type_id) REFERENCES qa_analysis_type(analysis_type_id)
);

-- Création de la table qa_sensor_report
-- Contient les capteurs concernés par un rapport
CREATE TABLE qa_sensor_report (
	report_id bigint,
	sensor_id bigint,

	PRIMARY KEY (report_id, sensor_id),
	FOREIGN KEY (report_id) REFERENCES qa_report(report_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id)
);

-- Création de la table qa_building_report 
-- Contient les batiments concernés par un rapport
CREATE TABLE qa_building_report (
	report_id int,
	building_id int,

	PRIMARY KEY (report_id, building_id),
	FOREIGN KEY (report_id) REFERENCES qa_report(report_id),
	FOREIGN KEY (building_id) REFERENCES qa_building(building_id)
);

-- Création de la table qa_group_report 
-- Contient les groupes concernés par un rapport
CREATE TABLE qa_group_report (
	report_id bigint,
	group_id bigint,

	PRIMARY KEY (report_id, group_id),
	FOREIGN KEY (report_id) REFERENCES qa_report(report_id),
	FOREIGN KEY (group_id) REFERENCES qa_group(group_id)
);

-- Création de la table qa_report_to_user
-- Contient les rapports à envoyer aux différents utilisateurs
CREATE TABLE qa_report_to_user (
	report_id bigint,
	user_id bigint,

	PRIMARY KEY (report_id, user_id),
	FOREIGN KEY (report_id) REFERENCES qa_report(report_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Création de la table qa_alert 
-- Contient l'historique de alertes des capteurs QuosAir
CREATE TABLE qa_alert (
	alert_id bigserial,
	sensor_id bigint NOT NULL,
	data_type_id int NOT NULL,
	value numeric(8, 3) NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	ended_at timestamptz CHECK (ended_at >= date),

	PRIMARY KEY (alert_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id),
	FOREIGN KEY (data_type_id) REFERENCES qa_data_type(data_type_id)
);

-- Création de la table qa_alert_mail_history 
-- Contient l'historique des mails envoyés pour les alertes
CREATE TABLE qa_alert_mail_history (
	alert_id bigint,
	user_id bigint,
	date timestamptz NOT NULL DEFAULT now(),

	PRIMARY KEY (alert_id, user_id),
	FOREIGN KEY (alert_id) REFERENCES qa_alert(alert_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Création de la table qa_user_to_alert 
-- Contient la liste des utilisateurs à avertir sur les alertes des capteurs QuosAir
CREATE TABLE qa_user_to_alert (
	sensor_id bigint,
	user_id bigint,
	data_type_id int,

	PRIMARY KEY (sensor_id, user_id, data_type_id),
	FOREIGN KEY (sensor_id) REFERENCES qa_sensor(sensor_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (data_type_id) REFERENCES qa_data_type(data_type_id)
);

-- Création de la table qa_self_diagnosis
-- Contient les formulaires d'autodiagnostique
CREATE TABLE qa_self_diagnosis (
	diagnosis_id bigserial,
	customer_id bigint NOT NULL,
	date timestamptz NOT NULL,
	establishment_name varchar(128) NOT NULL,
	establishment_type varchar(128) NOT NULL,
	establishment_address varchar(512) NOT NULL,
	establishment_director varchar(128) NOT NULL,
	establishment_siret varchar(20) NOT NULL,
	legal_person_name varchar(128) NOT NULL,
	legal_person_address varchar(512) NOT NULL,
	legal_person_quality varchar(64) NOT NULL,
	involved_service varchar(64) NOT NULL,
	referent_name varchar(128) NOT NULL,
	referent_telephone varchar(20) NOT NULL,
	referent_mail varchar(512) NOT NULL,
	organization_name varchar(128),
	organization_address varchar(512),
	organisation_quality varchar(128),
	organization_person_name varchar(128),
	organization_siret varchar(20),
	establishment_room_number int NOT NULL,
	max_theoritical_staff int NOT NULL,
	investigated_room_number int NOT NULL,
	investigated_room_justification text,
	window_ventilation_only boolean NOT NULL DEFAULT false,
	ventilation_grid boolean NOT NULL DEFAULT false,
	natural_ventilation boolean NOT NULL DEFAULT false,
	mechanical_ventilation boolean NOT NULL DEFAULT false,
	simple_extraction_flow boolean NOT NULL DEFAULT false,
	simple_extraction_sweep_flow boolean NOT NULL DEFAULT false,
	simple_insufflation_flow boolean NOT NULL DEFAULT false,
	double_flow boolean NOT NULL DEFAULT false,
	double_sweep_flow boolean NOT NULL DEFAULT false,
	last_vent_maintenance_date timestamptz,
	last_filter_change_date timestamptz,
	total_room int NOT NULL,
	total_building int NOT NULL,
	total_opening int NOT NULL,
	total_working_opening int NOT NULL,
	total_accessible_opening int NOT NULL,
	total_maniable_opening int NOT NULL,
	total_vent int NOT NULL,
	total_clogged_vent int NOT NULL,
	total_dirty_vent int NOT NULL,
	recommandation text,
 
	PRIMARY KEY (diagnosis_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Création de la table qa_self_diagnosis_investigated_room 
-- Contient les pièces investiguées lors de l'auto-diagnostique
CREATE TABLE qa_self_diagnosis_investigated_room (
	investigated_room_id bigserial,
	diagnosis_id bigint NOT NULL,
	location varchar(128) NOT NULL,
	room_max_theoritical_staff int NOT NULL,

	PRIMARY KEY (investigated_room_id),
	FOREIGN KEY (diagnosis_id) REFERENCES qa_self_diagnosis(diagnosis_id)
);

-- Création de la table qa_self_diagnosis_annex 
-- Contient les annexes du formulaire d'auto-diagnostique
CREATE TABLE qa_self_diagnosis_annex (
	annex_id bigserial,
	diagnosis_id bigint NOT NULL,
	room int NOT NULL,
	opening_number int NOT NULL,
	working_opening int NOT NULL,
	accessible_opening int NOT NULL,
	maniable_opening int NOT NULL,
	working_vent boolean NOT NULL,
	clogged_vent boolean NOT NULL,
	voluntary_clogged_vent boolean NOT NULL,
	furniture_clogged_vent boolean NOT NULL,
	other_clogged_vent boolean NOT NULL,
	dirty_vent boolean NOT NULL,
	other text,

	PRIMARY KEY (annex_id),
	FOREIGN KEY (diagnosis_id) REFERENCES qa_self_diagnosis(diagnosis_id)
);

-- Création de la table qa_self_diagnosis_establishment_type
-- Contient les types d'établissements pour les formulaires d'auto-diagnostique
CREATE TABLE qa_self_diagnosis_establishment_type (
	establishment_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (establishment_id),
	CONSTRAINT unique_qa_self_diagnosis_establishment_name UNIQUE (name)
);


----------------------------- TABLES CONCERNANT QUOS BIN ---------------------------

-- Création de la table qb_data_type
-- Contient les différents types de données prélevés par les capteurs QuosBin
CREATE TABLE qb_data_type (
	data_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (data_type_id),
	CONSTRAINT unique_qb_data_type_name UNIQUE (name)
);

-- Création de la table qb_pn_product 
-- Contient la liste des différents pn_product QuosBin
CREATE TABLE qb_pn_product (
	pn_product_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (pn_product_id),
	CONSTRAINT unique_qb_pn_product_name UNIQUE (name)
);

-- Création de la table qb_bin_model 
-- Contient les informations des différents modèles de contenant des clients
CREATE TABLE qb_bin_model (
	model_id bigserial, 
	name varchar(128) NOT NULL,
	customer_id bigint NOT NULL,
	volume int NOT NULL,
	height int NOT NULL,
	distance_to_sensor int NOT NULL,

	PRIMARY KEY (model_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_customer_bin_model_name UNIQUE (name, customer_id)
);

-- Création de la table qb_bin_content_type
-- Contient les différents types de contenu de poubelles
CREATE TABLE qb_bin_content_type (
	content_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (content_type_id),
	CONSTRAINT unique_bin_content_type_name UNIQUE (name)
);

-- Création de la table qb_sensor
-- Contient les capteurs QuosBin
CREATE TABLE qb_sensor (
	sensor_id bigserial,
	pn_product_id int NOT NULL,
	sn_product varchar(64) NOT NULL,
	name varchar(128) NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (sensor_id),
	FOREIGN KEY (pn_product_id) REFERENCES qb_pn_product(pn_product_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qb_sn_product UNIQUE (sn_product)
);

-- Création de la table qb_sensor_param 
-- Contient les informations complémentaires au capteurs QuosBin
CREATE TABLE qb_sensor_param (
	param_id bigserial,
	sensor_id bigint NOT NULL,
	is_activated boolean NOT NULL DEFAULT false,
	number_of_return int NOT NULL CHECK (number_of_return >= 0) DEFAULT 0,
	model_id int,
	content_type_id int,

	PRIMARY KEY (param_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id),
	FOREIGN KEY (model_id) REFERENCES qb_bin_model(model_id),
	FOREIGN KEY (content_type_id) REFERENCES qb_bin_content_type(content_type_id),
	CONSTRAINT unique_qb_sensor_param_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qb_sensor_date 
-- Contient les informations datées des capteurs QuosBin
CREATE TABLE qb_sensor_date (
	date_id bigserial,
	sensor_id bigint NOT NULL,
	installation_date timestamptz,
	desactivation_date timestamptz,
	lost_communication_date timestamptz,

	PRIMARY KEY (date_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id),
	CONSTRAINT unique_qb_sensor_date_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qb_sensor_threshold 
-- Contient les seuils de déclenchement d'alertes des capteurs QuosBin
CREATE TABLE qb_sensor_threshold (
	threshold_id bigserial,
	sensor_id bigint NOT NULL,
	data_type_id int NOT NULL,
	updated_at timestamptz NOT NULL DEFAULT now(),
	max_threshold numeric(8, 3) NOT NULL,
	max_comfort numeric(8, 3) NOT NULL,

	PRIMARY KEY (threshold_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id),
	FOREIGN KEY (data_type_id) REFERENCES qb_data_type(data_type_id),
	CONSTRAINT unique_qb_sensor_data_type_threshold UNIQUE (sensor_id, data_type_id)
);

-- Création de la table qb_group 
-- Contient les différents groupes de poubelles
CREATE TABLE qb_group (
	group_id bigserial, 
	name varchar(128) NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (group_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qb_customer_group_name UNIQUE (customer_id, name)
);

-- Création de la table qb_sensor_group 
-- Contient la liste des groupes de capteurs
CREATE TABLE qb_sensor_group (
	group_id bigint,
	sensor_id bigint,

	PRIMARY KEY (group_id, sensor_id),
	FOREIGN KEY (group_id) REFERENCES qb_group(group_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id)
);

-- Création de la table qb_sensor_location 
-- Contient les emplacements des différents capteurs QuosBin
CREATE TABLE qb_sensor_location (
	location_id bigserial,
	sensor_id bigint NOT NULL,
	latitude numeric(7, 5) NOT NULL,
	longitude numeric(7, 5) NOT NULL,
	city varchar(128) NOT NULL,
	street varchar(256),
	country varchar(128) NOT NULL,

	PRIMARY KEY (location_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id),
	CONSTRAINT unique_qb_sensor_location_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qb_network
-- Contient les informations réseaux des capteurs QuosBin
CREATE TABLE qb_lorawan_network (
	lorawan_id bigserial,
	sensor_id bigint NOT NULL,
	dev_eui varchar(64) NOT NULL,
	dev_addr varchar(64) NOT NULL,
	app_eui varchar(64) NOT NULL,
	app_key varchar(64) NOT NULL,
	network_name_id int NOT NULL,
	attribution_date timestamptz NOT NULL DEFAULT now(),
	network_security_key varchar(128),
	app_security_key varchar(128),
	mqtt_id int NOT NULL,
	
	PRIMARY KEY (lorawan_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id),
	FOREIGN KEY (network_name_id) REFERENCES network_name(network_name_id),
	FOREIGN KEY (mqtt_id) REFERENCES mqtt_channel(mqtt_id),
	CONSTRAINT unique_qb_lorawan_network_sensor_id UNIQUE (sensor_id),
	CONSTRAINT unique_qb_dev_eui UNIQUE (dev_eui)
); 

-- Création de la table qb_downlink_mode
-- Contient les différents mode de downlink QuosBin
CREATE TABLE qb_downlink_mode (
	downlink_mode_id serial,
	name varchar(64) NOT NULL,
	mode char(4) NOT NULL,
	requires_value boolean NOT NULL,
	description text,

	PRIMARY KEY (downlink_mode_id),
	CONSTRAINT unique_qb_downlink_mode_name UNIQUE (name),
	CONSTRAINT unique_qb_downlink_mode_value UNIQUE (mode)
);

-- Création de la table qb_downlink
-- Contient les downlinks envoyés aux capteurs QuosBin
CREATE TABLE qb_downlink (
	downlink_id bigserial,
	sensor_id bigint NOT NULL,
	downlink_mode_id int NOT NULL,
	value varchar(8) NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	network_name_id int NOT NULL,
	received boolean,

	PRIMARY KEY (downlink_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id),
	FOREIGN KEY (downlink_mode_id) REFERENCES qb_downlink_mode(downlink_mode_id),
	FOREIGN KEY (network_name_id) REFERENCES network_name(network_name_id)
);

-- Création de la table qb_evt_attribution 
-- Contient les identifiant d'attribution des événements QuosBin
CREATE TABLE qb_evt_attribution (
	evt_attribution_id bigserial,
	sensor_id bigint NOT NULL,

	PRIMARY KEY (evt_attribution_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id),
	CONSTRAINT unique_qb_evt_attribution_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qb_evt
-- Contient les événements des capteurs QuosBin
CREATE TABLE qb_evt (
	evt_id bigserial,
	evt_attribution_id bigint NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	battery_tension numeric(8,3) NOT NULL,
	rssi int NOT NULL,
	status int NOT NULL DEFAULT 0,

	PRIMARY KEY (evt_id),
	FOREIGN KEY (evt_attribution_id) REFERENCES qb_evt_attribution(evt_attribution_id)
);

-- Création de la table qb_evt_filling_distance
-- Contient les événements de distance prélevés par les capteurs QuosBin
CREATE TABLE qb_evt_filling_distance (
	filling_distance_id bigserial,
	evt_id bigint NOT NULL,
	value int NOT NULL,

	PRIMARY KEY (filling_distance_id),
	FOREIGN KEY (evt_id) REFERENCES qb_evt(evt_id),
	CONSTRAINT unique_qb_evt_id_filling_distance UNIQUE (evt_id)
);

-- Création de la table qb_evt_collected
-- Contient les événements de collecte prélevés par les capteurs QuosBin
CREATE TABLE qb_evt_collected (
	collected_id bigserial,
	evt_id bigint NOT NULL,
	value boolean NOT NULL,

	PRIMARY KEY (collected_id),
	FOREIGN KEY (evt_id) REFERENCES qb_evt(evt_id),
	CONSTRAINT unique_qb_evt_id_collected UNIQUE (evt_id)
);

-- Création de la table qb_analysis_type 
-- Contient les différentes analyses possible pour QuosBin
CREATE TABLE qb_analysis_type (
	analysis_type_id serial,
	name varchar(128) NOT NULL,

	PRIMARY KEY (analysis_type_id),
	CONSTRAINT unique_qb_analysis_type_name UNIQUE (name)
);

-- Création de la table qb_target_type 
-- Contient les cibles possibles pour les rapports et les analyses
CREATE TABLE qb_target_type (
	target_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (target_type_id),
	CONSTRAINT unique_qb_target_type_name UNIQUE (name)
);

-- Création de la table qb_analysis 
-- Contient les analyses QuosBin
CREATE TABLE qb_analysis (
	analysis_id bigserial,
	user_id bigint NOT NULL,
	customer_id bigint NOT NULL,
	analysis_type_id int NOT NULL,
	target_type_id int NOT NULL,
	chart_type_id int NOT NULL,
	period_setting_id int NOT NULL,
	granularity_setting_id int NOT NULL,
	content_type_id int,
	origin_page_id int NOT NULL,
	title varchar(128) NOT NULL,
	all_selected boolean NOT NULL DEFAULT false,
	start_date timestamptz,
	end_date timestamptz CHECK (end_date >= start_date),

	PRIMARY KEY (analysis_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (analysis_type_id) REFERENCES qb_analysis_type(analysis_type_id),
	FOREIGN KEY (target_type_id) REFERENCES qb_target_type(target_type_id),
	FOREIGN KEY (chart_type_id) REFERENCES chart_type(chart_type_id),
	FOREIGN KEY (period_setting_id) REFERENCES period_setting(period_setting_id),
	FOREIGN KEY (granularity_setting_id) REFERENCES granularity_setting(granularity_setting_id),
	FOREIGN KEY (content_type_id) REFERENCES qb_bin_content_type(content_type_id),
	FOREIGN KEY (origin_page_id) REFERENCES origin_page(origin_page_id)
);

-- Création de la table qb_sensor_analysis
-- Contient les capteurs liés à une analyses QuosBin
CREATE TABLE qb_sensor_analysis (
	analysis_id bigint,
	sensor_id bigint,

	PRIMARY KEY (analysis_id, sensor_id),
	FOREIGN KEY (analysis_id) REFERENCES qb_analysis(analysis_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id)
);

-- Création de la table qb_group_analysis
-- Contient les groupes liés à une analyse QuosBin
CREATE TABLE qb_group_analysis (
	analysis_id bigint,
	group_id bigint,

	PRIMARY KEY (analysis_id, group_id),
	FOREIGN KEY (analysis_id) REFERENCES qb_analysis(analysis_id),
	FOREIGN KEY (group_id) REFERENCES qb_group(group_id)	
);

-- Création de la table qb_report
-- Contient les rapports QuosBin 
CREATE TABLE qb_report (
	report_id bigserial,
	customer_id bigint NOT NULL,
	target_type_id int NOT NULL,
	content_type_id int,
	period_setting_id int NOT NULL,
	dispatch boolean NOT NULL DEFAULT false,
	all_selected boolean NOT NULL DEFAULT false,
	title varchar(128) NOT NULL,

	PRIMARY KEY (report_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (target_type_id) REFERENCES qb_target_type(target_type_id),
	FOREIGN KEY (content_type_id) REFERENCES qb_bin_content_type(content_type_id),
	FOREIGN KEY (period_setting_id) REFERENCES period_setting(period_setting_id)
);

-- Création de la table qb_report_analysis
-- Contient les analyses qui concernent un rapport
CREATE TABLE qb_report_analysis (
	report_id bigint,
	analysis_type_id int,

	PRIMARY KEY (report_id, analysis_type_id),
	FOREIGN KEY (report_id) REFERENCES qb_report(report_id),
	FOREIGN KEY (analysis_type_id) REFERENCES qb_analysis_type(analysis_type_id)
);

-- Création de la table qb_report_content_type
-- Contient les types de contenus qui concernent un rapport
CREATE TABLE qb_report_content_type (
	report_id bigint,
	content_type_id int,

	PRIMARY KEY (report_id, content_type_id),
	FOREIGN KEY (report_id) REFERENCES qb_report(report_id),
	FOREIGN KEY (content_type_id) REFERENCES qb_bin_content_type(content_type_id)
);

-- Création de la table qb_sensor_report
-- Contient les capteurs liés à un rapport
CREATE TABLE qb_sensor_report (
	report_id bigint,
	sensor_id bigint,

	PRIMARY KEY (report_id, sensor_id),
	FOREIGN KEY (report_id) REFERENCES qb_report(report_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id)
);

-- Création de la table qb_group_report
-- Contient les groupes liés à un rapport
CREATE TABLE qb_group_report (
	report_id bigint,
	group_id bigint,

	PRIMARY KEY (report_id, group_id),
	FOREIGN KEY (report_id) REFERENCES qb_report(report_id),
	FOREIGN KEY (group_id) REFERENCES qb_group(group_id)
);

-- Création de la table qb_report_to_user
-- Contient les rapports à envoyer aux utilisateurs
CREATE TABLE qb_report_to_user (
	report_id bigint,
	user_id bigint,

	PRIMARY KEY (report_id, user_id),
	FOREIGN KEY (report_id) REFERENCES qb_report(report_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Création de la table qb_alert
-- Contient les alertes des capteurs QuosBin
CREATE TABLE qb_alert (
	alert_id bigserial,
	sensor_id bigint NOT NULL,
	data_type_id int NOT NULL,
	value numeric(8,3) NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	ended_at timestamptz CHECK (ended_at >= date),

	PRIMARY KEY (alert_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id),
	FOREIGN KEY (data_type_id) REFERENCES qb_data_type(data_type_id)
);

-- Création de la table qb_alert_mail_history
-- Contient l'historique des alertes envoyées par mail
CREATE TABLE qb_alert_mail_history (
	alert_id bigint,
	user_id bigint,
	date timestamptz NOT NULL,

	PRIMARY KEY (alert_id, user_id),
	FOREIGN KEY (alert_id) REFERENCES qb_alert(alert_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Création de la table qb_user_to_alert
-- Contient les utilisateurs à avertir par mails lors d'une alerte
CREATE TABLE qb_user_to_alert (
	user_id bigint,
	sensor_id bigint,
	data_type_id int,

	PRIMARY KEY (user_id, sensor_id, data_type_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id),
	FOREIGN KEY (data_type_id) REFERENCES qb_data_type(data_type_id)
);

-- Création de la table qb_tour
-- Contient les tournées QuosBin
CREATE TABLE qb_tour (
	tour_id serial,
	start_date timestamptz NOT NULL,
	end_date timestamptz NOT NULL CHECK (end_date >= start_date),
	user_id bigint NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (tour_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Création de la table qb_tour_sensor
-- Contient les capteurs liés à une tournée QuosBin
CREATE TABLE qb_tour_sensor (
	tour_id int,
	sensor_id bigint,
	date timestamptz,

	PRIMARY KEY (tour_id, sensor_id),
	FOREIGN KEY (tour_id) REFERENCES qb_tour(tour_id),
	FOREIGN KEY (sensor_id) REFERENCES qb_sensor(sensor_id)
);


------------------ TABLES CONCERNANT QUOS SILO --------------------------

-- Création de la table qs_data_type
-- Contient les différents type de données prévelés par les capteurs QuosSilo
CREATE TABLE qs_data_type (
	data_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (data_type_id),
	CONSTRAINT unique_qs_data_type_name UNIQUE (name)
);

-- Création de la table qs_pn_product 
-- Contient la liste des différents pn_product QuosSilo
CREATE TABLE qs_pn_product (
	pn_product_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (pn_product_id),
	CONSTRAINT unique_qs_pn_product_name UNIQUE (name)
);

-- Création de la table qs_silo_model 
-- Contient les informations des différents modèles de contenant des clients
CREATE TABLE qs_silo_model (
	model_id bigserial, 
	name varchar(128) NOT NULL,
	customer_id bigint NOT NULL,
	height int NOT NULL,

	PRIMARY KEY (model_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_customer_silo_model_name UNIQUE (name, customer_id)
);

-- Création de la table qs_silo_content_type
-- Contient les différents type de contenu de poubelles
CREATE TABLE qs_silo_content_type (
	content_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (content_type_id),
	CONSTRAINT unique_silo_content_type_name UNIQUE (name)
);

-- Création de la table qs_sensor
-- Contient les capteurs Quossilo
CREATE TABLE qs_sensor (
	sensor_id bigserial,
	pn_product_id int NOT NULL,
	sn_product varchar(64) NOT NULL,
	name varchar(128) NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (sensor_id),
	FOREIGN KEY (pn_product_id) REFERENCES qs_pn_product(pn_product_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qs_sn_product UNIQUE (sn_product)
);

-- Création de la table qs_sensor_param 
-- Contient les informations complémentaires au capteurs Quossilo
CREATE TABLE qs_sensor_param (
	param_id bigserial,
	sensor_id bigint NOT NULL,
	is_activated boolean NOT NULL DEFAULT false,
	number_of_return int NOT NULL CHECK (number_of_return >= 0) DEFAULT 0,
	model_id int,
	content_type_id int,

	PRIMARY KEY (param_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id),
	FOREIGN KEY (model_id) REFERENCES qs_silo_model(model_id),
	FOREIGN KEY (content_type_id) REFERENCES qs_silo_content_type(content_type_id),
	CONSTRAINT unique_qs_sensor_param_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qs_sensor_date 
-- Contient les informations datées des capteurs Quossilo
CREATE TABLE qs_sensor_date (
	date_id bigserial,
	sensor_id bigint NOT NULL,
	installation_date timestamptz,
	desactivation_date timestamptz,
	lost_communication_date timestamptz,

	PRIMARY KEY (date_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id),
	CONSTRAINT unique_qs_sensor_date_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qs_sensor_threshold 
-- Contient les seuils de déclenchement d'alertes des capteurs Quossilo
CREATE TABLE qs_sensor_threshold (
	threshold_id bigserial,
	sensor_id bigint NOT NULL,
	data_type_id int NOT NULL,
	updated_at timestamptz NOT NULL DEFAULT now(),
	max_threshold numeric(8, 3) NOT NULL,
	max_comfort numeric(8, 3) NOT NULL,

	PRIMARY KEY (threshold_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id),
	FOREIGN KEY (data_type_id) REFERENCES qs_data_type(data_type_id),
	CONSTRAINT unique_qs_sensor_data_type_threshold UNIQUE (sensor_id, data_type_id)
);

-- Création de la table qs_group 
-- Contient les différents groupes de poubelles
CREATE TABLE qs_group (
	group_id bigserial, 
	name varchar(128) NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (group_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qs_customer_group_name UNIQUE (customer_id, name)
);

-- Création de la table qs_sensor_group 
-- Contient la liste des groupes de capteurs
CREATE TABLE qs_sensor_group (
	group_id bigint,
	sensor_id bigint,

	PRIMARY KEY (group_id, sensor_id),
	FOREIGN KEY (group_id) REFERENCES qs_group(group_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id)
);

-- Création de la table qs_sensor_location 
-- Contient les emplacements des différents capteurs Quossilo
CREATE TABLE qs_sensor_location (
	location_id bigserial,
	sensor_id bigint NOT NULL,
	longitude numeric(7, 5) NOT NULL,
	latitude numeric(7, 5) NOT NULL,
	city varchar(128) NOT NULL,
	street varchar(256),
	country varchar(128) NOT NULL,

	PRIMARY KEY (location_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id),
	CONSTRAINT unique_qs_sensor_location_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qs_network
-- Contient les informations réseaux des capteurs Quossilo
CREATE TABLE qs_lorawan_network (
	lorawan_id bigserial,
	sensor_id bigint NOT NULL,
	dev_eui varchar(64) NOT NULL,
	dev_addr varchar(64) NOT NULL,
	app_eui varchar(64) NOT NULL,
	app_key varchar(64) NOT NULL,
	network_name_id int NOT NULL,
	attribution_date timestamptz NOT NULL DEFAULT now(),
	network_security_key varchar(128),
	app_security_key varchar(128),
	mqtt_id int NOT NULL,
	
	PRIMARY KEY (lorawan_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id),
	FOREIGN KEY (network_name_id) REFERENCES network_name(network_name_id),
	FOREIGN KEY (mqtt_id) REFERENCES mqtt_channel(mqtt_id),
	CONSTRAINT unique_qs_lorawan_network_sensor_id UNIQUE (sensor_id),
	CONSTRAINT unique_qs_dev_eui UNIQUE (dev_eui)
); 

-- Création de la table qs_downlink_mode
-- Contient les différents mode de downlink Quossilo
CREATE TABLE qs_downlink_mode (
	downlink_mode_id serial,
	name varchar(64) NOT NULL,
	mode char(4) NOT NULL,
	requires_value boolean NOT NULL,
	description text,

	PRIMARY KEY (downlink_mode_id),
	CONSTRAINT unique_qs_downlink_mode_name UNIQUE (name),
	CONSTRAINT unique_qs_downlink_mode_value UNIQUE (mode)
);

-- Création de la table qs_downlink
-- Contient les downlinks envoyés aux capteurs Quossilo
CREATE TABLE qs_downlink (
	downlink_id bigserial,
	sensor_id bigint NOT NULL,
	downlink_mode_id int NOT NULL,
	value varchar(8) NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	network_name_id int NOT NULL,
	received boolean,

	PRIMARY KEY (downlink_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id),
	FOREIGN KEY (downlink_mode_id) REFERENCES qs_downlink_mode(downlink_mode_id),
	FOREIGN KEY (network_name_id) REFERENCES network_name(network_name_id)
);

-- Création de la table qs_evt_attribution 
-- Contient les identifiant d'attribution des événements Quossilo
CREATE TABLE qs_evt_attribution (
	evt_attribution_id bigserial,
	sensor_id bigint NOT NULL,

	PRIMARY KEY (evt_attribution_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id),
	CONSTRAINT unique_qs_evt_attribution_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qs_evt
-- Contient les événements des capteurs Quossilo
CREATE TABLE qs_evt (
	evt_id bigserial,
	evt_attribution_id bigint NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	battery_tension numeric(8,3) NOT NULL,
	rssi int NOT NULL,
	status int NOT NULL DEFAULT 0,

	PRIMARY KEY (evt_id),
	FOREIGN KEY (evt_attribution_id) REFERENCES qs_evt_attribution(evt_attribution_id)
);

-- Création de la table qs_evt_filling_distance
-- Contient les événements de distance prélevés par les capteurs QuosSilo
CREATE TABLE qs_evt_filling_distance (
	filling_distance_id bigserial,
	evt_id bigint NOT NULL,
	value int NOT NULL,

	PRIMARY KEY (filling_distance_id),
	FOREIGN KEY (evt_id) REFERENCES qs_evt(evt_id),
	CONSTRAINT unique_qs_evt_id_filling_distance UNIQUE (evt_id)
);

-- Création de la table qs_analysis_type 
-- Contient les différentes analyses possible pour Quossilo
CREATE TABLE qs_analysis_type (
	analysis_type_id serial,
	name varchar(128) NOT NULL,

	PRIMARY KEY (analysis_type_id),
	CONSTRAINT unique_qs_analysis_type_name UNIQUE (name)
);

-- Création de la table qs_target_type 
-- Contient les cibles possibles pour les rapports et les analyses
CREATE TABLE qs_target_type (
	target_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (target_type_id),
	CONSTRAINT unique_qs_target_type_name UNIQUE (name)
);

-- Création de la table qs_analysis 
-- Contient les analyses Quossilo
CREATE TABLE qs_analysis (
	analysis_id bigserial,
	user_id bigint NOT NULL,
	customer_id bigint NOT NULL,
	analysis_type_id int NOT NULL,
	target_type_id int NOT NULL,
	chart_type_id int NOT NULL,
	period_setting_id int NOT NULL,
	granularity_setting_id int NOT NULL,
	content_type_id int,
	origin_page_id int NOT NULL,
	title varchar(128) NOT NULL,
	all_selected boolean NOT NULL DEFAULT false,
	start_date timestamptz,
	end_date timestamptz CHECK (end_date >= start_date),

	PRIMARY KEY (analysis_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (analysis_type_id) REFERENCES qs_analysis_type(analysis_type_id),
	FOREIGN KEY (target_type_id) REFERENCES qs_target_type(target_type_id),
	FOREIGN KEY (chart_type_id) REFERENCES chart_type(chart_type_id),
	FOREIGN KEY (period_setting_id) REFERENCES period_setting(period_setting_id),
	FOREIGN KEY (granularity_setting_id) REFERENCES granularity_setting(granularity_setting_id),
	FOREIGN KEY (content_type_id) REFERENCES qs_silo_content_type(content_type_id),
	FOREIGN KEY (origin_page_id) REFERENCES origin_page(origin_page_id)
);

-- Création de la table qs_sensor_analysis
-- Contient les capteurs liés à une analyses Quossilo
CREATE TABLE qs_sensor_analysis (
	analysis_id bigint,
	sensor_id bigint,

	PRIMARY KEY (analysis_id, sensor_id),
	FOREIGN KEY (analysis_id) REFERENCES qs_analysis(analysis_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id)
);

-- Création de la table qs_group_analysis
-- Contient les groupes liés à une analyse Quossilo
CREATE TABLE qs_group_analysis (
	analysis_id bigint,
	group_id bigint,

	PRIMARY KEY (analysis_id, group_id),
	FOREIGN KEY (analysis_id) REFERENCES qs_analysis(analysis_id),
	FOREIGN KEY (group_id) REFERENCES qs_group(group_id)	
);

-- Création de la table qs_report
-- Contient les rapports Quossilo 
CREATE TABLE qs_report (
	report_id bigserial,
	customer_id bigint NOT NULL,
	target_type_id int NOT NULL,
	content_type_id int,
	period_setting_id int NOT NULL,
	dispatch boolean NOT NULL DEFAULT false,
	all_selected boolean NOT NULL DEFAULT false,
	title varchar(128) NOT NULL,

	PRIMARY KEY (report_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (target_type_id) REFERENCES qs_target_type(target_type_id),
	FOREIGN KEY (content_type_id) REFERENCES qs_silo_content_type(content_type_id),
	FOREIGN KEY (period_setting_id) REFERENCES period_setting(period_setting_id)
);

-- Création de la table qs_report_analysis
-- Contient les analyses qui concernent un rapport
CREATE TABLE qs_report_analysis (
	report_id bigint,
	analysis_type_id int,

	PRIMARY KEY (report_id, analysis_type_id),
	FOREIGN KEY (report_id) REFERENCES qs_report(report_id),
	FOREIGN KEY (analysis_type_id) REFERENCES qs_analysis_type(analysis_type_id)
);

-- Création de la table qs_report_content_type
-- Contient les types de contenus qui concernent un rapport
CREATE TABLE qs_report_content_type (
	report_id bigint,
	content_type_id int,

	PRIMARY KEY (report_id, content_type_id),
	FOREIGN KEY (report_id) REFERENCES qs_report(report_id),
	FOREIGN KEY (content_type_id) REFERENCES qs_silo_content_type(content_type_id)
);

-- Création de la table qs_sensor_report
-- Contient les capteurs liés à un rapport
CREATE TABLE qs_sensor_report (
	report_id bigint,
	sensor_id bigint,

	PRIMARY KEY (report_id, sensor_id),
	FOREIGN KEY (report_id) REFERENCES qs_report(report_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id)
);

-- Création de la table qs_group_report
-- Contient les groupes liés à un rapport
CREATE TABLE qs_group_report (
	report_id bigint,
	group_id bigint,

	PRIMARY KEY (report_id, group_id),
	FOREIGN KEY (report_id) REFERENCES qs_report(report_id),
	FOREIGN KEY (group_id) REFERENCES qs_group(group_id)
);

-- Création de la table qs_report_to_user
-- Contient les rapports à envoyer aux utilisateurs
CREATE TABLE qs_report_to_user (
	report_id bigint,
	user_id bigint,

	PRIMARY KEY (report_id, user_id),
	FOREIGN KEY (report_id) REFERENCES qs_report(report_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Création de la table qs_alert
-- Contient les alertes des capteurs Quossilo
CREATE TABLE qs_alert (
	alert_id bigserial,
	sensor_id bigint NOT NULL,
	data_type_id int NOT NULL,
	value numeric(8,3) NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	ended_at timestamptz CHECK (ended_at >= date),

	PRIMARY KEY (alert_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id),
	FOREIGN KEY (data_type_id) REFERENCES qs_data_type(data_type_id)
);

-- Création de la table qs_alert_mail_history
-- Contient l'historique des alertes envoyées par mail
CREATE TABLE qs_alert_mail_history (
	alert_id bigint,
	user_id bigint,
	date timestamptz NOT NULL,

	PRIMARY KEY (alert_id, user_id),
	FOREIGN KEY (alert_id) REFERENCES qs_alert(alert_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Création de la table qs_user_to_alert
-- Contient les utilisateurs à avertir par mails lors d'une alerte
CREATE TABLE qs_user_to_alert (
	user_id bigint,
	sensor_id bigint,
	data_type_id int,

	PRIMARY KEY (user_id, sensor_id, data_type_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id),
	FOREIGN KEY (data_type_id) REFERENCES qs_data_type(data_type_id)
);

-- Création de la table qs_tour
-- Contient les tournées Quossilo
CREATE TABLE qs_tour (
	tour_id serial,
	start_date timestamptz NOT NULL,
	end_date timestamptz NOT NULL CHECK (end_date >= start_date),
	user_id bigint NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (tour_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Création de la table qs_tour_sensor
-- Contient les capteurs liés à une tournée Quossilo
CREATE TABLE qs_tour_sensor (
	tour_id int,
	sensor_id bigint,
	date timestamptz,

	PRIMARY KEY (tour_id, sensor_id),
	FOREIGN KEY (tour_id) REFERENCES qs_tour(tour_id),
	FOREIGN KEY (sensor_id) REFERENCES qs_sensor(sensor_id)
);


-------------------------- TABLES CONCERNANT QUOS TERRA -------------------------------

-- Création de la table qt_data_type
-- Contient les types de donbnées prélevées par les capteurs QuosTerra
CREATE TABLE qt_data_type (
	data_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (data_type_id),
	CONSTRAINT unique_qt_data_type_name UNIQUE (name)
);

-- Création de la table qt_pn_product
-- Contient les pn product des capteurs QuosTerra
CREATE TABLE qt_pn_product (
	pn_product_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (pn_product_id),
	CONSTRAINT unique_qt_pn_product_name UNIQUE (name)
); 

-- Création de la table qt_model
-- Contient les modèles de capteurs QuosTerra
CREATE TABLE qt_model (
	model_id bigserial,
	name varchar(128) NOT NULL,
	volume int NOT NULL,
	area numeric(5, 2) NOT NULL,
	depth int NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (model_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qt_customer_model_name UNIQUE (name, customer_id)
);

-- Création de la table qt_substrate
-- Contient les différents types de substrat pour les capteurs QuosTerra
CREATE TABLE qt_substrate (
	substrate_id serial,
	name varchar(128) NOT NULL,
	density numeric(8, 3) NOT NULL,
	clay_rate numeric(8, 3) NOT NULL,
	min_humidity numeric(8, 3) NOT NULL,
	max_humidity numeric(8, 3) NOT NULL,

	PRIMARY KEY (substrate_id),
	CONSTRAINT unique_qt_substrate_name UNIQUE (name)
);

-- Création de la table qt_language
-- Contient les langues des noms de plantes
CREATE TABLE qt_language (
	language_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (language_id),
	CONSTRAINT unique_qt_language_name UNIQUE (name)
);

-- Création de la table qt_plant_family
-- Contient les différentes familles de plantes
CREATE TABLE qt_plant_family (
	plant_family_id serial,
	language_id int NOT NULL,
	name varchar(128) NOT NULL,
	root_size int,

	PRIMARY KEY (plant_family_id),
	FOREIGN KEY (language_id) REFERENCES qt_language(language_id),
	CONSTRAINT unique_qt_language_plant_family_name UNIQUE (language_id, name)
);

-- Création de la table qt_plant
-- Contient les plantes d'un client
CREATE TABLE qt_plant (
	plant_id bigserial,
	name varchar(128) NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (plant_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qt_customer_plant_name UNIQUE (customer_id, name)
);

-- Création de la table qt_plant_humidity
-- Contient les seuils d'humidité des plantes d'un client
CREATE TABLE qt_plant_humidity (
	plant_humidity_id bigserial,
	plant_id bigint NOT NULL,
	min_humidity numeric(8, 3) NOT NULL,
	max_humidity numeric(8, 3) NOT NULL,

	PRIMARY KEY (plant_humidity_id),
	FOREIGN KEY (plant_id) REFERENCES qt_plant(plant_id),
	CONSTRAINT unique_qt_plant_humidity UNIQUE (plant_id)
);

-- Création de la table qt_plant_temperature
-- Contient les seuils de température des plantes d'un client
CREATE TABLE qt_plant_temperature (
	plant_temperature_id bigserial,
	plant_id bigint NOT NULL,
	min_temperature numeric(8, 3) NOT NULL,
	max_temperature numeric(8, 3) NOT NULL,

	PRIMARY KEY (plant_temperature_id),
	FOREIGN KEY (plant_id) REFERENCES qt_plant(plant_id),
	CONSTRAINT unique_qt_plant_temperature UNIQUE (plant_id)
);

-- Création de la table qt_plant_sunshine
-- Contient les seuils d'ensoleillement des plantes d'un client
CREATE TABLE qt_plant_sunshine (
	plant_sunshine_id bigserial,
	plant_id bigint NOT NULL,
	min_sunshine numeric(8, 3) NOT NULL,
	max_sunshine numeric(8, 3) NOT NULL,

	PRIMARY KEY (plant_sunshine_id),
	FOREIGN KEY (plant_id) REFERENCES qt_plant(plant_id),
	CONSTRAINT unique_qt_plant_sunshine UNIQUE (plant_id)
);

-- Création de la table qt_sensor 
-- Contient les capteurs QuosTerra
CREATE TABLE qt_sensor (
	sensor_id bigserial,
	pn_product_id int NOT NULL,
	sn_product varchar(64) NOT NULL,
	name varchar(128) NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (sensor_id),
	FOREIGN KEY (pn_product_id) REFERENCES qt_pn_product(pn_product_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qt_sn_product UNIQUE (sn_product)
);

-- Création de la table qt_sensor_param
-- Contient les paramètres des capteurs QuosTerra
CREATE TABLE qt_sensor_param (
	param_id bigserial,
	sensor_id bigint NOT NULL,
	is_activated boolean NOT NULL DEFAULT false,
	substrate_id int,
	model_id int,
	volume int,
	area numeric(5, 2),
	depth int,
	number_of_return int NOT NULL CHECK (number_of_return >= 0),

	PRIMARY KEY (param_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id),
	FOREIGN KEY (substrate_id) REFERENCES qt_substrate(substrate_id),
	FOREIGN KEY (model_id) REFERENCES qt_model(model_id),
	CONSTRAINT unique_qt_sensor_param_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qt_sensor_date
-- Contient les dates des capteurs QuosTerra
CREATE TABLE qt_sensor_date (
	date_id bigserial,
	sensor_id bigint NOT NULL,
	installation_date timestamptz,
	desactivation_date timestamptz,
	lost_communication_date timestamptz,

	PRIMARY KEY (date_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id),
	CONSTRAINT unique_qt_sensor_date_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qt_sensor_plant
-- Contient les plantes surveillées par un capteur
CREATE TABLE qt_sensor_plant (
	sensor_id bigint,
	plant_id bigint,

	PRIMARY KEY (sensor_id, plant_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id),
	FOREIGN KEY (plant_id) REFERENCES qt_plant(plant_id)
);

-- Création de la table qt_sensor_threshold
-- Contient les seuils des capteurs QuosTerra
CREATE TABLE qt_sensor_threshold (
	threshold_id bigserial,
	sensor_id bigint NOT NULL,
	data_type_id int NOT NULL,
	updated_at timestamptz NOT NULL DEFAULT now(),
	max_threshold numeric(8, 3) NOT NULL,
	max_comfort numeric(8, 3) NOT NULL,
	min_comfort numeric(8, 3) NOT NULL,
	min_threshold numeric(8, 3) NOT NULL,

	PRIMARY KEY (threshold_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id),
	FOREIGN KEY (data_type_id) REFERENCES qt_data_type(data_type_id),
	CONSTRAINT unique_qt_sensor_data_type_threshold UNIQUE (sensor_id, data_type_id)
);

-- Création de la table qt_group
-- Contient les groupes de capteurs QuosTerra
CREATE TABLE qt_group (
	group_id bigserial,
	name varchar(128) NOT NULL,
	customer_id int NOT NULL,

	PRIMARY KEY (group_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qt_customer_group_name UNIQUE (customer_id, name)
);

-- Création de la table qt_sensor_group
-- Contient les capteurs QuasTerra appartenant à un groupe
CREATE TABLE qt_sensor_group (
	group_id bigint,
	sensor_id bigint,

	PRIMARY KEY (group_id, sensor_id),
	FOREIGN KEY (group_id) REFERENCES qt_group(group_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id)
);

-- Création de la table qt_sensor_location
-- Contient la localisation des capteurs QuosTerra
CREATE TABLE qt_sensor_location (
	location_id bigserial,
	city varchar(128),
	street varchar(128),
	latitude numeric (7, 5) NOT NULL,
	longitude numeric(7, 5) NOT NULL,
	sensor_id bigint NOT NULL,

	PRIMARY KEY (location_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id),
	CONSTRAINT unique_qt_location_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qt_lorawan_network
-- Contient les informations réseaux lorawan des capteurs QuosTerra
CREATE TABLE qt_lorawan_network (
	lorawan_id bigserial,
	sensor_id bigint NOT NULL,
	dev_eui varchar(64) NOT NULL,
	dev_addr varchar(64) NOT NULL,
	app_eui varchar(64) NOT NULL,
	app_key varchar(64) NOT NULL,
	network_name_id int NOT NULL,
	attribution_date timestamptz NOT NULL DEFAULT now(),
	network_security_key varchar(128),
	app_security_key varchar(128),
	mqtt_id int NOT NULL,

	PRIMARY KEY (lorawan_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id),
	FOREIGN KEY (network_name_id) REFERENCES network_name(network_name_id),
	FOREIGN KEY (mqtt_id) REFERENCES mqtt_channel(mqtt_id),
	CONSTRAINT unique_qt_lorawan_network_sensor_id UNIQUE (sensor_id),
	CONSTRAINT unique_qt_dev_eui UNIQUE (dev_eui)
);

-- Création de la table qt_downlink_mode
-- Contient les différents mode de downlinks QuosTerra
CREATE TABLE qt_downlink_mode (
	downlink_mode_id serial,
	name varchar(64) NOT NULL,
	mode char(4) NOT NULL,
	requires_value boolean NOT NULL,
	description text,

	PRIMARY KEY (downlink_mode_id),
	CONSTRAINT unique_qt_downlink_mode_value UNIQUE (mode),
	CONSTRAINT unique_qt_downlink_mode_name UNIQUE (name)
);

-- Création de la table qt_downlink
-- Contient l'historique des downlinks envoyés
CREATE TABLE qt_downlink (
	downlink_id bigserial,
	sensor_id bigint NOT NULL,
	downlink_mode_id int NOT NULL,
	value char(8) NOT NULL,
	network_name_id int NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	received boolean,

	PRIMARY KEY (downlink_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id),
	FOREIGN KEY (downlink_mode_id) REFERENCES qt_downlink_mode(downlink_mode_id),
	FOREIGN KEY (network_name_id) REFERENCES network_name(network_name_id)
);

-- Création de la table qt_evt_atribution
-- Contient les identifiants d'attributions pour les événements des capteurs QuosTerra
CREATE TABLE qt_evt_attribution (
	evt_attribution_id bigserial,
	sensor_id bigint NOT NULL,

	PRIMARY KEY (evt_attribution_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id),
	CONSTRAINT unique_qt_evt_attribution_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qt_evt
-- Contient les événements des capteurs QuosTerra
CREATE TABLE qt_evt (
	evt_id bigserial,
	evt_attribution_id bigint NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	battery_tension numeric(8, 3) NOT NULL,
	rssi int NOT NULL,
	status int NOT NULL DEFAULT 0,

	PRIMARY KEY (evt_id),
	FOREIGN KEY (evt_attribution_id) REFERENCES qt_evt_attribution(evt_attribution_id)
);

-- Création de la table qt_evt_humidity
-- Contient les événements d'humidité des capteurs QuosTerra
CREATE TABLE qt_evt_humidity (
	humidity_id bigserial,
	evt_id bigint NOT NULL,
	value numeric(8, 3) NOT NULL,

	PRIMARY KEY (humidity_id),
	FOREIGN KEY (evt_id) REFERENCES qt_evt(evt_id),
	CONSTRAINT unique_qt_evt_id_humidity UNIQUE (humidity_id)
);

-- -- Création de la table qt_evt_capacity
-- -- Contient les événements de capacité des capteurs QuosTerra
-- CREATE TABLE qt_evt_capacity (
-- 	capacity_id bigserial,
-- 	evt_id bigint NOT NULL,
-- 	value numeric(8, 3) NOT NULL,

-- 	PRIMARY KEY (capacity_id),
-- 	FOREIGN KEY (evt_id) REFERENCES qt_evt(evt_id),
-- 	CONSTRAINT unique_qt_evt_id_capacity UNIQUE (capacity_id)
-- );

-- Création de la table qt_evt_temperature
-- Contient les événements de température des capteurs QuosTerra
CREATE TABLE qt_evt_temperature (
	temperature_id bigserial,
	evt_id bigint NOT NULL,
	value numeric(8, 3) NOT NULL,

	PRIMARY KEY (temperature_id),
	FOREIGN KEY (evt_id) REFERENCES qt_evt(evt_id),
	CONSTRAINT unique_qt_evt_id_temperature UNIQUE (temperature_id)
);

-- Création de la table qt_analysis_type
-- Contient les types d'analyses QuosTerra
CREATE TABLE qt_analysis_type (
	analysis_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (analysis_type_id),
	CONSTRAINT unique_qt_analysis_type UNIQUE (name)
);

-- Création de la table qt_target_type
-- Contient les types de cible pour les analyses QuosTerra
CREATE TABLE qt_target_type (
	target_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (target_type_id),
	CONSTRAINT unique_qt_target_type_name UNIQUE (name)
);

-- Création de la table qt_analysis
-- Contient les analyses QuosTerra
CREATE TABLE qt_analysis (
	analysis_id bigserial,
	user_id bigint NOT NULL,
	customer_id bigint NOT NULL,
	chart_type_id int NOT NULL,
	analysis_type_id int NOT NULL,
	target_type_id int NOT NULL,
	period_setting_id int NOT NULL,
	granularity_setting_id int NOT NULL,
	origin_page_id int NOT NULL,
	title varchar(128) NOT NULL,
	all_selected boolean NOT NULL DEFAULT false,
	start_date timestamptz,
	end_date timestamptz CHECK (end_date >= start_date),

	PRIMARY KEY (analysis_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (chart_type_id) REFERENCES chart_type(chart_type_id),
	FOREIGN KEY (analysis_type_id) REFERENCES qt_analysis_type(analysis_type_id),
	FOREIGN KEY (target_type_id) REFERENCES qt_target_type(target_type_id),
	FOREIGN KEY (period_setting_id) REFERENCES period_setting(period_setting_id),
	FOREIGN KEY (granularity_setting_id) REFERENCES granularity_setting(granularity_setting_id),
	FOREIGN KEY (origin_page_id) REFERENCES origin_page(origin_page_id)
);

-- Création de la table qt_sensor_analysis
-- Contient les capteurs concernés par une analyse QuosTerra
CREATE TABLE qt_sensor_analysis (
	analysis_id bigint,
	sensor_id bigint,

	PRIMARY KEY (analysis_id, sensor_id),
	FOREIGN KEY (analysis_id) REFERENCES qt_analysis(analysis_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id)
);

-- Création de la table qt_sensor_analysis
-- Contient les capteurs concernés par une analyse QuosTerra
CREATE TABLE qt_group_analysis (
	analysis_id bigint,
	group_id bigint,

	PRIMARY KEY (analysis_id, group_id),
	FOREIGN KEY (analysis_id) REFERENCES qt_analysis(analysis_id),
	FOREIGN KEY (group_id) REFERENCES qt_group(group_id)
);

-- Création de la table qt_report
-- Contient les rapports QuosTerra
CREATE TABLE qt_report (
	report_id bigserial,
	customer_id bigint NOT NULL,
	target_type_id int NOT NULL,
	period_setting_id int NOT NULL,
	dispatch boolean NOT NULL DEFAULT false,
	all_selected boolean NOT NULL DEFAULT false,
	title varchar(128) NOT NULL,

	PRIMARY KEY (report_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (target_type_id) REFERENCES qt_target_type(target_type_id),
	FOREIGN KEY (period_setting_id) REFERENCES period_setting(period_setting_id)
);

-- Création de la table qt_report_analysis
-- Contient les analyses concernées par un rapport QuosTerra
CREATE TABLE qt_report_analysis (
	report_id bigint,
	analysis_type_id int,

	PRIMARY KEY (report_id, analysis_type_id),
	FOREIGN KEY (report_id) REFERENCES qt_report(report_id),
	FOREIGN KEY (analysis_type_id) REFERENCES qt_analysis_type(analysis_type_id)
);

-- Création de la table qt_sensor_report
-- Contient les capteurs concernés par un rapport QuosTerra
CREATE TABLE qt_sensor_report (
	report_id bigint,
	sensor_id bigint,

	PRIMARY KEY (report_id, sensor_id),
	FOREIGN KEY (report_id) REFERENCES qt_report(report_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id)
);

-- Création de la table qt_group_report
-- Contient les groupes concernés par un rapport QuosTerra
CREATE TABLE qt_group_report (
	report_id bigint,
	group_id bigint,

	PRIMARY KEY (report_id, group_id),
	FOREIGN KEY (report_id) REFERENCES qt_report(report_id),
	FOREIGN KEY (group_id) REFERENCES qt_group(group_id)
);

-- Création de la table qt_report_to_user
-- Contient les utilisateurs qui recevront les rapport par mail
CREATE TABLE qt_report_to_user (
	report_id bigint,
	user_id bigint,

	PRIMARY KEY (report_id, user_id),
	FOREIGN KEY (report_id) REFERENCES qt_report(report_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Création de la table qt_alert
-- Contient les alertes des capteurs QuosTerra
CREATE TABLE qt_alert (
	alert_id bigserial,
	sensor_id bigint NOT NULL,
	data_type_id int NOT NULL,
	value numeric(8, 3) NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	ended_at timestamptz CHECK (ended_at >= date),

	PRIMARY KEY (alert_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id),
	FOREIGN KEY (data_type_id) REFERENCES qt_data_type(data_type_id)
);

-- Création de la table qt_alert_mail_history 
-- Contient l'historique des alertes par mail
CREATE TABLE qt_alert_mail_history (
	alert_id bigint,
	user_id bigint,
	date timestamptz NOT NULL DEFAULT now(),

	PRIMARY KEY (alert_id, user_id),
	FOREIGN KEY (alert_id) REFERENCES qt_alert(alert_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Création de la table qt_user_to_alert
-- Contient
CREATE TABLE qt_user_to_alert (
	sensor_id bigint,
	user_id bigint,
	data_type_id int,

	PRIMARY KEY (sensor_id, user_id, data_type_id),
	FOREIGN KEY (sensor_id) REFERENCES qt_sensor(sensor_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (data_type_id) REFERENCES qt_data_type(data_type_id)
);


--------------------------- TABLES CONCERNANT QUOS PARK ----------------------------

-- Création de la table qp_data_type
-- Contient les types de données prélevées par la capteurs QuosPark
CREATE TABLE qp_data_type (
	data_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (data_type_id),
	CONSTRAINT unique_qp_data_type_name UNIQUE (name)
);

-- Création de la table qp_pn_product
-- Contient les pn product des capteurs QuosPark
CREATE TABLE qp_pn_product (
	pn_product_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (pn_product_id),
	CONSTRAINT unique_qp_pn_product_name UNIQUE (name)
);

-- Création de la table qp_park_type
-- Contient les types de places de parking
CREATE TABLE qp_park_type (
	park_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (park_type_id),
	CONSTRAINT unique_qp_park_type_name UNIQUE (name)
);

-- Création de la table qp_payment_condition
-- Contient les types de paiement des places de parking 
CREATE TABLE qp_payment_condition (
	payment_condition_id bigserial,
	name varchar(128) NOT NULL,

	PRIMARY KEY (payment_condition_id),
	CONSTRAINT unique_qp_payment_condition_name UNIQUE (name)
);

-- Création de la table qp_sensor
-- Contient les capteurs QuosPark
CREATE TABLE qp_sensor (
	sensor_id bigserial,
	pn_product_id int NOT NULL,
	sn_product varchar(64) NOT NULL,
	name varchar(128) NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (sensor_id),
	FOREIGN KEY (pn_product_id) REFERENCES qp_pn_product(pn_product_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qp_sn_product UNIQUE (sn_product)
);

-- Création de la table qp_sensor_param
-- Contient les paramètres des capteurs QuosPark
CREATE TABLE qp_sensor_param (
	param_id bigserial,
	sensor_id bigint NOT NULL,
	is_activated boolean NOT NULL DEFAULT false,
	park_type_id int,
	payment_condition_id bigint,
	rechargeable boolean NOT NULL DEFAULT false,
	number_of_return int NOT NULL CHECK (number_of_return >= 0) DEFAULT 0,
	maintenance_password varchar(32),
	rf_password varchar(32),

	PRIMARY KEY (param_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id),
	FOREIGN KEY (park_type_id) REFERENCES qp_park_type(park_type_id),
	FOREIGN KEY (payment_condition_id) REFERENCES qp_payment_condition(payment_condition_id),
	CONSTRAINT unique_qp_sensor_param_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qp_sensor_date
-- Contient les dates des capteurs QuosPark
CREATE TABLE qp_sensor_date (
	date_id bigserial,
	sensor_id bigint NOT NULL,
	installation_date timestamptz,
	desactivation_date timestamptz,
	lost_communication_date timestamptz,

	PRIMARY KEY (date_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id),
	CONSTRAINT unique_qp_sensor_date_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qp_sensor_threshold
-- Contient les seuils des capteurs QuosPark
CREATE TABLE qp_sensor_threshold (
	threshold_id bigserial,
	sensor_id bigint NOT NULL,
	data_type_id bigint NOT NULL,
	updated_at timestamptz NOT NULL DEFAULT now(),
	max_threshold numeric(8, 3) NOT NULL,
	max_comfort numeric(8, 3) NOT NULL,

	PRIMARY KEY (threshold_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id),
	FOREIGN KEY (data_type_id) REFERENCES qp_data_type(data_type_id),
	CONSTRAINT unique_qp_sensor_data_type_threshold UNIQUE (sensor_id, data_type_id)
);

-- Création de la table qp_group
-- Contient les groupes de capteurs QuosPark
CREATE TABLE qp_group (
	group_id bigserial,
	name varchar(64) NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (group_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT unique_qp_customer_group_name UNIQUE (customer_id, name)
);

-- Création de la table qp_sensor_group
-- Contient les capteurs appartenant à des groupes QuosPark
CREATE TABLE qp_sensor_group (
	group_id bigint,
	sensor_id bigint,

	PRIMARY KEY (group_id, sensor_id),
	FOREIGN KEY (group_id) REFERENCES qp_group(group_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id)
);

-- Création de la table qp_sensor_location
-- Contient la localisation des capteurs QuosPark
CREATE TABLE qp_sensor_location (
	location_id bigserial,
	sensor_id bigint NOT NULL,
	street varchar(256),
	city varchar(128),
	latitude numeric(7, 5) NOT NULL,
	longitude numeric(7, 5) NOT NULL,

	PRIMARY KEY (location_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id),
	CONSTRAINT unique_qp_sensor_location UNIQUE (sensor_id)
);

-- Création de la table qp_lorawan_network
-- Contient les informations réseaux LoRa pour les capteurs QuosPark
CREATE TABLE qp_lorawan_network (
	lorawan_id bigserial,
	sensor_id bigint NOT NULL,
	dev_eui varchar(32) NOT NULL,
	dev_addr varchar(32) NOT NULL,
	app_eui varchar(32) NOT NULL,
	app_key varchar(32) NOT NULL,
	network_name_id int NOT NULL,
	network_security_key varchar(64),
	app_security_key varchar(64),
	mqtt_id int NOT NULL,

	PRIMARY KEY (lorawan_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id),
	FOREIGN KEY (network_name_id) REFERENCES network_name(network_name_id),
	FOREIGN KEY (mqtt_id) REFERENCES mqtt_channel(mqtt_id),
	CONSTRAINT unique_qp_lorawan_network_sensor_id UNIQUE (sensor_id),
	CONSTRAINT unique_qp_dev_eui UNIQUE (dev_eui)
);

-- Création de la table qp_downlink_mode
-- Contient les modes de downlinks pour les capteurs QuosPark
CREATE TABLE qp_downlink_mode (
	downlink_mode_id serial,
	name varchar(64) NOT NULL,
	mode char(4) NOT NULL,
	requires_value boolean NOT NULL,
	description text,

	PRIMARY KEY (downlink_mode_id),
	CONSTRAINT unique_qp_downlink_mode_name UNIQUE (name),
	CONSTRAINT unique_qp_downlink_mode_value UNIQUE (mode)
);

-- Création de la table qp_downlink
-- Contient l'historique des downlinks envoyés aux capteurs QuosPark
CREATE TABLE qp_downlink (
	downlink_id bigserial,
	sensor_id bigint NOT NULL,
	downlink_mode_id int NOT NULL,
	value char(8) NOT NULL,
	network_name_id int NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	received boolean,

	PRIMARY KEY (downlink_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id),
	FOREIGN KEY (downlink_mode_id) REFERENCES qp_downlink_mode(downlink_mode_id),
	FOREIGN KEY (network_name_id) REFERENCES network_name(network_name_id)
);

-- Création de la table qp_evt_attribution
-- Contient les identifiants d'attribution d'événements des capteurs QuosPark
CREATE TABLE qp_evt_attribution (
	evt_attribution_id bigserial,
	sensor_id bigint NOT NULL,

	PRIMARY KEY (evt_attribution_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id),
	CONSTRAINT unique_qp_evt_attribution_sensor_id UNIQUE (sensor_id)
);

-- Création de la table qp_evt
-- Contient les événements des capteurs QuosPark
CREATE TABLE qp_evt (
	evt_id bigserial,
	evt_attribution_id bigint NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	battery_tension numeric(8, 3) NOT NULL,
	rssi int NOT NULL,
	status int NOT NULL DEFAULT 0,

	PRIMARY KEY (evt_id),
	FOREIGN KEY (evt_attribution_id) REFERENCES qp_evt_attribution(evt_attribution_id)
);

-- Création de la table qp_evt_occupation
-- Contient les événements d'occupation des capteurs QuosPark
CREATE TABLE qp_evt_occupation (
	occupation_id bigserial,
	evt_id bigint NOT NULL,
	value boolean NOT NULL,
	
	PRIMARY KEY (occupation_id),
	FOREIGN KEY (evt_id) REFERENCES qp_evt(evt_id),
	CONSTRAINT unique_qp_evt_occupation_id UNIQUE (evt_id)
);

-- Création de la table qp_analysis_type
-- Contient les types d'analyses QuosPark
CREATE TABLE qp_analysis_type (
	analysis_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (analysis_type_id),
	CONSTRAINT unique_qp_analysis_type_name UNIQUE (name)
);

-- Création de la table qp_target_type
-- Contient les cibles disponibles pour les rapports et les analyses QuosPark
CREATE TABLE qp_target_type (
	target_type_id serial,
	name varchar(64) NOT NULL,

	PRIMARY KEY (target_type_id),
	CONSTRAINT unique_qp_target_type_name UNIQUE (name)
);

-- Création de la table qp_analysis
-- Contient les analyses QuosPark
CREATE TABLE qp_analysis (
	analysis_id bigserial,
	user_id bigint NOT NULL,
	customer_id bigint NOT NULL,
	chart_type_id int NOT NULL,
	target_type_id int NOT NULL,
	analysis_type_id int NOT NULL,
	period_setting_id int NOT NULL,
	granularity_setting_id int NOT NULL,
	park_type_id int,
	authorized_duration int,
	origin_page_id int NOT NULL,
	title varchar(128) NOT NULL,
	all_selected boolean NOT NULL DEFAULT false,
	start_date timestamptz,
	end_date timestamptz CHECK (end_date >= start_date),

	PRIMARY KEY (analysis_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (chart_type_id) REFERENCES chart_type(chart_type_id),
	FOREIGN KEY (target_type_id) REFERENCES qp_target_type(target_type_id),
	FOREIGN KEY (analysis_type_id) REFERENCES qp_analysis_type(analysis_type_id),
	FOREIGN KEY (period_setting_id) REFERENCES period_setting(period_setting_id),
	FOREIGN KEY (granularity_setting_id) REFERENCES granularity_setting(granularity_setting_id),
	FOREIGN KEY (park_type_id) REFERENCES qp_park_type(park_type_id),
	FOREIGN KEY (origin_page_id) REFERENCES origin_page(origin_page_id) 
);

-- Création de la table qp_sensor_analysis
-- Contient les capteurs concernés par une analyses QuosPark
CREATE TABLE qp_sensor_analysis (
	analysis_id bigint,
	sensor_id bigint,

	PRIMARY KEY (analysis_id, sensor_id),
	FOREIGN KEY (analysis_id) REFERENCES qp_analysis(analysis_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id)
);

-- Création de la table qp_group_analysis
-- Contient les groupes concernés par une analyses QuosPark
CREATE TABLE qp_group_analysis (
	analysis_id bigint,
	group_id bigint,

	PRIMARY KEY (analysis_id, group_id),
	FOREIGN KEY (analysis_id) REFERENCES qp_analysis(analysis_id),
	FOREIGN KEY (group_id) REFERENCES qp_group(group_id)
);

-- Création de la table qp_report
-- Contient les rapports QuosPark 
CREATE TABLE qp_report (
	report_id bigserial,
	customer_id bigint NOT NULL,
	target_type_id int NOT NULL,
	period_setting_id int NOT NULL,
	title varchar(128) NOT NULL,
	all_selected boolean NOT NULL DEFAULT false,
	dispatch boolean NOT NULL DEFAULT false,

	PRIMARY KEY (report_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (target_type_id) REFERENCES qp_target_type(target_type_id),
	FOREIGN KEY (period_setting_id) REFERENCES period_setting(period_setting_id)
);

-- Création de la table qp_report_analysis 
-- Contient les analyses concernées par un rapport QuosPark
CREATE TABLE qp_report_analysis (
	report_id bigint,
	analysis_type_id int,

	PRIMARY KEY (report_id, analysis_type_id),
	FOREIGN KEY (report_id) REFERENCES qp_report(report_id),
	FOREIGN KEY (analysis_type_id) REFERENCES qp_analysis_type(analysis_type_id)
);

-- Création de la table qp_report_park_type
-- Contient les types de places de parking concernés par une analyse QuosPark
CREATE TABLE qp_report_park_type (
	report_id bigint,
	park_type_id int,

	PRIMARY KEY (report_id, park_type_id),
	FOREIGN KEY (report_id) REFERENCES qp_report(report_id),
	FOREIGN KEY (park_type_id) REFERENCES qp_park_type(park_type_id)	
);

-- Création de la table qp_report_park_time
-- Contient les temps de stationement autorisé pour les rapport QuosPark
CREATE TABLE qp_report_park_time (
	report_id bigint,
	authorized_duration int,

	PRIMARY KEY (report_id, authorized_duration),
	FOREIGN KEY (report_id) REFERENCES qp_report(report_id)
);

-- Création de la table qp_sensor_report
-- Contient les capteurs concernés par un rapport QuosPark
CREATE TABLE qp_sensor_report (
	report_id bigint,
	sensor_id bigint,

	PRIMARY KEY (report_id, sensor_id),
	FOREIGN KEY (report_id) REFERENCES qp_report(report_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id)
);

-- Création de la table qp_group_report
-- Contient les groupes concernés par un rapport QuosPark
CREATE TABLE qp_group_report (
	report_id bigint,
	group_id bigint,

	PRIMARY KEY (report_id, group_id),
	FOREIGN KEY (report_id) REFERENCES qp_report(report_id),
	FOREIGN KEY (group_id) REFERENCES qp_group(group_id)
);

-- Création de la table qp_report_to_user
-- Contient les rapports QuosPark à envoyer à des utilisateurs
CREATE TABLE qp_report_to_user (
	report_id bigint,
	user_id bigint,

	PRIMARY KEY (report_id, user_id),
	FOREIGN KEY (report_id) REFERENCES qp_report(report_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Création de la table qp_alert
-- Contient les alertes des capteurs QuosPark
CREATE TABLE qp_alert (
	alert_id bigserial,
	sensor_id bigint NOT NULL,
	date timestamptz NOT NULL DEFAULT now(),
	ended_at timestamptz CHECK (ended_at >= date),

	PRIMARY KEY (alert_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id)
);

-- Création de la table qp_alert_mail_history
-- Contient l'historique des alertes envoyées par mail des capteurs QuosPark
CREATE TABLE qp_alert_mail_history (
	alert_id bigint,
	user_id bigint,
	date timestamptz NOT NULL DEFAULT now(),

	PRIMARY KEY (alert_id, user_id),
	FOREIGN KEY (alert_id) REFERENCES qp_alert(alert_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Création de la table qp_user_to_alert
-- Contient les utilisateurs à avertir en cas d'alertes des capteurs QuosPark
CREATE TABLE qp_user_to_alert (
	sensor_id bigint,
	user_id bigint,
	data_type_id int,

	PRIMARY KEY (sensor_id, user_id, data_type_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (data_type_id) REFERENCES qp_data_type(data_type_id)
);

-- Création de la table qp_tour
-- Contient les tournées QuosPark
CREATE TABLE qp_tour (
	tour_id serial,
	start_date timestamptz NOT NULL,
	end_date timestamptz NOT NULL CHECK (end_date >= start_date),
	user_id bigint NOT NULL,
	customer_id bigint NOT NULL,

	PRIMARY KEY (tour_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Création de la table qp_tour_sensor
-- Contient les capteurs liés à une tournée QuosPark
CREATE TABLE qp_tour_sensor (
	tour_id int,
	sensor_id bigint,
	date timestamptz,

	PRIMARY KEY (tour_id, sensor_id),
	FOREIGN KEY (tour_id) REFERENCES qp_tour(tour_id),
	FOREIGN KEY (sensor_id) REFERENCES qp_sensor(sensor_id)
);