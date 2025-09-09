CREATE TABLE IF NOT EXISTS senzor_podaci (
    id SERIAL PRIMARY KEY,
    vreme TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    temperatura DECIMAL(5,2),
    vlaznost_vazduha DECIMAL(5,2),
    pm2_5 DECIMAL(8,3),
    pm10 DECIMAL(8,3)
);

INSERT INTO senzor_podaci (temperatura, vlaznost_vazduha, pm2_5, pm10) values (30.2, 44.16, 113.63,119.95);
INSERT INTO senzor_podaci (temperatura, vlaznost_vazduha, pm2_5, pm10) values (20.2, 54.16, 103.63,129.95);
INSERT INTO senzor_podaci (temperatura, vlaznost_vazduha, pm2_5, pm10) values (10.2, 64.16, 93.63,139.95);
INSERT INTO senzor_podaci (temperatura, vlaznost_vazduha, pm2_5, pm10) values (0.2, 74.16, 83.63,149.95);
INSERT INTO senzor_podaci (temperatura, vlaznost_vazduha, pm2_5, pm10) values (-10.2, 84.16, 73.63,159.95);
