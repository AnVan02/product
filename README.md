CREATE TABLE article (
    article_id VARCHAR(255) PRIMARY KEY,
    article_author VARCHAR(255),
    article_title TEXT,
    article_summary TEXT,
    article_content TEXT,
    article_image VARCHAR(255),
    article_date DATE,
    article_tag TEXT,
    article_status VARCHAR(50),
    article_video TEXT
);