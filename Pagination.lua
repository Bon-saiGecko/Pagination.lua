local Pagination = {}

function Pagination.Paginate(tbl, pageSize)
	local newTbl = {}
	
	local currentIndex = 1
	while currentIndex <= #tbl do
		local newPage = {}
		for _=1, pageSize do
			if currentIndex <= #tbl then
				table.insert(newPage, tbl[currentIndex])
				currentIndex = currentIndex + 1
			end
		end
		table.insert(newTbl, {
			pageNumber = #newTbl + 1,
			page = newPage
		})
	end

	return newTbl
end

return Pagination