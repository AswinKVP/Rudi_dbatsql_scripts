-----------------------------------------------------------------
-- liste databases with non standard and unwanted options
-- rudi@babaluga.com, go ahead license
-----------------------------------------------------------------

SELECT 
    name, 
    is_auto_close_on, 
    is_auto_shrink_on, 
    is_auto_update_stats_on
FROM sys.databases
WHERE is_auto_close_on = 1
OR is_auto_shrink_on = 1
OR is_auto_update_stats_on = 0
ORDER BY name;