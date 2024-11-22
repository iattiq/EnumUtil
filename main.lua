local EnumUtil = {}


function EnumUtil:EnumToString(EnumValue: EnumItem): string
	
	if typeof(EnumValue) == "EnumItem" then
		return tostring(EnumValue)
	end
	
	return false
end

function EnumUtil:StringToEnum(EnumValue: string): EnumItem

	if typeof(EnumValue) == "string" then
		
		local EnumSlice = string.split(EnumValue, ".")
		
		return Enum[EnumSlice[2]][EnumSlice[3]]
	end

	return false
end

function EnumUtil:GetEnum(enum: string, item: string)
	
	if typeof(enum) == "string" and typeof(item) == "string" then
		
		return Enum[enum][item]
	end
	return false
end


return EnumUtil
