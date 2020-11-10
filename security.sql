CREATE ROLE 
    breizh_staff, 
    breizh_viewer;
    
GRANT SELECT 
ON breizhvideo.* 
TO breizh_staff, breizh_viewer;

GRANT INSERT, UPDATE, DELETE
ON breizhvideo.* 
TO breizh_staff;
    
CREATE USER staff1 IDENTIFIED BY 'staff1';   
CREATE USER viewer1 IDENTIFIED BY 'viewer1'; 
GRANT breizh_staff, 
   breizh_viewer
TO staff1, 
    viewer1;
    
GRANT INSERT, UPDATE
ON breizhvideo.preference
TO viewer1;

SET DEFAULT ROLE ALL TO breiz_viewer;
