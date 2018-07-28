CREATE USER minecraft IDENTIFIED BY 'minecr4ft';

CREATE DATABASE minecraft_cp;
CREATE DATABASE minecraft_luckperms;

GRANT ALL PRIVILEGES ON minecraft_cp.* TO minecraft;
GRANT ALL PRIVILEGES ON minecraft_luckperms.* TO minecraft;
