Nexus_Version = 102

local Success, Error, Function

for i=1, 10 do
	Success, Error = pcall(function()
		local Response = (http_request or (syn and syn.request)) { Method = 'GET', Url = 'https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RBX%20Alt%20Manager/Nexus/Nexus.lua' }

		if not Response.Success then error(('HTTP Error %s'):format(Response.StatusCode)) end

		Function, Error = loadstring(Response.Body, 'Nexus')

		if not Function then error(Error) end

		Function()
		Nexus:Connect()
	end)
	
	if not Success then task.wait(1) end
end

if not Success and Error then
	(messagebox or print)(('Nexus encountered an error while launching!\n\n%s'):format(Error), 'Roblox Account Manager', 0)
end