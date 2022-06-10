$avis=Get-ChildItem * -File -include *.avi
foreach ($avi in $avis)
{
 $name=$avi.Name
 $mp4=$name.Substring(0,$name.LastIndexOf('.'))+".mp4"
 ffmpeg -i $name -vcodec libx264 -crf 16 -vf "scale=512:432" $mp4
}
