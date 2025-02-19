echo Running
echo
curl --request POST \
  --url https://ai-api.allywell.de/api/v1/messages \
  --header 'Content-Type: application/json' \
  --header 'User-Agent: insomnia/9.1.1' \
  --data '{
  "client_id": "client-1",
  "coach_id": "admin-1",
  "sender_id": "admin-1",
  "chat_message_id": "1111",
  "chat_room_id": "test-room-1",
  "media_file_url": "https://ai-api.allywell.de/audio/chris_1.m4a"
}
'
echo
echo done
echo