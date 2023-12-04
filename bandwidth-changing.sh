local date [system clock get date];
local day [pick $date 4 6];
if ($day = "01") do={
  ip hotspot user profile set rate-limit=600k [find name="0Vouc-bukho"];
};
if ($day = "06") do={
  ip hotspot user profile set rate-limit=500k [find name="0Vouc-bukho"];
};
if ($day = "11") do={
  ip hotspot user profile set rate-limit=400k [find name="0Vouc-bukho"];
};
if ($day = "16") do={
  ip hotspot user profile set rate-limit=300k [find name="0Vouc-bukho"];
};
if ($day = "21") do={
  ip hotspot user profile set rate-limit=200k [find name="0Vouc-bukho"];
};
if ($day = "25") do={
  ip hotspot user profile set rate-limit=100k [find name="0Vouc-bukho"];
};