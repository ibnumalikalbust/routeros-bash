local identity [system identity get name];
local nowdate [system clock get date];
local x [ip hotspot user print count-only];
for i from=0 to=$x step=1 do={
  local profile [ip hotspot user get $i profile];
  if ($profile != "0Vouc-01rb") do={
    local comment [ip hotspot user get $i comment];
    local expdate [pick $comment 0 11];
    if ($nowdate = $expdate) do={
      local name [ip hotspot user get $i name];
      local text "$identity-$name-$expdate";
      system script add source="$text";
      tool fetch url="https://fazznet.co.id/wa/send.php?no=6285222228090&text=$text" keep-result=no;
      delay 10s;
    };
  };
};