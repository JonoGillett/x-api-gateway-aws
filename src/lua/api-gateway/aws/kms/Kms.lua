-- KMS Client
-- Created by IntelliJ IDEA.
-- User: ddascal
-- Date: 21/11/14
-- Time: 16:16
-- To change this template use File | Settings | File Templates.
--

local _M = { _VERSION = '0.01' }

local mt = { __index = _M }

local setmetatable = setmetatable
local error = error

function _M.new(self)
    return setmetatable({}, mt)
end

-- API: http://docs.aws.amazon.com/kms/latest/APIReference/API_GenerateDataKey.html
-- Request
--    {
--        "EncryptionContext":
--            {
--                "string" :
--                    "string"
--            },
--        "GrantTokens": [
--            "string"
--        ],
--        "KeyId": "string",
--        "KeySpec": "string",
--        "NumberOfBytes": number
--    }
-- Response
--    {
--        "CiphertextBlob": blob,
--        "KeyId": "string",
--        "Plaintext": blob
--    }
function _M:GenerateDataKey(keyId, keySpec, numberOfBytes, encryptionContext)
    if ( keySpec ~= "AES_256" and keySpec ~= "AES_128" ) then
        error("Invalid keySpec got:" .. tostring(keySpec))
    end

end

return _M
