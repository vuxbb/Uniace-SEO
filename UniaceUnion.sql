select Email, Type, Name, MA_URL, MA_Referrer, ma_path, IP_Address, Date,
       datepart(hour, try_convert(datetime2, date, 103)) as Hour, cast((try_convert(datetime2, date, 103)) as date) as Dates,
       try_convert(datetime2, date, 103) as Datetime,
       Template_ID, List_Id, Form_ID, Campaign_Id, Campaign_Name, Scenario_Id, URL, Link, Tag
from Uniace_1_Clean
union
select Email, Type, Name, [MA URL], [MA Referrer],ma_path, [IP Address], Date,
       datepart(hour, try_convert(datetime2, date, 103)) as Hour, cast((try_convert(datetime2, date, 103)) as date) as Dates,
       try_convert(datetime2, date, 103) as Datetime,
       [Template Id], [List Id], [Form Id], [Campaign Id], [Campaign Name], [Scenario Id], URL,Link, Tag
from Uniace_2
union
select Email, Type, Name, [MA URL], [MA Referrer],ma_path, [IP Address], Date,
       datepart(hour, try_convert(datetime2, date, 103)) as Hour, cast((try_convert(datetime2, date, 103)) as date) as Dates,
       try_convert(datetime2, date, 103) as Datetime,
       [Template Id], [List Id], [Form Id], [Campaign Id], [Campaign Name], [Scenario Id], URL,Link, Tag
from Uniace_3