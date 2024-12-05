CREATE OR REPLACE FUNCTION change_data_secure(attr1_value date, new_attr2_value TEXT)
RETURNS VOID AS $$
BEGIN
    UPDATE human SET name = new_attr2_value WHERE bd= attr1_value;
END;
$$ LANGUAGE plpgsql;