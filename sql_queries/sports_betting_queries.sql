# Setting up tables for importing data sets

CREATE TABLE states (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO states (state_id, state_name) VALUES 
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'Florida'),
(10, 'Georgia'),
(11, 'Hawaii'),
(12, 'Idaho'),
(13, 'Illinois'),
(14, 'Indiana'),
(15, 'Iowa'),
(16, 'Kansas'),
(17, 'Kentucky'),
(18, 'Louisiana'),
(19, 'Maine'),
(20, 'Maryland'),
(21, 'Massachusetts'),
(22, 'Michigan'),
(23, 'Minnesota'),
(24, 'Mississippi'),
(25, 'Missouri'),
(26, 'Montana'),
(27, 'Nebraska'),
(28, 'Nevada'),
(29, 'New Hampshire'),
(30, 'New Jersey'),
(31, 'New Mexico'),
(32, 'New York'),
(33, 'North Carolina'),
(34, 'North Dakota'),
(35, 'Ohio'),
(36, 'Oklahoma'),
(37, 'Oregon'),
(38, 'Pennsylvania'),
(39, 'Rhode Island'),
(40, 'South Carolina'),
(41, 'South Dakota'),
(42, 'Tennessee'),
(43, 'Texas'),
(44, 'Utah'),
(45, 'Vermont'),
(46, 'Virginia'),
(47, 'Washington'),
(48, 'West Virginia'),
(49, 'Wisconsin'),
(50, 'Wyoming'),
(51, 'Washington D.C.');

CREATE TABLE US_Sports_Betting_Per_State (
  market VARCHAR(50), 
  handle BIGINT, 
  revenue BIGINT, 
  hold FLOAT, 
  taxes BIGINT 
);

CREATE TABLE total_US_Sports_Betting_Per_Month (
  market VARCHAR(50),
  month DATE, 
  handle BIGINT, 
  revenue BIGINT, 
  hold FLOAT, 
  taxes BIGINT 
);

CREATE TABLE total_US_Sports_Betting_Per_State_Per_Month (
  market VARCHAR(50),
  month DATE, 
  handle BIGINT, 
  revenue BIGINT, 
  hold FLOAT, 
  taxes BIGINT 
);

CREATE TABLE connecticut_Sports_Betting_Per_State_Per_Month (
  market VARCHAR(50),
  licensee VARCHAR(50),
  fiscal_year DATE,
  month_ending DATE,
  wagers BIGINT,
  patron_winnings BIGINT,
  cancelled_wagers BIGINT,
  monthly_resettlements INT,
  online_sports_wagering_win_loss BIGINT,
  federal_excercise_tax BIGINT,
  unadjusted_monthly_gaming_revenue BIGINT,
  promotional_coupons_or_credits_wagered INT,
  promotional_deduction INT,
  total_gross_gaming_revenue INT,
  payment INT 
);

CREATE TABLE us_economic_data (
  date DATE,
  unrate_percentage INT,
  consumer_conf_index INT,
  ppi_const_mat INT,
  cpi_all_items INT,
  inflation_percentage INT,
  mortgage_ont_monthly_avg_percentage INT,
  med_household_income INT,
  corp_bond_yield INT,
  monthly_home_supply INT,
  percent_share_of_working_population INT,
  gdp_per_capita INT,
  quarterly_real_gdp INT,
  quarterly_gdp_growth_rate INT,
  csushpisa INT 
);

CREATE TABLE us_census_data (
  date DATE,
  state VARCHAR(50),
  county VARCHAR(50),
  area INT,
  prcp INT,
  snow INT,
  temp INT,
  num_police INT,
  male_population INT,
  female_population INT,
  avg_income INT,
  white_male FLOAT,
  white_female FLOAT,
  black_male FLOAT,
  black_female FLOAT, 
  asian_male FLOAT, 
  asian_female FLOAT, 
  hispanic_male FLOAT, 
  hispanic_female FLOAT, 
  age0_4 FLOAT, 
  age5_9 FLOAT, 
  age10_14 FLOAT, 
  age15_19 FLOAT, 
  age20_24 FLOAT, 
  age25_29 FLOAT, 
  age30_34 FLOAT, 
  age35_39 FLOAT, 
  age40_44 FLOAT, 
  age45_49 FLOAT,
  age50_54 FLOAT, 
  age55_59 FLOAT,  
  age60_64 FLOAT, 
  age65_69 FLOAT, 
  age70_74 FLOAT, 
  age75_79 FLOAT, 
  age80_84 FLOAT, 
  age85_plus FLOAT,
  party_gop INT,
  party_dem INT,
  party_total INT 
);

CREATE TABLE us_population_change_data (
  IBRC_Geo_ID INT,
  statefips INT,
  countyfips INT,
  locality VARCHAR(50),
  year INT,
  births INT,
  deaths INT,
  net_international_migration INT,
  net_domestic_migration INT,
  residual INT
);

CREATE TABLE us_income_per_county_data (
  location VARCHAR(50),
  linecode INT,
  unit VARCHAR(50),
  year INT,
  value BIGINT
);

CREATE TABLE states_abbreviation (
    state_name VARCHAR(50) NOT NULL,
    state_abbreviation VARCHAR(2) NOT NULL
);

