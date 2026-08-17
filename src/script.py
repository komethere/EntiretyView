import json
from yt_dlp import YoutubeDL

def getstatsyt(channelhandle):
    ydl_opts = {
        'extract_flat': 'in_playlist',
        'skip_download': True,
        'quiet': True,
    }
    
    with YoutubeDL(ydl_opts) as ydl:
        try:
            channeldata = ydl.extract_info(channelhandle, download=False)
            statsyt = {
                "DNYT": channeldata.get('channel'),
                "HYT": channeldata.get('uploader_id'),
                "SYT": channeldata.get('subscriber_count'),
                "TVYT": channeldata.get('playlist_count'),
                "DYT": channeldata.get('description'),
            }
            return statsyt
            
        except Exception as e:
            return {"Error": f"Say it with me, Not. Even. Close.{str(e)}"}

url = "https://youtube.com/@github" 
ytstatreq = getstatsyt(url)
print(ytstatreq["TVYT"])