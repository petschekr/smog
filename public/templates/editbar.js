define(["ext/jade"],function(jade){return function anonymous(locals,attrs,escape,rethrow){var attrs=jade.attrs,escape=jade.escape,rethrow=jade.rethrow,buf=[];with(locals||{}){var interp;buf.push("<div"),buf.push(attrs({"class":"well sidebar-nav"},{})),buf.push("><ul"),buf.push(attrs({"class":"nav nav-list"},{})),buf.push("><li><a"),buf.push(attrs({href:"#/rename/"+name+""},{href:!0})),buf.push("><i"),buf.push(attrs({"class":"icon-pencil icon-white"},{})),buf.push("></i>Rename</a></li><li><a"),buf.push(attrs({href:"#/empty/"+name+""},{href:!0})),buf.push("><i"),buf.push(attrs({"class":"icon-trash icon-white"},{})),buf.push("></i>Empty</a></li><li><a"),buf.push(attrs({href:"#/drop/"+name+""},{href:!0})),buf.push("><i"),buf.push(attrs({"class":"icon-fire icon-white"},{})),buf.push("></i>Drop</a></li><li"),buf.push(attrs({"class":"divider"},{})),buf.push("></li><li><a"),buf.push(attrs({href:"#/insert/"+name+""},{href:!0})),buf.push("><i"),buf.push(attrs({"class":"icon-asterisk icon-white"},{})),buf.push("></i>Insert</a></li><li><a"),buf.push(attrs({href:"#/find/"+name+""},{href:!0})),buf.push("><i"),buf.push(attrs({"class":"icon-search icon-white"},{})),buf.push("></i>Find</a></li><li><a"),buf.push(attrs({href:"#/mapreduce/"+name+""},{href:!0})),buf.push("><i"),buf.push(attrs({"class":"icon-filter icon-white"},{})),buf.push("></i>Map Reduce</a></li><li><a"),buf.push(attrs({href:"#/aggregate/"+name+""},{href:!0})),buf.push("><i"),buf.push(attrs({"class":"icon-tasks icon-white"},{})),buf.push("></i>Aggregate</a></li></ul></div>")}return buf.join("")}})