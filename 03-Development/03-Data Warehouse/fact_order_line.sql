CREATE TABLE [dw].[fact_order_line] (
    [order_line_key]  BIGINT          IDENTITY NOT NULL,
    [order_id]        INT             NOT NULL,
    [order_item_id]   INT             NOT NULL,
    [user_key]        BIGINT          NOT NULL,
    [product_key]     BIGINT          NOT NULL,
    [order_date_key]  INT             NOT NULL,
    [order_timestamp] DATETIME2 (6)   NOT NULL,
    [order_status]    VARCHAR (50)    NOT NULL,
    [quantity]        INT             NOT NULL,
    [unit_price]      DECIMAL (18, 2) NOT NULL,
    [line_total]      DECIMAL (18, 2) NOT NULL
);


GO

ALTER TABLE [dw].[fact_order_line]
    ADD CONSTRAINT [PK_fact_order_line] PRIMARY KEY NONCLUSTERED ([order_line_key] ASC) NOT ENFORCED;


GO