



CREATE view [koto].[view_007_070_koto_kansal_tyokay_unpivot]
(
 [Vuosi],
 [Alue], 
 [Ammattiryhmä], 
 [Kansalaisuus],
 [Lkm]
)
as

WITH X AS (
SELECT '2010' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2010] union all
SELECT '2011' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2011] union all
SELECT '2012' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2012] union all
SELECT '2013' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2013] union all
SELECT '2014' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2014] union all
SELECT '2015' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2015] union all
SELECT '2016' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2016] union all
SELECT '2017' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2017] union all
SELECT '2018' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2018] union all
SELECT '2019' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2019] union all
SELECT '2020' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2020] union all
SELECT '2021' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2021] union all
SELECT '2022' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2022] union all
SELECT '2023' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2023] union all
SELECT '2024' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2024] union all
SELECT '2025' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2025] union all
SELECT '2026' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2026] union all
SELECT '2027' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2027] union all
SELECT '2028' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2028] union all
SELECT '2029' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2029] union all
SELECT '2030' as 'vuosi_', *  FROM [koto].[koto_007_070_koto_kansal_tyokay_2030]
)
select vuosi_, alue, Ammattiryhmä, 'Suomi' as 'Kansalaisuus', [Suomi 2010]			from X union all
select vuosi_, alue, Ammattiryhmä, 'EUROOPPA', [EUROOPPA 2010]	from X union all
select vuosi_, alue, Ammattiryhmä, 'AFRIKKA', [AFRIKKA 2010]		from X union all
select vuosi_, alue, Ammattiryhmä, 'AMERIKKA', [AMERIKKA 2010]	from X union all
select vuosi_, alue, Ammattiryhmä, 'AASIA', [AASIA 2010]			from X union all
select vuosi_, alue, Ammattiryhmä, 'MUU TAI TUNTEMATON', [MUU TAI TUNTEMATON 2010] from X
GO

ALTER AUTHORIZATION ON [koto].[view_007_070_koto_kansal_tyokay_unpivot] TO  SCHEMA OWNER 
GO




CREATE view [koto].[view_011_110_koto_kansal_tyokay_unpivot]
(
 [Vuosi],
 [Alue], 
 [Toimiala], 
 [Ikä], 
 [Kansalaisuus],
 [Lkm]
)
as
WITH X as (
SELECT '2010' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2010] union all
SELECT '2011' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2011] union all
SELECT '2012' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2012] union all
SELECT '2013' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2013] union all
SELECT '2014' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2014] union all
SELECT '2015' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2015] union all
SELECT '2016' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2016] union all
SELECT '2017' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2017] union all
SELECT '2018' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2018] union all
SELECT '2019' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2019] union all
SELECT '2020' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2020] union all
SELECT '2021' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2021] union all
SELECT '2022' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2022] union all
SELECT '2023' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2023] union all
SELECT '2024' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2024] union all
SELECT '2025' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2025] union all
SELECT '2026' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2026] union all
SELECT '2027' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2027] union all
SELECT '2028' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2028] union all
SELECT '2029' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2029] union all
SELECT '2030' as 'vuosi_', *  FROM [koto].[koto_011_110_koto_kansal_tyokay_2030] 
)
select vuosi_, alue, Toimiala, [Ikä], 'Suomi' as 'Kansalaisuus', [Suomi 2010]			from X union all
select vuosi_, alue, Toimiala, [Ikä], 'EUROOPPA', [EUROOPPA 2010]	from X union all
select vuosi_, alue, Toimiala, [Ikä], 'AFRIKKA', [AFRIKKA 2010]		from X union all
select vuosi_, alue, Toimiala, [Ikä], 'AMERIKKA', [AMERIKKA 2010]	from X union all
select vuosi_, alue, Toimiala, [Ikä], 'AASIA', [AASIA 2010]			from X union all
select vuosi_, alue, Toimiala, [Ikä], 'MUU TAI TUNTEMATON', [MUU TAI TUNTEMATON 2010] from X
GO

