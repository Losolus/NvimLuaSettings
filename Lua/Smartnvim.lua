
local api_key = "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"
local chatgpt_url = "https://api.openai.com/v1/engines/davinci-codex/completions"

function chat_with_chatgpt()
    -- Create a new vertical buffer
    buf = vim.api.nvim_create_buf(false, true)

    -- Set the buffer as the current buffer
    vim.api.nvim_set_current_buf(buf)

    -- Clear the buffer
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, {})

    -- Insert a prompt in the buffer
    vim.api.nvim_buf_set_lines(buf, 0, 0, false, {"You: "})

    -- Loop to get user input and respond with ChatGPT
    while true do
        -- Get user input
        local user_input = vim.api.nvim_call_function("input", {"You: "})

        -- Exit the loop if user input is "exit"
        if user_input == "exit" then
            break
        end

        -- Use the ChatGPT API to generate a response
        local response = string.gsub(vim.fn.system("curl -X POST -H 'Content-Type: application/json' -H 'Authorization: Bearer " .. api_key .. "' -d '{\"prompt\":\"" .. user_input .. "\",\"max_tokens\":1024}' " .. chatgpt_url), '\n', ' ')

        -- Insert the response in the buffer
        vim.api.nvim_buf_set_lines(buf, -1, -1, false, {"ChatGPT: " .. response})
    end
end

-- Add a command to call the chat_with_chatgpt function
vim.api.nvim_set_keymap("n", "<space>as", ":lua chat_with_chatgpt()<CR>", {noremap = true, silent = true})
