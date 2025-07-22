-- 🔐 Users Table
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT now()
);

-- 📈 Assets (e.g., BTC, AAPL)
CREATE TABLE assets (
  id SERIAL PRIMARY KEY,
  symbol TEXT NOT NULL,
  name TEXT
);

-- 💬 Sentiment Scores (from Reddit, Twitter, News)
CREATE TABLE sentiment (
  id SERIAL PRIMARY KEY,
  asset_symbol TEXT,
  source TEXT, -- reddit, twitter, news
  score FLOAT,
  timestamp TIMESTAMP
);

-- ⚙️ Signals (User-defined rules)
CREATE TABLE signals (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  name TEXT,
  rule_json JSONB,
  created_at TIMESTAMP DEFAULT now()
);

-- 📊 Backtest Results
CREATE TABLE backtests (
  id SERIAL PRIMARY KEY,
  signal_id INTEGER REFERENCES signals(id),
  cagr FLOAT,
  sharpe FLOAT,
  max_drawdown FLOAT,
  win_rate FLOAT,
  start_date DATE,
  end_date DATE
);
