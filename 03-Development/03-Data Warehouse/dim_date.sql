CREATE TABLE [dw].[dim_date] (
    [date_key]    INT          NOT NULL,
    [full_date]   DATE         NOT NULL,
    [year]        INT          NOT NULL,
    [quarter]     INT          NOT NULL,
    [month]       INT          NOT NULL,
    [day]         INT          NOT NULL,
    [day_of_week] VARCHAR (10) NOT NULL,
    [is_weekend]  BIT          NOT NULL
);


GO

ALTER TABLE [dw].[dim_date]
    ADD CONSTRAINT [PK_dim_date] PRIMARY KEY NONCLUSTERED ([date_key] ASC) NOT ENFORCED;


GO