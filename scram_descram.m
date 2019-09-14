si = [80, 81, 90, 45, 34];
s = 2024;
so = zeros(size(si));
for j = 1:length(si)
    for i = 1:8
        msb = bitxor(bitget(s, 1), bitget(s, 2));
        s = bitshift(s, -1);
        s = bitset(s, 15, msb);
        t = bitxor(bitget(si(j), 9-i), msb);
        so(j) = bitset(so(j), 9-i, t);
    end
end

s = 2024;
di = so;
do = zeros(size(di));
for j = 1:length(di)
    for i = 1:8
        msb = bitxor(bitget(s, 1), bitget(s, 2));
        s = bitshift(s, -1);
        s = bitset(s, 15, msb);
        t = bitxor(bitget(di(j), 9-i), msb);
        do(j) = bitset(do(j), 9-i, t);
    end
end