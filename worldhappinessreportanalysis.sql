select * from `worldhappinessreport2015-2019.HappinessReport.Happiness2015` order by `Happiness Rank` desc limit 50

select * from `worldhappinessreport2015-2019.HappinessReport.Happiness2016` order by `Happiness Rank` desc limit 5

select * from `worldhappinessreport2015-2019.HappinessReport.Happiness2017` order by `Happiness_Rank` desc limit 5

select * from `worldhappinessreport2015-2019.HappinessReport.Happiness2018` order by `Overall Rank` desc limit 5

select COUNT(Country),Region from 
(select * from `worldhappinessreport2015-2019.HappinessReport.Happiness2019` order by `Overall Rank` asc limit 50) as tb1  group by tb1.Region

select distinct Region from `worldhappinessreport2015-2019.HappinessReport.Happiness2015` 

select