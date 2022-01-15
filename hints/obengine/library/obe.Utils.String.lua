---@meta

obe.Utils.String = {};
--- Splits a std::string using a delimited.
---
---@param str string #String you want to split
---@param delimiters? string #Delimiter used to split the string
---@return string[]
function obe.Utils.String.split(str, delimiters) end

--- Count of the occurences of occur in string str.
---
---@param str string #String you want to count the occurences in
---@param occur string #String you want to search
---@return number
function obe.Utils.String.occurencesInString(str, occur) end

--- Get if the string only contains letters.
---
---@param str string #String you want to check
---@return boolean
function obe.Utils.String.isStringAlpha(str) end

--- Get if the string only contains letters and numbers.
---
---@param str string #String you want to check
---@return boolean
function obe.Utils.String.isStringAlphaNumeric(str) end

--- Get if the string is a number.
---
---@param str string #String you want to check
---@return boolean
function obe.Utils.String.isStringNumeric(str) end

--- Get if the string is an integer.
---
---@param str string #String you want to check
---@return boolean
function obe.Utils.String.isStringInt(str) end

--- Get if the string is a float.
---
---@param str string #String you want to check
---@return boolean
function obe.Utils.String.isStringFloat(str) end

--- Replace all the occurences of search to replace in the string subject.
---
---@param subject string #The string you want to modify
---@param search string #The string to replace
---@param replace string #The content that will replace search occurences
---@return string
function obe.Utils.String.replace(subject, search, replace) end

--- Check if the string is surrounded by the given string.
---
---@param string string #String you want to check
---@param bet string #String you want to check if it surrounds the first string
---@return boolean
function obe.Utils.String.isSurroundedBy(string, bet) end

--- Generates a random string witch characters from the given set.
---
---@param set string #Set of characters to use for the generation
---@param len number #Length of the string you want to generate
---@return string
function obe.Utils.String.getRandomKey(set, len) end

--- Check if a string contains another one.
---
---@param string string #The string to check
---@param search string #The content to search in the first string
---@return boolean
function obe.Utils.String.contains(string, search) end

--- Checks if "string" starts with "search".
---
---@param string string #String where to search the prefix
---@param search string #Prefix to check
---@return boolean
function obe.Utils.String.startsWith(string, search) end

--- Checks if "string" ends with "search".
---
---@param string string #String where to search the suffix
---@param search string #Suffix to check
---@return boolean
function obe.Utils.String.endsWith(string, search) end

---@param source string #
---@param target string #
---@return number
function obe.Utils.String.distance(source, target) end

---@param source string #
---@param words string[] #
---@param limit? number #
---@return string[]
function obe.Utils.String.sortByDistance(source, words, limit) end

---@param source string #
---@return string
function obe.Utils.String.quote(source) end


---@type string
obe.Utils.String.Alphabet = {};

---@type string
obe.Utils.String.Numbers = {};
return obe.Utils.String;