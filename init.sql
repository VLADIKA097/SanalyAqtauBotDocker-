
CREATE TABLE IF NOT EXISTS users (
    user_id BIGINT PRIMARY KEY,
    username TEXT,
    district TEXT
);

CREATE TABLE IF NOT EXISTS user_xp (
    user_id BIGINT PRIMARY KEY,
    xp INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS user_wallet (
    user_id BIGINT PRIMARY KEY,
    coins INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS trees (
    id SERIAL PRIMARY KEY,
    user_id BIGINT,
    photo TEXT,
    location TEXT,
    timestamp TIMESTAMP DEFAULT now()
);

CREATE TABLE IF NOT EXISTS alerts (
    id SERIAL PRIMARY KEY,
    user_id BIGINT,
    description TEXT,
    anonymous BOOLEAN,
    timestamp TIMESTAMP DEFAULT now()
);

CREATE TABLE IF NOT EXISTS reviews (
    id SERIAL PRIMARY KEY,
    user_id BIGINT,
    target TEXT,
    rating INT,
    text TEXT,
    photo TEXT,
    timestamp TIMESTAMP DEFAULT now()
);
