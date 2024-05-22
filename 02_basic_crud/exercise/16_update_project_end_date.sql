UPDATE 
    projects
SET 
    end_date = start_date + '5 months'::INTERVAL
WHERE 
    end_date IS NULL;
