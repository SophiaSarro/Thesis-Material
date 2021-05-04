### A Pluto.jl notebook ###
# v0.14.2

using Markdown
using InteractiveUtils

# ╔═╡ 5dbc4992-c242-450d-82f8-429bb0f04534
begin
	using Pkg
	Pkg.add("Plots")
	Pkg.add("CSV")
	Pkg.add("HTTP")
	Pkg.add("DataFrames")

	
	using HTTP
	using CSV
	using DataFrames
	using Plots
	plotly()

end

# ╔═╡ 7fd161f7-a56e-4826-a420-54c8f0b49ba5
md"Notebook configuration is in the hidden cell following this one."

# ╔═╡ 705a3aa9-d9ac-4e19-8d43-7e54c6824070
md"""# Plot topic-topic relations

Plot topic-topic relations from data in a CSV file.

In the following cell, fill in the URL of the csv data data to plot.

"""

# ╔═╡ bbf97915-9d9d-4307-9fad-0e52c418d99b
topictopicurl = "https://raw.githubusercontent.com/SophiaSarro/Thesis-Material/master/Topic_Modeling_All_Words_1/TopicTopic_All_Words_1.csv"

# ╔═╡ 6d85f6de-bcbf-4b12-beb5-e613abe89ef6
md"""
---

> Functions
"""

# ╔═╡ 93bcc316-c69f-49dc-bbb8-ebd8e86c0b1c
function arrayify(df)
	sz = nrow(df)
	vallist = []
	for i in 1:sz
		for j in 1:sz
   			push!(vallist, df[i,j])
   		end
   end
	reshape(vallist, (sz, sz))
end

# ╔═╡ b5a8d9f6-5dfd-4982-bcb2-291e47d75e69
#Construct matrix of y coordinate values
function fillY(count)
    rslt = []
    for i in 1:count
        push!(rslt, fill(i, count))
    end
    rslt
end

# ╔═╡ d8a8ad2e-41a6-4652-ae24-5b31fde4632d
#Assign color based on binary division above or below threshold."
function colorize(n; thresh = 0.5)
    n > thresh ? "green" : "red"
end

# ╔═╡ dad0ac7b-3b40-4bdf-853e-7e14251ecdba
# Do plot
function plottopicsquare(m; thresh=0.0)
    numtopics = size(m)[1]
    # Plot coordinates:
    x = 1:numtopics
    y = fillY(numtopics)
    # Plot attributes
    ptcolors = map(n -> colorize(n, thresh=thresh), m)
	labels = map(n -> "$n", m)
    # Do plot:
    scatter(x,y,markersize=m,markercolor=ptcolors, legend=false, hover=labels)
end

# ╔═╡ f132a94d-e2b1-4539-8d6b-271475fe4b5d
# Scale a data set
function shiftscale(rawdata; scale = 10, thresh = 0.5)
	shifted = map(n ->  n - thresh, rawdata)
	cooked = map(n -> n*scale, shifted)
end

# ╔═╡ a7ed18e9-70f4-4de4-883a-005b5e11a3cb
function ploturl(u;scale=10, thresh=0.7)
	df = CSV.File(HTTP.get(u).body; header = false) |> DataFrame
	raw = arrayify(df)
    cooked = shiftscale(raw, scale = scale, thresh = thresh)
    plottopicsquare(cooked, thresh = thresh)
end


# ╔═╡ 4cd1c04b-6bc3-4485-8483-5c1d7ac79c4f
ploturl(topictopicurl)

# ╔═╡ Cell order:
# ╟─7fd161f7-a56e-4826-a420-54c8f0b49ba5
# ╟─5dbc4992-c242-450d-82f8-429bb0f04534
# ╟─705a3aa9-d9ac-4e19-8d43-7e54c6824070
# ╟─bbf97915-9d9d-4307-9fad-0e52c418d99b
# ╟─4cd1c04b-6bc3-4485-8483-5c1d7ac79c4f
# ╟─6d85f6de-bcbf-4b12-beb5-e613abe89ef6
# ╟─93bcc316-c69f-49dc-bbb8-ebd8e86c0b1c
# ╟─a7ed18e9-70f4-4de4-883a-005b5e11a3cb
# ╟─b5a8d9f6-5dfd-4982-bcb2-291e47d75e69
# ╟─d8a8ad2e-41a6-4652-ae24-5b31fde4632d
# ╟─dad0ac7b-3b40-4bdf-853e-7e14251ecdba
# ╟─f132a94d-e2b1-4539-8d6b-271475fe4b5d
