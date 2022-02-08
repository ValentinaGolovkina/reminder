drop table if exists users cascade;
drop table if exists events cascade;

CREATE TABLE users
(
    id         SERIAL               NOT NULL,
    chat_id    INTEGER UNIQUE       NOT NULL,
    name       VARCHAR              NOT NULL,
    active     BOOLEAN              NOT NULL
);

CREATE TABLE events
(
    id         SERIAL           NOT NULL,
    type       VARCHAR          NOT NULL,
    name       VARCHAR          NOT NULL,
    data       TIMESTAMP        NOT NULL,
    sending     BOOLEAN         NOT NULL
);