ALTER AUTHORIZATION ON [koto].[view_011_110_koto_kansal_tyokay_unpivot] TO  SCHEMA OWNER 
GO







CREATE view [koto].[view_11kg_001_koto_kieli_vaesto_unpivot]
(
 [Vuosi],
 [Alue], 
 [Äidinkieli], 
 [Sukupuoli],
 [Ikä],
 [Lkm]
 )
as

WITH X as (
SELECT '2010' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2010] union all
SELECT '2011' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2011] union all
SELECT '2012' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2012] union all
SELECT '2013' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2013] union all
SELECT '2014' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2014] union all
SELECT '2015' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2015] union all
SELECT '2016' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2016] union all
SELECT '2017' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2017] union all
SELECT '2018' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2018] union all
SELECT '2019' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2019] union all
SELECT '2020' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2020] union all
SELECT '2021' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2021] union all
SELECT '2022' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2022] union all
SELECT '2023' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2023] union all
SELECT '2024' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2024] union all
SELECT '2025' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2025] union all
SELECT '2026' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2026] union all
SELECT '2027' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2027] union all
SELECT '2028' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2028] union all
SELECT '2029' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2029] union all
SELECT '2030' as 'vuosi_', *  FROM [koto].[koto_11kg_001_koto_kieli_vaesto_2030]
),
 X2 as (
SELECT [Vuosi_], [Alue], [Äidinkieli], 'Miehet' as 'Sukupuoli', 
	[0 - 4 Miehet 2010 Henkilöiden lukumäärä]  , [5 - 9 Miehet 2010 Henkilöiden lukumäärä],   [10 - 14 Miehet 2010 Henkilöiden lukumäärä], [15 - 19 Miehet 2010 Henkilöiden lukumäärä], 
	[20 - 24 Miehet 2010 Henkilöiden lukumäärä], [25 - 29 Miehet 2010 Henkilöiden lukumäärä], [30 - 34 Miehet 2010 Henkilöiden lukumäärä], [35 - 39 Miehet 2010 Henkilöiden lukumäärä], 
	[40 - 44 Miehet 2010 Henkilöiden lukumäärä], [45 - 49 Miehet 2010 Henkilöiden lukumäärä], [50 - 54 Miehet 2010 Henkilöiden lukumäärä], [55 - 59 Miehet 2010 Henkilöiden lukumäärä],
	[60 - 64 Miehet 2010 Henkilöiden lukumäärä], [65 - 69 Miehet 2010 Henkilöiden lukumäärä], [70 - 74 Miehet 2010 Henkilöiden lukumäärä], [75 - Miehet 2010 Henkilöiden lukumäärä] FROM X
union all
SELECT [Vuosi_], [Alue], [Äidinkieli], 'Naiset' as 'Sukupuoli',
	[0 - 4 Naiset 2010 Henkilöiden lukumäärä]  , [5 - 9 Naiset 2010 Henkilöiden lukumäärä],   [10 - 14 Naiset 2010 Henkilöiden lukumäärä], [15 - 19 Naiset 2010 Henkilöiden lukumäärä], 
	[20 - 24 Naiset 2010 Henkilöiden lukumäärä], [25 - 29 Naiset 2010 Henkilöiden lukumäärä], [30 - 34 Naiset 2010 Henkilöiden lukumäärä], [35 - 39 Naiset 2010 Henkilöiden lukumäärä], 
	[40 - 44 Naiset 2010 Henkilöiden lukumäärä], [45 - 49 Naiset 2010 Henkilöiden lukumäärä], [50 - 54 Naiset 2010 Henkilöiden lukumäärä], [55 - 59 Naiset 2010 Henkilöiden lukumäärä],
	[60 - 64 Naiset 2010 Henkilöiden lukumäärä], [65 - 69 Naiset 2010 Henkilöiden lukumäärä], [70 - 74 Naiset 2010 Henkilöiden lukumäärä], [75 - Naiset 2010 Henkilöiden lukumäärä] FROM X
)
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '0 - 4' as 'Ikä', [0 - 4 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '5 - 9' as 'Ikä', [5 - 9 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '10 - 14' as 'Ikä', [10 - 14 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '15 - 19' as 'Ikä', [15 - 19 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '20 - 24' as 'Ikä', [20 - 24 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '25 - 29' as 'Ikä', [25 - 29 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '30 - 34' as 'Ikä', [30 - 34 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '35 - 39' as 'Ikä', [35 - 39 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '40 - 44' as 'Ikä', [40 - 44 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '45 - 49' as 'Ikä', [45 - 49 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '50 - 54' as 'Ikä', [50 - 54 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '55 - 59' as 'Ikä', [55 - 59 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '60 - 64' as 'Ikä', [60 - 64 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '65 - 69' as 'Ikä', [65 - 69 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '70 - 74' as 'Ikä', [70 - 74 Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 union all
SELECT [Vuosi_], [Alue], [Äidinkieli], [Sukupuoli], '75 - ' as 'Ikä', [75 - Miehet 2010 Henkilöiden lukumäärä] as [Lkm] FROM X2 
GO

ALTER AUTHORIZATION ON [koto].[view_11kg_001_koto_kieli_vaesto_unpivot] TO  SCHEMA OWNER 
GO




CREATE view [koto].[view_11ls_003_koto_kansal_tyokay_unpivot]
(
 [Vuosi],
 [Alue], 
 [Pääasiallinen toiminta (Työmarkkina-asema)], 
 [Ikä], 
 [Sukupuoli],
 [Kansalaisuus],
 [Lkm]
)
as
WITH X as (
SELECT '2010' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2010] union all
SELECT '2011' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2011] union all
SELECT '2012' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2012] union all
SELECT '2013' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2013] union all
SELECT '2014' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2014] union all
SELECT '2015' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2015] union all
SELECT '2016' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2016] union all
SELECT '2017' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2017] union all
SELECT '2018' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2018] union all
SELECT '2019' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2019] union all
SELECT '2020' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2020] union all
SELECT '2021' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2021] union all
SELECT '2022' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2022] union all
SELECT '2023' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2023] union all
SELECT '2024' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2024] union all
SELECT '2025' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2025] union all
SELECT '2026' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2026] union all
SELECT '2027' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2027] union all
SELECT '2028' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2028] union all
SELECT '2029' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2029] union all
SELECT '2030' as 'vuosi_', *  FROM [koto].[koto_11ls_003_koto_kansal_tyokay_2030] 
)

