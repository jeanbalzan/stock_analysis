CREATE TABLE public.stocks_intraday (
    "time" timestamp(0) NOT NULL,
    symbol varchar NULL,
    price_open float8 NULL,
    price_close float8 NULL,
    price_low float8 NULL,
    price_high float8 NULL,
    trading_volume int4 NULL,
);

/* Enable the TimscaleDB extension */
CREATE EXTENSION IF NOT EXISTS timescaledb;

/* 
Turn the 'stocks_intraday' table into a hypertable.
This is important to be able to make use of TimescaleDB features later on.
*/
SELECT create_hypertable('stocks_intraday', 'time');