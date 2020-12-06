DROP TABLE IF EXISTS question_tags;

DROP TABLE IF EXISTS question_follows;

DROP TABLE IF EXISTS question_likes;

DROP TABLE IF EXISTS replies;

DROP TABLE IF EXISTS questions;

DROP TABLE IF EXISTS tags;

DROP TABLE IF EXISTS users;

PRAGMA foreign_keys = ON;

-- Users
CREATE TABLE users(
  id INTEGER PRIMARY KEY,
  fname TEXT NOT NULL,
  lname TEXT NOT NULL
);

-- Questions
CREATE TABLE questions (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  author_id INTEGER NOT NULL,
  FOREIGN KEY (author_id) REFERENCES users(id)
);

-- Question follows
CREATE TABLE question_follows (
  id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL,
  question_id INTEGER NOT NULL,
  FOREIGN KEY(question_id) REFERENCES questions(id),
  FOREIGN KEY(user_id) REFERENCES users(id)
);

-- Replies
CREATE TABLE replies (
  id INTEGER PRIMARY KEY,
  question_id INTEGER NOT NULL,
  reply_id INTEGER,
  author_id INTEGER NOT NULL,
  body TEXT NOT NULL,
  FOREIGN KEY(question_id) REFERENCES questions(id),
  FOREIGN KEY(reply_id) REFERENCES replies(id),
  FOREIGN KEY(author_id) REFERENCES users(id)
);

-- Question likes
CREATE TABLE question_likes (
  user_id INTEGER PRIMARY KEY,
  question_id INTEGER NOT NULL
);

-- Users
INSERT INTO users(fname, lname)
VALUES ("Callie", "Cat"),
  ("Squeaky", "Kitten"),
  ("Linus", "Baby Kitten");

-- Questions
INSERT INTO questions(title, body, author_id)
SELECT "Callie's question",
  "This is Callie's question body",
  id
FROM users
WHERE fname = "Callie"
  AND lname = "Cat";

INSERT INTO questions(title, body, author_id)
SELECT "Squeaky question",
  "This is Squeaky's question body",
  id
FROM users
WHERE fname = "Squeaky"
  AND lname = "Kitten";

INSERT INTO questions(title, body, author_id)
SELECT "Linus question",
  "This is Linus' question",
  id
FROM users
WHERE fname = "Linus"
  AND lname = "Baby Kitten";

-- -- Question follows
INSERT INTO question_follows(user_id, question_id)
SELECT (
    SELECT id
    FROM users
    WHERE fname = "Squeaky"
      AND lname = "Kitten"
  ),
  (
    SELECT id
    FROM questions
    WHERE title = "Callie's question"
  );

INSERT INTO question_follows(user_id, question_id)
SELECT (
    SELECT id
    FROM users
    WHERE fname = "Callie"
      AND lname = "Cat"
  ),
  (
    SELECT id
    FROM questions
    WHERE title = "Squeaky question"
  );

INSERT INTO question_follows(user_id, question_id)
SELECT (
    SELECT id
    FROM users
    WHERE fname = "Linus"
      AND lname = "Baby Kitten"
  ),
  (
    SELECT id
    FROM questions
    WHERE title = "Squeaky question"
  );

INSERT INTO replies(question_id, reply_id, author_id, body)
SELECT (
    SELECT id
    FROM questions
    WHERE title = "Squeaky question"
  ),
  NULL,
  (
    SELECT id
    FROM users
    WHERE fname = "Callie"
      AND lname = "Cat"
  ),
  "Hi";

INSERT INTO replies(question_id, reply_id, author_id, body)
SELECT (
    SELECT id
    FROM questions
    WHERE title = "Squeaky question"
  ),
  (
    SELECT id
    FROM replies
    LIMIT 1
  ), (
    SELECT id
    FROM users
    WHERE fname = "Linus"
      AND lname = "Baby Kitten"
  ),
  "Oh hi";

-- WHERE -- VALUES (
--     (
--       SELECT id
--       FROM users
--       WHERE fname = "Callie"
--         AND lname = "Cat"
--     )
--     SELECT id
--     FROM questions
--     WHERE
--   );
-- -- Replies
-- INSERT INTO replies(id, question_id, reply_id, author_id, body)
-- SELECT questions.id
-- FROM
-- WHERE;
-- -- Question Likes