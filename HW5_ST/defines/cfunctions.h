function integer clogb2;
input [31:0] value;
begin
  value = value - 1;
  for (clogb2 = 0; value > 0; clogb2 = clogb2 + 1)
    value = value >> 1;
end
endfunction

function integer range2size;
input [31:0] value;
begin
  if (value < 2)
    range2size = 1;
  else
  begin
    value = value - 1;
    for (range2size = 0; value > 0; range2size = range2size + 1)
      value = value >> 1;
  end
end
endfunction

function integer pow2;
input [31:0] value;
begin
  pow2 = 1 << value;
end
endfunction

