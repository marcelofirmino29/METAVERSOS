default
{
    state_entry()
    {
        llListen(0, "", NULL_KEY, "");
    }

    listen(integer channel, string name, key id, string message)
    {
        string response = SendMessageToGPT(message);
        llSay(0, response);
    }

    string SendMessageToGPT(string message)
    {
        string api_key = "SUA_API_KEY";
        string request_url = "https://api.openai.com/v1/engines/davinci/jobs";
        string post_data = "{\"prompt\": \"" + message + "\",\"max_tokens\":100,\"temperature\": 0.5}";
        list headers = [
            "Content-Type: application/json",
            "Authorization: Bearer " + api_key
        ];
        string result = osHTTPRetry(request_url, [HTTP_METHOD, "POST"], post_data, headers, 3, 100);

        return result;
    }
}
 