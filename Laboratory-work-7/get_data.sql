CREATE OR REPLACE FUNCTION get_data(attribute_value VARCHAR)
RETURNS TABLE(p_id INTEGER, name VARCHAR, bd DATE, spot_conf INTEGER) AS $$
DECLARE
    query TEXT;
BEGIN
    query := 'SELECT * FROM human WHERE name = ''' || attribute_value || ''';';
    RETURN QUERY EXECUTE query;
END;
$$ LANGUAGE plpgsql;