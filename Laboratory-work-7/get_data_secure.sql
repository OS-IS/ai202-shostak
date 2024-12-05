CREATE OR REPLACE FUNCTION get_data(attr_value TEXT)
RETURNS TABLE(p_id INTEGER, name VARCHAR, bd date, spot_conf INTEGER) AS $$
BEGIN
    RETURN QUERY EXECUTE 'SELECT * FROM human WHERE name = $1'
    USING attr_value;
END;
$$ LANGUAGE plpgsql;