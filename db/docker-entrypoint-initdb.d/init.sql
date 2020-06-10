CREATE USER minecraft IDENTIFIED BY 'minecr4ft';

CREATE DATABASE minecraft_cp;
CREATE DATABASE minecraft_luckperms;
CREATE DATABASE minecraft_auth;

GRANT ALL PRIVILEGES ON minecraft_cp.* TO minecraft;
GRANT ALL PRIVILEGES ON minecraft_luckperms.* TO minecraft;
GRANT ALL PRIVILEGES ON minecraft_auth.* TO minecraft;
