data modify storage cu:io data.list.index.Result set value []
data modify storage cu:io data.list.index.Result append from storage cu:internal data.list.index.head[]
data modify storage cu:io data.list.index.Result append from storage cu:internal data.list.index.tail[]