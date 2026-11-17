CREATE TABLE [AdventureWorksDW].[DimDate] (
    [DateKey]              INT          NOT NULL,
    [FullDateAlternateKey] DATE         NULL,
    [DayNumberOfWeek]      SMALLINT     NULL,
    [EnglishDayNameOfWeek] VARCHAR (10) NULL,
    [SpanishDayNameOfWeek] VARCHAR (10) NULL,
    [FrenchDayNameOfWeek]  VARCHAR (10) NULL,
    [DayNumberOfMonth]     SMALLINT     NULL,
    [DayNumberOfYear]      SMALLINT     NULL,
    [WeekNumberOfYear]     SMALLINT     NULL,
    [EnglishMonthName]     VARCHAR (10) NULL,
    [SpanishMonthName]     VARCHAR (10) NULL,
    [FrenchMonthName]      VARCHAR (10) NULL,
    [MonthNumberOfYear]    SMALLINT     NULL,
    [CalendarQuarter]      SMALLINT     NULL,
    [CalendarYear]         CHAR (4)     NULL,
    [CalendarSemester]     SMALLINT     NULL,
    [FiscalQuarter]        SMALLINT     NULL,
    [FiscalYear]           CHAR (4)     NULL,
    [FiscalSemester]       SMALLINT     NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimDate]
    ADD PRIMARY KEY NONCLUSTERED ([DateKey] ASC) NOT ENFORCED;


GO