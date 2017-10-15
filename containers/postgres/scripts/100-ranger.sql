create user ranger with password 'dev';

create user rangeradmin with password 'dev';
create database ranger;
grant all privileges on database ranger to rangeradmin;
alter database ranger owner to rangeradmin;

create user rangerkms with password 'dev';
create database rangerkms;
alter database rangerkms owner to rangerkms;
