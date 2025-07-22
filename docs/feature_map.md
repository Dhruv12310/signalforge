# 🚀 SignalForge – MVP Feature Map

> An AI-powered real-time signal analysis and backtesting platform for quantitative finance.

---

## ✅ 1. Core MVP Features

### 1.1 Asset Selection
- [ ] Dropdown to select symbols (e.g., BTC, ETH, AAPL)
- [ ] Search and autosuggest functionality
- [ ] Store metadata (symbol, name, sector)

### 1.2 Real-Time Market Data Charts
- [ ] Fetch OHLCV data from Alpha Vantage or yfinance
- [ ] Display candlestick & volume charts (Chart.js / ApexCharts)
- [ ] Allow 1D, 1W, 1M, 1Y views

### 1.3 Sentiment Scoring Engine
- [ ] Fetch Reddit + Twitter posts using APIs
- [ ] Use VADER for initial scoring
- [ ] FinBERT model for advanced NLP scoring
- [ ] Aggregate score by asset and timeframe

### 1.4 Rule-Based Signal Builder
- [ ] Simple builder: dropdowns + inputs to define rules
- [ ] Store rule logic as JSON
- [ ] Preview signal logic and affected assets

### 1.5 Backtesting Engine
- [ ] Apply signal to historical market data
- [ ] Calculate:
  - CAGR
  - Sharpe Ratio
  - Max Drawdown
  - Win Rate
- [ ] Output graph + performance stats

### 1.6 Strategy Scoring
- [ ] Score each user strategy on:
  - Risk-adjusted return
  - Consistency (volatility)
  - Average trade ROI
- [ ] Rank on user dashboard

### 1.7 Export as Python Bot
- [ ] One-click export to Python script
- [ ] Pre-configured for Alpaca, QuantConnect, or backtrader
- [ ] Include comments explaining logic

### 1.8 Auth + Save Strategies
- [ ] Firebase or Supabase auth
- [ ] Save signals, backtest results, and favorite assets
- [ ] CRUD UI for user dashboards

---

## 🌟 2. Stretch Goals

### 2.1 Signal Leaderboard
- [ ] Rank public strategies by Sharpe, ROI
- [ ] Allow upvoting / feedback

### 2.2 Smart LLM Builder
- [ ] “Build me a BTC hedge strategy using CPI + news sentiment”
- [ ] Use OpenAI or Claude for logic + explanation generation

### 2.3 Strategy Marketplace
- [ ] Public strategy gallery
- [ ] Optionally charge for export/download
- [ ] Stripe integration

---

## 🧠 3. Technical Subsystems

### 3.1 Data Sources
- Market: `yfinance`, `Alpha Vantage`, `Polygon.io`
- News: `NewsAPI`, `Finviz`, `Financial Times RSS`
- Social: `Reddit API`, `Tweepy`, `Pushshift`
- Macros: `FRED`, `OECD`, `IMF API`

### 3.2 Models & Algorithms
- VADER (sentiment)
- FinBERT (sentiment)
- Prophet / ARIMA / LSTM (forecasting)
- Regression (OLS, Ridge)
- Anomaly Detection (Z-score, Isolation Forest)

---

## 📦 4. Milestones

| Phase | Deliverable |
|-------|-------------|
| Day 1–2 | Project setup, GitHub, market price API |
| Day 3–4 | Sentiment scoring & UI dashboard |
| Day 5–6 | Rule builder + JSON logic engine |
| Day 7–8 | Backtest system + charts |
| Day 9–10 | Auth + user strategy save/load |
| Day 11–12 | Export + LLM integration |
| Day 13–14 | Polish, deploy, blog, push to LinkedIn |

---

## 📝 Notes
- All features must be testable with mock data first
- UI should be responsive for web + tablet
- Make each module self-contained and swappable (e.g., VADER → FinBERT)

