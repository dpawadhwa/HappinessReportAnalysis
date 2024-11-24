/*updated column names to remove spaces and have consistency across 5 tables from 2015 to 2019*/
ALTER TABLE `worldhappinessreport2015-2019.HappinessReport.Happiness2019`
RENAME COLUMN `Perceptions of corruption` TO `GovermentCorruption`;

/* region column did not exist in 2019 , updated from 2016 table*/
update `worldhappinessreport2015-2019.HappinessReport.Happiness2019` as a set a.Region = b.Region from (select Country,Region from `worldhappinessreport2015-2019.HappinessReport.Happiness2016`) as b where a.Country = b.Country


/*finding the 50 countries with lowest happiness Rank */
select * from `worldhappinessreport2015-2019.HappinessReport.Happiness2019` order by `Happiness Rank` desc limit 50

/* finding the number of countries in each region from top 50 countries */
select COUNT(Country),Region from 
(select * from `worldhappinessreport2015-2019.HappinessReport.Happiness2019` order by `Overall Rank` asc limit 50) as tb1  group by tb1.Region

