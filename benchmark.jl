using BenchmarkTools
using InteractiveUtils

function add_vec1(A,B,n)
	C = Vector{Int32}(undef, n)
	for i in 1:n
		C[i] = A[i] + B[i]
	end
	return C
end

function add_vec2(A,B,C,n)
	for i in 1:n
		C[i] = A[i] + B[i]
	end
	return C
end

function add_vec3(A,B,C,n)
	for i in 1:2:n
		C[i] = A[i] + B[i]
		C[i+1] = A[i+1] + B[i+1]
	end
	return C
end



function benchmark1()
	n=Int32(10000)
	trials = Int32(1000)
	A=rand(Int32(1):Int32(1000),n)
	B=rand(Int32(1):Int32(1000),n)

	precompile(add_vec1,(Vector{Int32},Vector{Int32},Int32))
	precompile(add_vec2,(Vector{Int32},Vector{Int32},Vector{Int32},Int32))
	precompile(add_vec3,(Vector{Int32},Vector{Int32},Vector{Int32},Int32))


	println("Benchmark1: $(n*trials) additions")
	println("A,B are 32bit integer arrays of length $(length(A)), taking $(sizeof(A)) bytes each\n")

	println("add_vec1:\t")
	@time begin 
		for i in 1:trials
			add_vec1(A,B,n)
		end
	end
	println("add_vec2:\t")
	@time begin
		C = Vector{Int32}(undef, n)
		for i in 1:trials
			add_vec2(A,B,C,n)
		end
	end


	println("add_vec3:\t")
	@time begin
		C = Vector{Int32}(undef, n)
		for i in 1:trials
			add_vec3(A,B,C,n)
		end
	end

end
benchmark1()


# function benchmark2()


# function()
# end

# n=Int32(10000)
# A=rand(Int32(1):Int32(1000),n)
# B=rand(Int32(1):Int32(1000),n)
# @code_native add_vec1(A,B,n)


# n=Int32(10000)
# A=rand(Int32(1):Int32(1000),n)
# B=rand(Int32(1):Int32(1000),n)
# C = Vector{Int32}(undef, n)
# @code_native add_vec2(A,B,C,n)


