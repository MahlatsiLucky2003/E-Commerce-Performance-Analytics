CREATE TABLE [dw].[dim_product] (
    [product_key] BIGINT          IDENTITY NOT NULL,
    [product_id]  INT             NOT NULL,
    [name]        VARCHAR (255)   NULL,
    [category]    VARCHAR (100)   NULL,
    [base_price]  DECIMAL (18, 2) NULL
);


GO

ALTER TABLE [dw].[dim_product]
    ADD CONSTRAINT [PK_dim_product] PRIMARY KEY NONCLUSTERED ([product_key] ASC) NOT ENFORCED;


GO