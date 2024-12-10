CREATE OR REPLACE FUNCTION change_data(attribute1_value TEXT, attribute2_value TEXT)
RETURNS VOID AS $$
BEGIN
    EXECUTE 'UPDATE human SET name = $1 WHERE bd = $2::date'
    USING attribute2_value, attribute1_value;
END;
$$ LANGUAGE plpgsql;
