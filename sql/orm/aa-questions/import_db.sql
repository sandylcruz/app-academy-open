DROP TABLE IF EXISTS question_tags;

DROP TABLE IF EXISTS question_follows;

DROP TABLE IF EXISTS question_likes;

DROP TABLE IF EXISTS replies;

DROP TABLE IF EXISTS questions;

DROP TABLE IF EXISTS tags;

DROP TABLE IF EXISTS users;

PRAGMA foreign_keys = ON;

CREATE TABLE users (
  id: INTEGER PRIMARY KEY,
  fname: TEXT NOT NULL,
  lname: TEXT NOT NULL
);

CREATE TABLE questions (
  id: INTEGER PRIMARY KEY,
  title: TEXT NOT NULL,
  body: TEXT NOT NULL,
  author_id: INTEGER NOT NULL,
  FOREIGN KEY (author_id) REFERENCES users(id)
);

CREATE TABLE question_follows (
  id: INTEGER PRIMARY KEY,
  user_id: INTEGER NOT NULL,
  question_id: INTEGER NOT NULL,
  FOREIGN KEY(question_id) REFERENCES questions(id),
  FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE replies (
  id:,
  question_id:,
  reply_id:,
  author_id:,
  body: TEXT NOT NULL,
  FOREIGN KEY(question_id) REFERENCES question(id),
  FOREIGN KEY(author_id) REFERENCES users(id)
);

CREATE TABLE question_likes (user_id:, question_id:)