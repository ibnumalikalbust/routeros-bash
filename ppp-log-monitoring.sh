# on up
local identity [system identity get name];
local comment [ppp secret get $user comment];
local customer [pick $comment 21 50];
local text "Account:%20*$user@$identity*%0ATerhubung%20ke%20Server%20VPN%0ADapat%20diremote%20kembali";
tool fetch url="https://fazznet.co.id/wa/send/notif2.php?no=$customer&text=$text" keep-result=no;

# on down
local identity [system identity get name];
local comment [ppp secret get $user comment];
local customer [pick $comment 21 50];
local text "Account:%20*$user@$identity*%0ATerputus%20dari%20server%20VPN%0ATidak%20dapat%20diremote";
tool fetch url="https://fazznet.co.id/wa/send/notif2.php?no=$customer&text=$text" keep-result=no;