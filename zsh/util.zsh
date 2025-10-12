remove_silence_from_mp4() {
  if [ $# -lt 1 ]; then
    echo "Usage: remove_silence_from_mp4 <input.mp4>"
    return 1
  fi

  local input="$1"
  local base="${input%.*}"
  local mp3="${base}.mp3"
  local mono_mp3="${base}_mono.mp3"
  local output="${base}_trimmed.mp3"

  echo "🎧 Extracting audio from: $input"
  ffmpeg -y -i "$input" -q:a 0 -map a "$mp3"

  echo "🎙 Converting to mono for better silence detection"
  ffmpeg -y -i "$mp3" -ac 1 "$mono_mp3"

  echo "✂️ Removing silence..."
  ffmpeg -y -i "$mono_mp3" \
    -af "silenceremove=start_periods=1:start_threshold=-50dB:start_silence=0.3:stop_periods=-1:stop_threshold=-50dB:stop_silence=0.3:detection=peak" \
    "$output"

  echo "🧹 Cleaning up... removing $mp3 and $mono_mp3"
  rm "$mp3" "$mono_mp3"

  echo "✅ Done: $output"
}