select [Vuosi_], [Alue], [Pääasiallinen toiminta (Työmarkkina-asema)], [Ikä], 'Miehet' as  'Sukupuoli', 'Suomi' as 'Kansalaisuus',	[Suomi Miehet 2010 Henkilöiden lukumäärä] as 'Lkm'			from X union all
select [Vuosi_], [Alue], [Pääasiallinen toiminta (Työmarkkina-asema)], [Ikä], 'Miehet' ,				'EUROOPPA' ,				[EUROOPPA Miehet 2010 Henkilöiden lukumäärä]				from X union all
select [Vuosi_], [Alue], [Pääasiallinen toiminta (Työmarkkina-asema)], [Ikä], 'Miehet' ,				'AFRIKKA' ,					[AFRIKKA Miehet 2010 Henkilöiden lukumäärä]					from X union all
select [Vuosi_], [Alue], [Pääasiallinen toiminta (Työmarkkina-asema)], [Ikä], 'Miehet' ,				'AMERIKKA' ,				[AMERIKKA Miehet 2010 Henkilöiden lukumäärä]				from X union all
select [Vuosi_], [Alue], [Pääasiallinen toiminta (Työmarkkina-asema)], [Ikä], 'Miehet' ,				'AASIA' ,					[AASIA Miehet 2010 Henkilöiden lukumäärä]					from X union all
select [Vuosi_], [Alue], [Pääasiallinen toiminta (Työmarkkina-asema)], [Ikä], 'Miehet' ,				'MUU TAI TUNTEMATON' ,		[MUU TAI TUNTEMATON Miehet 2010 Henkilöiden lukumäärä]		from X union all
																																																
