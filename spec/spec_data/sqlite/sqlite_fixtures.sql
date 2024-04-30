-- Some sample database to test few features.
CREATE TABLE questions (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  content text NOT NULL,
  encoded text,
  topic_id bigint,
  custom jsonb
);

CREATE TABLE topics (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  name varchar(50) NOT NULL
);

INSERT INTO topics(id, name) VALUES(1001, 'Science');
INSERT INTO topics(id, name) VALUES(1002, 'Politics');

INSERT INTO questions(id, content, encoded, topic_id) VALUES(
  2001, '(C) Why is Hydrogen less dense than Argon?', '1.2.3.4', 1001
);

INSERT INTO questions(id, content, encoded, topic_id) VALUES(
  2002, '(B) Why talking about politics during a dinner is a recipe for disaster?', '1.2.3.4', 1002
);

INSERT INTO questions(id, content, topic_id) VALUES(
  2003, '(A) Why the sky is blue?', 1001
);