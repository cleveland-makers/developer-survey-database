--
-- Creates the original schema for the cleveland developer survey database.

CREATE SCHEMA cleveland_developer_survey;

--
-- Survey Response Table
CREATE TABLE cleveland_developer_survey.survey (
	survey_id BIGINT NOT NULL,
    browser_thumbprint TEXT NOT NULL
);

ALTER TABLE cleveland_developer_survey.survey
  ADD CONSTRAINT pkey_survey
  PRIMARY KEY (survey_id);

CREATE SEQUENCE cleveland_developer_survey.seq_survey_id
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

ALTER SEQUENCE cleveland_developer_survey.seq_survey_id
  OWNED BY cleveland_developer_survey.survey.survey_id;

ALTER TABLE cleveland_developer_survey.survey
  ALTER COLUMN survey_id
  SET DEFAULT nextval('cleveland_developer_survey.seq_survey_id'::regclass);

--
-- Survey Response Table
CREATE TABLE cleveland_developer_survey.survey_response (
	survey_response_id BIGINT NOT NULL,
    survey_id BIGINT NOT NULL,
    survey_question_id BIGINT NOT NULL,
    browser_thumbprint_id BIGINT NOT NULL,
    survey_response TEXT NOT NULL
);

ALTER TABLE cleveland_developer_survey.survey_response
  ADD CONSTRAINT pkey_survey_response
  PRIMARY KEY (survey_response_id);

CREATE SEQUENCE cleveland_developer_survey.seq_survey_response_id
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

ALTER SEQUENCE cleveland_developer_survey.seq_survey_response_id
  OWNED BY cleveland_developer_survey.survey_response.survey_response_id;

ALTER TABLE cleveland_developer_survey.survey_response
  ALTER COLUMN survey_response_id
  SET DEFAULT nextval('cleveland_developer_survey.seq_survey_response_id'::regclass);

--
-- Survey Question Table
CREATE TABLE cleveland_developer_survey.survey_question (
    survey_question_id BIGINT NOT NULL,
    survey_question_key VARCHAR(40) NOT NULL,
    survey_question TEXT NOT NULL
);

ALTER TABLE cleveland_developer_survey.survey_question
  ADD CONSTRAINT pkey_survey_question
  PRIMARY KEY (survey_question_id);

CREATE SEQUENCE cleveland_developer_survey.seq_survey_question_id
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

ALTER SEQUENCE cleveland_developer_survey.seq_survey_question_id
  OWNED BY cleveland_developer_survey.survey_question.survey_question_id;

ALTER TABLE cleveland_developer_survey.survey_question
  ALTER COLUMN survey_question_id
  SET DEFAULT nextval('cleveland_developer_survey.seq_survey_question_id'::regclass);

--
-- Browser Thumbprint Table
CREATE TABLE cleveland_developer_survey.browser_thumbprint (
    browser_thumbprint_id BIGINT NOT NULL,
    browser_thumbprint TEXT NOT NULL,
    external_ip TEXT NOT NULL,
    internal_ip TEXT NOT NULL
);

ALTER TABLE cleveland_developer_survey.browser_thumbprint
  ADD CONSTRAINT pkey_browser_thumbprint
  PRIMARY KEY (browser_thumbprint_id);

CREATE SEQUENCE cleveland_developer_survey.seq_browser_thumbprint_id
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

ALTER SEQUENCE cleveland_developer_survey.seq_browser_thumbprint_id
  OWNED BY cleveland_developer_survey.browser_thumbprint.browser_thumbprint_id;

ALTER TABLE cleveland_developer_survey.browser_thumbprint
  ALTER COLUMN browser_thumbprint_id
  SET DEFAULT nextval('cleveland_developer_survey.seq_browser_thumbprint_id'::regclass);

--
-- Mail List Table
CREATE TABLE cleveland_developer_survey.mail_list(
    mail_list_id BIGINT NOT NULL,
    email_address TEXT NOT NULL
);

ALTER TABLE cleveland_developer_survey.mail_list
  ADD CONSTRAINT pkey_mail_list
  PRIMARY KEY (mail_list_id);

CREATE SEQUENCE cleveland_developer_survey.seq_mail_list_id
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

ALTER SEQUENCE cleveland_developer_survey.seq_mail_list_id
  OWNED BY cleveland_developer_survey.mail_list.mail_list_id;

ALTER TABLE cleveland_developer_survey.mail_list
  ALTER COLUMN mail_list_id
  SET DEFAULT nextval('cleveland_developer_survey.seq_mail_list_id'::regclass);

--
-- Data
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('developerCurrentRoles', 'What roles do you do?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('developerHowLong', 'How long have you been doing them?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('languagePrimaryWorkLanguage', 'What is your primary language at work?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('languagePrimaryHomeLanguages', 'What languages do you use at home?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('languageWhyDoYouUseIt', 'Why do you use you primary language?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('languageWhenDidYouLearnIt', 'When did you learn you primary language?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('languageWhereDidYouLearnIt', 'Where did you learn you primary language?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('officeHoursPerWeek', 'How many hours do you work per week?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('officeLocation', 'Where is your office located?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('officeEmployeeCount', 'How large is your company?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('careerSalary', 'How much do you earn?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('careerDevelopmentJobCount', 'How many development jobs have you had?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('careerSatisfaction', 'How statified are you are you current job?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('careerWorkLifeBalance', 'How would you say the work/life balance is at your current job?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('personalWhyCleveland', 'Why do you stay in Cleveland?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('personalFavoriteSportsTeams', 'What are your favorite sports teams?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('personalFavoriteClevelandActivity', 'What is your favorite undiscovered activity?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('personalGender', 'What is your gender?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('personalEthnicity', 'What ethnicity are you?');
INSERT INTO cleveland_developer_survey.survey_question(survey_question_key, survey_question) VALUES ('personalHighestEducation', 'What is the highest level of education you have attained?');