select [Vuosi_], [Alue], [Pääasiallinen toiminta (Työmarkkina-asema)], [Ikä], 'Naiset',					'Suomi'		,				[Suomi Naiset 2010 Henkilöiden lukumäärä]        			from X union all
select [Vuosi_], [Alue], [Pääasiallinen toiminta (Työmarkkina-asema)], [Ikä], 'Naiset',					'EUROOPPA' ,				[EUROOPPA Naiset 2010 Henkilöiden lukumäärä]				from X union all
select [Vuosi_], [Alue], [Pääasiallinen toiminta (Työmarkkina-asema)], [Ikä], 'Naiset',					'AFRIKKA' ,					[AFRIKKA Naiset 2010 Henkilöiden lukumäärä]					from X union all
select [Vuosi_], [Alue], [Pääasiallinen toiminta (Työmarkkina-asema)], [Ikä], 'Naiset',					'AMERIKKA' ,				[AMERIKKA Naiset 2010 Henkilöiden lukumäärä]				from X union all
select [Vuosi_], [Alue], [Pääasiallinen toiminta (Työmarkkina-asema)], [Ikä], 'Naiset',					'AASIA' ,					[AASIA Naiset 2010 Henkilöiden lukumäärä]					from X union all
select [Vuosi_], [Alue], [Pääasiallinen toiminta (Työmarkkina-asema)], [Ikä], 'Naiset',					'MUU TAI TUNTEMATON' ,		[MUU TAI TUNTEMATON Naiset 2010 Henkilöiden lukumäärä]		from X 
GO

ALTER AUTHORIZATION ON [koto].[view_11ls_003_koto_kansal_tyokay_unpivot] TO  SCHEMA OWNER 
GO




CREATE view [koto].[view_11lt_004_koto_kansal_tyokay_unpivot]
(
 [Vuosi],
 [Alue], 
 [Ammattiasema], 
 [Ikä],
 [Kansalaisuus],
 [Sukupuoli],
 [Lkm]
)
as

WITH X AS (
SELECT '2010' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2010] union all
SELECT '2011' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2011] union all
SELECT '2012' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2012] union all
SELECT '2013' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2013] union all
SELECT '2014' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2014] union all
SELECT '2015' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2015] union all
SELECT '2016' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2016] union all
SELECT '2017' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2017] union all
SELECT '2018' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2018] union all
SELECT '2019' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2019] union all
SELECT '2020' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2020] union all
SELECT '2021' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2021] union all
SELECT '2022' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2022] union all
SELECT '2023' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2023] union all
SELECT '2024' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2024] union all
SELECT '2025' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2025] union all
SELECT '2026' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2026] union all
SELECT '2027' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2027] union all
SELECT '2028' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2028] union all
SELECT '2029' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2029] union all
SELECT '2030' as 'vuosi_', *  FROM [koto].[koto_11lt_004_koto_kansal_tyokay_2030] 
)
select vuosi_, [Alue], [Ammattiasema], [Ikä], [Kansalaisuus], 'Miehet' as 'Sukupuoli', [Miehet 2010 Henkilöiden lukumäärä] as 'Lkm' from X union all
select vuosi_, [Alue], [Ammattiasema], [Ikä], [Kansalaisuus], 'Naiset' as 'Sukupuoli', [Naiset 2010 Henkilöiden lukumäärä] as 'Lkm' from X 
GO

ALTER AUTHORIZATION ON [koto].[view_11lt_004_koto_kansal_tyokay_unpivot] TO  SCHEMA OWNER 
GO






