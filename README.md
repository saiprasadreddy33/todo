# TODO CLI App (Ruby on Rails)

A terminal-based TODO management app built with a **Ruby on Rails API** backend and a **Thor-powered Ruby CLI** frontend. Easily manage tasks right from your terminal!

---

## What is this?

This is a **command-line-based TODO application** where:

- The **backend** is a Ruby on Rails API that handles CRUD operations for TODOs.
- The **frontend** is a simple CLI (Command Line Interface) built using Ruby's `Thor` gem, which interacts with the API using `httparty`.

---

## ️ How is it built?

This app consists of two parts:

├── api/ # Ruby on Rails API backend
|─ cli/ # Command-line Ruby Thor-based frontend

- **API**:
  - Built with Rails 7 in API mode
  - Uses SQLite3 (default Rails dev DB)
  - RESTful routing (`/todos`)
  - JSON response format
- **CLI**:
  - Ruby-based using [Thor](https://github.com/rails/thor) for CLI commands
  - Makes HTTP calls to the Rails API via [HTTParty](https://github.com/jnunemaker/httparty)

---

## How to run (step-by-step)

### 1. Clone the project

```
cd todo
```

### 2. Setup

```
cd api
bundle install
```

- If config/database.yml is missing, create it manually or copy from a template if available:

```
cp config/database.yml.example config/database.yml # (if available)
```

Then run :

    rails db:create db:migrate

    rails s

### 2. Set up and run the CLI

```
cd cli
bundle i
```

then run :

`todo list`

## Gems Used

### API

- `rails`
- `sqlite3`
- `puma`
- `bootsnap`

### CLI

- `thor`
- `httparty`
