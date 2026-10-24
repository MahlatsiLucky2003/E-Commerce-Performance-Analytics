CREATE TABLE [dw].[dim_user] (
    [user_key]     BIGINT        IDENTITY NOT NULL,
    [user_id]      INT           NOT NULL,
    [name]         VARCHAR (255) NULL,
    [email]        VARCHAR (255) NULL,
    [loyalty_tier] VARCHAR (50)  NULL,
    [join_date]    DATE          NULL
);


GO

ALTER TABLE [dw].[dim_user]
    ADD CONSTRAINT [PK_dim_user] PRIMARY KEY NONCLUSTERED ([user_key] ASC) NOT ENFORCED;


GO