CREATE view [koto].[view_11lu_006_koto_kansal_tyokay_unpivot]
(
 [Vuosi]
,[Alue]
,[Pääasiallinen toiminta (Työmarkkina-asema)]
,[Ikä]
,[Kansalaisuus]
,[Koulutusaste]
,[Lkm]
)
as
WITH X AS (
SELECT '2010' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2010] union all
SELECT '2011' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2011] union all
SELECT '2012' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2012] union all
SELECT '2013' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2013] union all
SELECT '2014' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2014] union all
SELECT '2015' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2015] union all
SELECT '2016' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2016] union all
SELECT '2017' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2017] union all
SELECT '2018' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2018] union all
SELECT '2019' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2019] union all
SELECT '2020' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2020] union all
SELECT '2021' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2021] union all
SELECT '2022' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2022] union all
SELECT '2023' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2023] union all
SELECT '2024' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2024] union all
SELECT '2025' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2025] union all
SELECT '2026' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2026] union all
SELECT '2027' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2027] union all
SELECT '2028' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2028] union all
SELECT '2029' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2029] union all
SELECT '2030' as 'vuosi_', *  FROM [koto].[koto_11lu_006_koto_kansal_tyokay_2030] 
)
SELECT [Vuosi_],[Alue],[Pääasiallinen toiminta (Työmarkkina-asema)],[Ikä],[Kansalaisuus], 'Toinen aste tai erikoisammattikoulutusaste 3, 4' as Koulutusaste, [Toinen aste tai erikoisammattikoulutusaste 3, 4 2010 Henkilöiden lukumäärä] as Lkm FROM X union all
SELECT [Vuosi_],[Alue],[Pääasiallinen toiminta (Työmarkkina-asema)],[Ikä],[Kansalaisuus], 'Alin korkea-aste tai alempi korkeakouluaste 5, 6' as Koulutusaste, [Alin korkea-aste tai alempi korkeakouluaste 5, 6 2010 Henkilöiden lukumäärä] as Lkm FROM X union all
SELECT [Vuosi_],[Alue],[Pääasiallinen toiminta (Työmarkkina-asema)],[Ikä],[Kansalaisuus], 'Ylempi korkeakouluaste tai tutkijakoulutusaste 7, 8' as Koulutusaste, [Ylempi korkeakouluaste tai tutkijakoulutusaste 7, 8 2010 Henkilöiden lukumäärä] as Lkm FROM X union all
SELECT [Vuosi_],[Alue],[Pääasiallinen toiminta (Työmarkkina-asema)],[Ikä],[Kansalaisuus], 'Ei perusasteen jälkeistä tutkintoa tai koulutusaste tuntematon' as Koulutusaste, [Ei perusasteen jälkeistä tutkintoa tai koulutusaste tuntematon 2010 Henkilöiden lukumäärä] as Lkm FROM X 
GO

ALTER AUTHORIZATION ON [koto].[view_11lu_006_koto_kansal_tyokay_unpivot] TO  SCHEMA OWNER 
GO








CREATE view [koto].[view_11yt_004_koto_kansal_muutto_unpivot]
(
 [Vuosi],
 [Kansalaisuus], 
 [Maakunta], 
 [Sukupuoli],
 [Muuttomaanosa],
 [Tiedot],
 [Lkm]
)
as
WITH X AS (
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2010] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2011] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2012] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2013] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2014] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2015] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2016] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2017] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2018] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2019] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2020] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2021] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2022] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2023] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2024] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2025] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2026] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2027] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2028] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2029] union all
SELECT *  FROM [koto].[koto_11yt_004_koto_kansal_muutto_2030] 
)

SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Eurooppa' as Muuttomaanosa, 'Maahanmuutto' as Tiedot				,[Eurooppa Miehet Maahanmuutto]	as Lkm		FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Eurooppa' as Muuttomaanosa, 'Maastamuutto' as Tiedot				,[Eurooppa Miehet Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Eurooppa' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Eurooppa Miehet Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Afrikka' as Muuttomaanosa, 'Maahanmuutto' as Tiedot				,[Afrikka Miehet Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Afrikka' as Muuttomaanosa, 'Maastamuutto' as Tiedot				,[Afrikka Miehet Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Afrikka' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Afrikka Miehet Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Amerikka' as Muuttomaanosa, 'Maahanmuutto' as Tiedot				,[Amerikka Miehet Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Amerikka' as Muuttomaanosa, 'Maastamuutto' as Tiedot				,[Amerikka Miehet Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Amerikka' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Amerikka Miehet Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Aasia' as Muuttomaanosa, 'Maahanmuutto' as Tiedot					,[Aasia Miehet Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Aasia' as Muuttomaanosa, 'Maastamuutto' as Tiedot					,[Aasia Miehet Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Aasia' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot				,[Aasia Miehet Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Suomi' as Muuttomaanosa, 'Maahanmuutto' as Tiedot					,[Suomi Miehet Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Suomi' as Muuttomaanosa, 'Maastamuutto' as Tiedot					,[Suomi Miehet Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Suomi' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot				,[Suomi Miehet Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Muu tai tuntematon' as Muuttomaanosa, 'Maahanmuutto' as Tiedot	,	 	 [Muu tai tuntematon Miehet Maahanmuutto]	FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Muu tai tuntematon' as Muuttomaanosa, 'Maastamuutto' as Tiedot	,		 [Muu tai tuntematon Miehet Maastamuutto]	FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Miehet' as Sukupuoli, 'Muu tai tuntematon' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot	,[Muu tai tuntematon Miehet Nettomaahanmuutto]	FROM X union all
				  
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Eurooppa' as Muuttomaanosa, 'Maahanmuutto' as Tiedot				,[Eurooppa Naiset Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Eurooppa' as Muuttomaanosa, 'Maastamuutto' as Tiedot				,[Eurooppa Naiset Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Eurooppa' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Eurooppa Naiset Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Afrikka' as Muuttomaanosa, 'Maahanmuutto' as Tiedot				,[Afrikka Naiset Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Afrikka' as Muuttomaanosa, 'Maastamuutto' as Tiedot				,[Afrikka Naiset Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Afrikka' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Afrikka Naiset Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Amerikka' as Muuttomaanosa, 'Maahanmuutto' as Tiedot				,[Amerikka Naiset Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Amerikka' as Muuttomaanosa, 'Maastamuutto' as Tiedot				,[Amerikka Naiset Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Amerikka' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Amerikka Naiset Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Aasia' as Muuttomaanosa, 'Maahanmuutto' as Tiedot					,[Aasia Naiset Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Aasia' as Muuttomaanosa, 'Maastamuutto' as Tiedot					,[Aasia Naiset Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Aasia' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot				,[Aasia Naiset Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Suomi' as Muuttomaanosa, 'Maahanmuutto' as Tiedot					,[Suomi Naiset Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Suomi' as Muuttomaanosa, 'Maastamuutto' as Tiedot					,[Suomi Naiset Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Suomi' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot				,[Suomi Naiset Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Muu tai tuntematon' as Muuttomaanosa, 'Maahanmuutto' as Tiedot	,	 [Muu tai tuntematon Naiset Maahanmuutto]	FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Muu tai tuntematon' as Muuttomaanosa, 'Maastamuutto' as Tiedot	,	 [Muu tai tuntematon Naiset Maastamuutto]	FROM X union all
SELECT  [Vuosi], [Kansalaisuus], [Maakunta], 'Naiset' as Sukupuoli, 'Muu tai tuntematon' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot,[Muu tai tuntematon Naiset Nettomaahanmuutto]	FROM X


GO

ALTER AUTHORIZATION ON [koto].[view_11yt_004_koto_kansal_muutto_unpivot] TO  SCHEMA OWNER 
GO






CREATE view [koto].[view_125d_004_koto_svaltio_muutto_unpivot]
(
 [Vuosi],
 [Syntymävaltio], 
 [Alue], 
 [Muuttomaanosa], 
 [Sukupuoli], 
 [Tiedot],
 [Lkm]
)
as

WITH X AS (
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2010] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2011] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2012] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2013] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2014] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2015] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2016] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2017] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2018] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2019] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2020] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2021] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2022] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2023] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2024] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2025] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2026] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2027] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2028] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2029] union all
SELECT *  FROM [koto].[koto_125d_004_koto_svaltio_muutto_2030] 
)
SELECT [Vuosi], [Syntymävaltio], [Alue], [Muuttomaanosa], [Sukupuoli], 'Maahanmuutto' as Tiedot, [Maahanmuutto] as Lkm FROM X UNION ALL 
SELECT [Vuosi], [Syntymävaltio], [Alue], [Muuttomaanosa], [Sukupuoli], 'Maastamuutto' , [Maastamuutto] FROM X UNION ALL
SELECT [Vuosi], [Syntymävaltio], [Alue], [Muuttomaanosa], [Sukupuoli], 'Nettomaahanmuutto' , [Nettomaahanmuutto]  FROM X
GO

