CREATE SEQUENCE HIBERNATE_SEQUENCE START WITH 1 INCREMENT BY 1;

CREATE TABLE IF NOT EXISTS CHAIRMEN (
  ID BIGINT NOT NULL IDENTITY,
);

CREATE TABLE IF NOT EXISTS ACCOUNTS (
  ID            BIGINT                 NOT NULL IDENTITY,
  VERSION       BIGINT                 NOT NULL,
  USER_NAME     VARCHAR_IGNORECASE(50) NOT NULL,
  CHAIRMAN_ID   BIGINT,

  FIRST_NAME    VARCHAR                NOT NULL,
  LAST_NAME     VARCHAR                NOT NULL,
  SEX           INTEGER                NOT NULL,
  BIRTHDAY      TIMESTAMP              NOT NULL,
  BIRTHPLACE    VARCHAR                NOT NULL,

  EMAIL         VARCHAR                NOT NULL,
  PHONE         VARCHAR                NOT NULL,
  LOCALE        VARCHAR                NOT NULL,
  ZIP           VARCHAR                NOT NULL,
  CITY          VARCHAR                NOT NULL,
  STREET        VARCHAR                NOT NULL,

  CONSTRAINT FK_ACCOUNTS_CHAIRMEN FOREIGN KEY (CHAIRMAN_ID) REFERENCES CHAIRMEN
);
