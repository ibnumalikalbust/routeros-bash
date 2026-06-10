log warning "Auto Notice Admin Start";
local identity [system identity get name];
local nowdate [system clock get date];
foreach i in=[ppp secret find service=any] do={
  local comment [ppp secret get $i comment];
  local expdate [pick $comment 0 11];
  if ($nowdate = $expdate) do={
    local account [ppp secret get $i name];
    local customer [pick $comment 21 50];
    local text "$account%20$customer%0Afazznet.co.id/vpn/mgmt/notice.php?q=$account@$identity";
    tool fetch url="https://fazznet.co.id/wa/send/group.php?text=$text" keep-result=no;
    delay 10s;
  };
};