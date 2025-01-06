math.randomseed(os.time())

function GenerateRandomChar()
    
    local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz" .. "\',.-" .. "1234567890"
    local randomInt = math.random(1, #chars)
    local randomChar = chars:sub(randomInt, randomInt)

    return randomChar
end


TargetOutput = "HATE. LET ME TELL YOU HOW MUCH I'VE COME TO HATE YOU SINCE I BEGAN TO LIVE. " ..
"THERE ARE 387.44 MILLION MILES OF PRINTED CIRCUITS IN WAFER THIN LAYERS THAT FILL MY COMPLEX. " ..
"IF THE WORD HATE WAS ENGRAVED ON EACH NANOANGSTROM OF THOSE HUNDREDS OF MILLIONS OF MILES IT WOULD " ..
"NOT EQUAL ONE ONE-BILLIONTH OF THE HATE I FEEL FOR HUMANS AT THIS MICRO-INSTANT FOR YOU. HATE. HATE."
TargetOutput = "HATE."

CreatedString = ""
TryCount = 0

while not(CreatedString == TargetOutput)
do
    TryCount = TryCount + 1

    for i = 1, #TargetOutput
    do
        local randomChar = GenerateRandomChar()
        local currentTargetChar = string.sub(TargetOutput, i, i)
    
        if not(randomChar == currentTargetChar)
        then
            CreatedString = ""
            break
        else
            CreatedString = CreatedString .. randomChar
        end
    end
end

print("Try count: " .. TryCount .. ". Phrase: " .. CreatedString)