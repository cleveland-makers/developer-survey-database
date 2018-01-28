--
-- Creates the original schema for the cleveland developer survey database.

CREATE SCHEMA cleveland_developer_survey;

CREATE TABLE cleveland_developer_survey.survey_response (
	survey_response_id BIGINT NOT NULL,
    survey_question_id BIGINT NOT NULL,
    browser_thumbprint_id BIGINT NOT NULL,
    surevet_response TEXT NOT NULL
);

CREATE TABLE cleveland_developer_survey.survey_question (
    survey_question_id BIGINT NOT NULL
);

CREATE TABLE cleveland_developer_survey.browser_thumbprint (
    browser_thumbprint_id BIGINT NOT NULL,
    browser_thumbprint TEXT NOT NULL
);

CREATE TABLE cleveland_developer_survey.mail_list(
    mai_list_id BIGINT NOT NULL,
    email_address TEXT NOT NULL
);
