/*
	Koto hakuohjeman käyttämä tietokanta proceduuri
*/


CREATE PROCEDURE [dbo].[sp_save_koto_loading_log]
(
	@config_id	bigint,
	@rowsRead			int	,
	@rowsCopied			int	,
	@timestamp			datetime2(7),
	@error				bit	,
	@message			nvarchar(2000)	
)
AS
BEGIN
    SET NOCOUNT ON

	INSERT INTO [dbo].[koto_loading_log] ([koto_config_id], [rowsRead], [rowsCopied], [timestamp], [error], [message])
	VALUES (@config_id, @rowsRead, @rowsCopied, @timestamp, @error, @message);

END
GO

ALTER AUTHORIZATION ON [dbo].[sp_save_koto_loading_log] TO  SCHEMA OWNER 
GO


