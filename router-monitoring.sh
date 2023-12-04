local identity [system identity get name];
local x [tool netwatch print count-only];
for i from=0 to=$x step=1 do={
  local status [tool netwatch get $i status];
  if ($status = "down") do={
    local comment [tool netwatch get $i comment];
    local host [tool netwatch get $i host];
    local text "$identity-$comment-$host-down";
    system script add source="$text";
    tool fetch url="https://fazznet.co.id/wa/send.php?no=6285222228090&text=$text" keep-result=no;
    delay 10s;
  };
};