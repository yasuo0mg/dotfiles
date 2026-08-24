remove_silence_from_audio() {
  if [ $# -lt 1 ]; then
    echo "Usage: remove_silence_from_audio <input.mp4|input.m4a|input.mp3|etc>"
    return 1
  fi

  local input="$1"
  local base="${input%.*}"
  local temp_mp3="${base}_temp.mp3"
  local mono_mp3="${base}_mono.mp3"
  local output="${base}_trimmed.mp3"

  echo "🎧 Processing audio from: $input"
  
  # 音声を抽出してMP3に変換
  ffmpeg -y -i "$input" -q:a 0 -map a "$temp_mp3"

  echo "🎙 Converting to mono for better silence detection"
  ffmpeg -y -i "$temp_mp3" -ac 1 "$mono_mp3"

  echo "✂️ Removing silence..."
  ffmpeg -y -i "$mono_mp3" \
    -af "silenceremove=start_periods=1:start_threshold=-50dB:start_silence=0.3:stop_periods=-1:stop_threshold=-50dB:stop_silence=0.3:detection=peak" \
    "$output"

  echo "🧹 Cleaning up... removing $temp_mp3 and $mono_mp3"
  rm "$temp_mp3" "$mono_mp3"

  echo "✅ Done: $output"
}

# 後方互換性のためのエイリアス
alias remove_silence_from_mp4='remove_silence_from_audio'