INSERT INTO states_abbreviation (state_name, state_abbreviation) VALUES 
('Alabama', 'AL'),
('Alaska', 'AK'),
('Arizona', 'AZ'),
('Arkansas', 'AR'),
('California', 'CA'),
('Colorado', 'CO'),
('Connecticut', 'CT'),
('Delaware', 'DE'),
('Florida', 'FL'),
('Georgia', 'GA'),
('Hawaii', 'HI'),
('Idaho', 'ID'),
('Illinois', 'IL'),
('Indiana', 'IN'),
('Iowa', 'IA'),
('Kansas', 'KS'),
('Kentucky', 'KY'),
('Louisiana', 'LA'),
('Maine', 'ME'),
('Maryland', 'MD'),
('Massachusetts', 'MA'),
('Michigan', 'MI'),
('Minnesota', 'MN'),
('Mississippi', 'MS'),
('Missouri', 'MO'),
('Montana', 'MT'),
('Nebraska', 'NE'),
('Nevada', 'NV'),
('New Hampshire', 'NH'),
('New Jersey', 'NJ'),
('New Mexico', 'NM'),
('New York', 'NY'),
('North Carolina', 'NC'),
('North Dakota', 'ND'),
('Ohio', 'OH'),
('Oklahoma', 'OK'),
('Oregon', 'OR'),
('Pennsylvania', 'PA'),
('Rhode Island', 'RI'),
('South Carolina', 'SC'),
('South Dakota', 'SD'),
('Tennessee', 'TN'),
('Texas', 'TX'),
('Utah', 'UT'),
('Vermont', 'VT'),
('Virginia', 'VA'),
('Washington', 'WA'),
('West Virginia', 'WV'),
('Wisconsin', 'WI'),
('Wyoming', 'WY');

CREATE TABLE state_population (
    state_abbreviation CHAR(2) PRIMARY KEY,
    state_name VARCHAR(50) NOT NULL,
    population INT NOT NULL
);

INSERT INTO state_population (state_abbreviation, state_name, population) VALUES
('AL', 'Alabama', 5024279),
('AK', 'Alaska', 731545),
('AZ', 'Arizona', 7151502),
('AR', 'Arkansas', 3011524),
('CA', 'California', 39538223),
('CO', 'Colorado', 5773714),
('CT', 'Connecticut', 3605944),
('DE', 'Delaware', 989948),
('FL', 'Florida', 21538187),
('GA', 'Georgia', 10711908),
('HI', 'Hawaii', 1455271),
('ID', 'Idaho', 1839106),
('IL', 'Illinois', 12671821),
('IN', 'Indiana', 6785528),
('IA', 'Iowa', 3190369),
('KS', 'Kansas', 2913314),
('KY', 'Kentucky', 4505836),
('LA', 'Louisiana', 4657757),
('ME', 'Maine', 1362359),
('MD', 'Maryland', 6177224),
('MA', 'Massachusetts', 7029917),
('MI', 'Michigan', 10077331),
('MN', 'Minnesota', 5706494),
('MS', 'Mississippi', 2961279),
('MO', 'Missouri', 6154913),
('MT', 'Montana', 1084225),
('NE', 'Nebraska', 1961504),
('NV', 'Nevada', 3104614),
('NH', 'New Hampshire', 1377529),
('NJ', 'New Jersey', 9280994),
('NM', 'New Mexico', 2117522),
('NY', 'New York', 20201249),
('NC', 'North Carolina', 10439388),
('ND', 'North Dakota', 779094),
('OH', 'Ohio', 11799448),
('OK', 'Oklahoma', 3963516),
('OR', 'Oregon', 4237256),
('PA', 'Pennsylvania', 13002700),
('RI', 'Rhode Island', 1097379),
('SC', 'South Carolina', 5118425),
('SD', 'South Dakota', 886667),
('TN', 'Tennessee', 6910840),
('TX', 'Texas', 29145505),
('UT', 'Utah', 3271616),
('VT', 'Vermont', 643077),
('VA', 'Virginia', 8631393),
('WA', 'Washington', 7693612),
('WV', 'West Virginia', 1793716),
('WI', 'Wisconsin', 5893718),
('WY', 'Wyoming', 576851);

# Queries for cleaning/wrangling data
WITH cte AS (SELECT s.state_abbreviation, s.state_name, us.handle, us.revenue, us.taxes
FROM states_abbreviation AS s
LEFT JOIN us_sports_betting_per_state AS us ON  s.state_name = us.market),

cte_2 AS (SELECT state_abbreviation, state_name, COALESCE(handle, 0) AS handle, COALESCE(revenue, 0) AS revenue, 
COALESCE(taxes, 0) AS taxes
FROM cte)

SELECT state_abbreviation, state_name, CASE WHEN handle >= 1000000000 THEN CONCAT('$', ROUND(handle / 1000000000, 0), ' Billion')
        									WHEN handle >= 1000000 THEN CONCAT('$', ROUND(handle / 1000000, 0), ' Million')
        									ELSE CONCAT('$', handle)
        									END AS handle,
        								CASE WHEN revenue >= 1000000000 THEN CONCAT('$', ROUND(revenue / 1000000000, 0), ' Billion')
        									WHEN revenue >= 1000000 THEN CONCAT('$', ROUND(revenue / 1000000, 0), ' Million')
        									ELSE CONCAT('$', revenue)
        									END AS revenue,
        								CASE WHEN taxes >= 1000000000 THEN CONCAT('$', ROUND(taxes / 1000000000, 0), ' Billion')
        									WHEN taxes >= 1000000 THEN CONCAT('$', ROUND(taxes / 1000000, 0), ' Million')
        									ELSE CONCAT('$', taxes)
        									END AS taxes			
FROM cte_2;