ALTER AUTHORIZATION ON [koto].[view_125d_004_koto_svaltio_muutto_unpivot] TO  SCHEMA OWNER 
GO






CREATE view [koto].[view_125e_004_koto_kieli_muutto_unpivot]
(
 [Vuosi],
 [Äidinkieli], 
 [Alue], 
 [Muuttomaanosa], 
 [Sukupuoli], 
 [Tiedot], 
 [Lkm]
)
as

WITH X AS (
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2010] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2011] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2012] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2013] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2014] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2015] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2016] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2017] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2018] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2019] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2020] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2021] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2022] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2023] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2024] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2025] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2026] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2027] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2028] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2029] union all
SELECT *  FROM [koto].[koto_125e_004_koto_kieli_muutto_2030] 
)
SELECT  [Vuosi], [Äidinkieli],  [Alue],  [Muuttomaanosa],  [Sukupuoli], 'Maahanmuutto' as Tiedot,  [Maahanmuutto] as Lkm FROM X UNION ALL
SELECT  [Vuosi], [Äidinkieli],  [Alue],  [Muuttomaanosa],  [Sukupuoli], 'Nettomaahanmuutto' ,  [Nettomaahanmuutto]  FROM X UNION ALL
SELECT  [Vuosi], [Äidinkieli],  [Alue],  [Muuttomaanosa],  [Sukupuoli], 'Maastamuutto',  [Maastamuutto] FROM X
GO

ALTER AUTHORIZATION ON [koto].[view_125e_004_koto_kieli_muutto_unpivot] TO  SCHEMA OWNER 
GO

/*
	Koto tulostaulujen unpivot-näkymien luontilauseet
	schema koko
*/

--create schema koto
--go


CREATE view [koto].[view_125i_004_koto_syntypera_muutto_unpivot]
(
 [Vuosi],
 [Syntyperä], 
 [Alue], 
 [Sukupuoli],
 [Muuttomaanosa],
 [Tiedot],
 [Lkm]
)
as

WITH X AS (
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2010] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2011] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2012] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2013] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2014] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2015] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2016] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2017] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2018] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2019] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2020] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2021] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2022] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2023] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2024] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2025] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2026] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2027] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2028] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2029] union all
SELECT *  FROM [koto].[koto_125i_004_koto_syntypera_muutto_2030]
)

SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Eurooppa' as Muuttomaanosa, 'Maahanmuutto' as Tiedot				,[Eurooppa Miehet Maahanmuutto]	as Lkm		FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Eurooppa' as Muuttomaanosa, 'Maastamuutto' as Tiedot				,[Eurooppa Miehet Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Eurooppa' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Eurooppa Miehet Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Afrikka' as Muuttomaanosa, 'Maahanmuutto' as Tiedot				,[Afrikka Miehet Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Afrikka' as Muuttomaanosa, 'Maastamuutto' as Tiedot				,[Afrikka Miehet Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Afrikka' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Afrikka Miehet Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Amerikka' as Muuttomaanosa, 'Maahanmuutto' as Tiedot				,[Amerikka Miehet Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Amerikka' as Muuttomaanosa, 'Maastamuutto' as Tiedot				,[Amerikka Miehet Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Amerikka' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Amerikka Miehet Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Aasia' as Muuttomaanosa, 'Maahanmuutto' as Tiedot					,[Aasia Miehet Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Aasia' as Muuttomaanosa, 'Maastamuutto' as Tiedot					,[Aasia Miehet Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Aasia' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Aasia Miehet Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Suomi' as Muuttomaanosa, 'Maahanmuutto' as Tiedot					,[Suomi Miehet Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Suomi' as Muuttomaanosa, 'Maastamuutto' as Tiedot					,[Suomi Miehet Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Suomi' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Suomi Miehet Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Muu tai tuntematon' as Muuttomaanosa, 'Maahanmuutto' as Tiedot		,[Muu tai tuntematon Miehet Maahanmuutto]	FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Muu tai tuntematon' as Muuttomaanosa, 'Maastamuutto' as Tiedot		,[Muu tai tuntematon Miehet Maastamuutto]	FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Miehet' as Sukupuoli, 'Muu tai tuntematon' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot	,[Muu tai tuntematon Miehet Nettomaahanmuutto]	FROM X union all

SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Eurooppa' as Muuttomaanosa, 'Maahanmuutto' as Tiedot				,[Eurooppa Naiset Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Eurooppa' as Muuttomaanosa, 'Maastamuutto' as Tiedot				,[Eurooppa Naiset Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Eurooppa' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Eurooppa Naiset Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Afrikka' as Muuttomaanosa, 'Maahanmuutto' as Tiedot				,[Afrikka Naiset Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Afrikka' as Muuttomaanosa, 'Maastamuutto' as Tiedot				,[Afrikka Naiset Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Afrikka' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Afrikka Naiset Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Amerikka' as Muuttomaanosa, 'Maahanmuutto' as Tiedot				,[Amerikka Naiset Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Amerikka' as Muuttomaanosa, 'Maastamuutto' as Tiedot				,[Amerikka Naiset Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Amerikka' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Amerikka Naiset Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Aasia' as Muuttomaanosa, 'Maahanmuutto' as Tiedot					,[Aasia Naiset Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Aasia' as Muuttomaanosa, 'Maastamuutto' as Tiedot					,[Aasia Naiset Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Aasia' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Aasia Naiset Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Suomi' as Muuttomaanosa, 'Maahanmuutto' as Tiedot					,[Suomi Naiset Maahanmuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Suomi' as Muuttomaanosa, 'Maastamuutto' as Tiedot					,[Suomi Naiset Maastamuutto]				FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Suomi' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot			,[Suomi Naiset Nettomaahanmuutto]				FROM X union all

SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Muu tai tuntematon' as Muuttomaanosa, 'Maahanmuutto' as Tiedot		,[Muu tai tuntematon Naiset Maahanmuutto]	FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Muu tai tuntematon' as Muuttomaanosa, 'Maastamuutto' as Tiedot		,[Muu tai tuntematon Naiset Maastamuutto]	FROM X union all
SELECT  [Vuosi], [Syntyperä], [Alue], 'Naiset' as Sukupuoli, 'Muu tai tuntematon' as Muuttomaanosa, 'Nettomaahanmuutto' as Tiedot	,[Muu tai tuntematon Naiset Nettomaahanmuutto]	FROM X

GO

ALTER AUTHORIZATION ON [koto].[view_125i_004_koto_syntypera_muutto_unpivot] TO  SCHEMA OWNER 
GO


