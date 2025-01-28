k = QQ
R=k[x,y,z,u]

koszulIdeals={
ideal (x^2), -- Case 2
ideal (x^2, y^2), -- Case 3
ideal (x^2, x*y), -- Case 4
ideal (x^2, y^2, z^2), -- Case 5
ideal (x^2,y^2,x*z), -- Case 8
ideal (x^2,x*y,y^2), -- Case 9
ideal (x^2,x*y,x*z), -- Case 10
ideal (x^2, y^2, z^2, u^2), -- Case 11
ideal (x^2,y^2,z^2,y*u), -- Case 18
ideal (x*z, y^2, z^2, y*u + z*u), -- Case 21
ideal (x*z,x*u,y^2,z^2), -- Case 23
ideal (x^2,x*y,x*z,u^2), -- Case 25
ideal (x*z,y^2,y*u,z*u),  -- Case 26
ideal (x*y,x*z,y^2,y*z), -- Case 27
ideal (x^2,x*y,x*z,x*u), -- Case 28
ideal (x^2,y^2,z^2,z*u,u^2), -- Case 38
ideal (x*y,y^2,z^2,z*u,u^2), -- Case 41
ideal (x^2,y^2,y*z,z*u,u^2), -- Case 43
ideal (x*y+y*z,x*y+z^2 +y*u, y*u + z*u, y^2, x*z), -- Case 45
ideal (x^2,x*y,y*z,z*u,u^2), -- Case 46
ideal (x*z, y^2, z^2, y*u, z*u), -- Case 49
ideal (x^2, x*y, x*z, y^2, z^2), -- Case 50
ideal (x^2, x*y, x*z, y^2, y*z), -- Case 52
ideal (y^2-u^2, x*z, y*z, z^2, z*u), -- Case 53
ideal (x^2,x*z,y^2,z^2,y*u+z*u,u^2), -- Case 54
ideal (x^2,x*y,x*u,y^2,z^2,z*u), -- Case 63
ideal (x^2-y^2,x*y, z^2,x*u,y*u,z*u), -- Case 64
ideal (x*z,y^2,y*u,z^2,z*u,u^2), -- Case 66
ideal (x*y,x*z,y^2,y*u,z^2,z*u), -- Case 67
ideal (x^2,x*y,x*z,y^2,y*z,z^2), -- Case 68
ideal (x^2,x*y,x*z,x*u,y^2,y*z), -- Case 70
ideal (x^2, y^2, z^2, u^2, x*y, z*u, y*z + x*u),  -- Case 71
ideal (x^2-y^2,z^2,x*y, y*z, z*u, x*u),  -- Case 72
ideal (x^2,y^2,z^2,u^2,z*u, y*u, x*u),  -- Case 73
ideal (x^2, x*y, x*z, y^2, y*z,y*u, u^2),  -- Case 75
ideal (x^2,x*y,x*z,x*u,z^2,z*u,y*u),  -- Case 76
ideal (x^2,x*y,x*z,x*u,y^2,y*z,y*u), -- Case 77
ideal (x^2,x*y,y^2,z^2,z*u,u^2, x*z + y*u, y*z - x*u), -- Case 78
ideal (x^2,x*y,x*z,x*u,y^2,y*u,z^2,z*u), -- Case 79
ideal (x^2,x*y,x*z,y^2,y*z,y*u,z^2,z*u), -- Case 80
ideal (x^2,x*y,x*z,y^2,y*z-x*u,y*u,z^2,z*u,u^2), -- Case 81
ideal (x^2, x*y, x*z, x*u, y^2, z*u,u^2,y*z,y*u), -- Case 82
ideal (x^2,y^2,z^2,u^2,x*y,x*z, x*u, y*z, y*u, z*u) -- Case 83
}


nonKoszulIdeals= {
ideal (x^2,y^2+x*z,y*z),  -- not Koszul, Case 6
ideal (x^2+y^2,z^2+u^2, x*z+y*u), -- not Koszul, Case 7, CI-like Priddy
ideal (x^2+x*y,y^2+x*u, z^2+x*u,u^2+z*u),  -- not Koszul, Case 12, CI-like 
ideal (x^2+z^2+u^2, y^2,x*z,y*u+z*u),  -- not Koszul, Case 13, CI-like
ideal (x*z,y^2,z^2 +u^2, y*u+z*u),  -- not Koszul, Case 14, CI-like
ideal (x*z,y^2,y*z+u^2, y*u+z*u),  -- not Koszul, Case 15, CI-like
ideal (x*y+z^2+y*u,y^2, y*u+z*u,x*z), -- not Koszul, Case 16, grade 2 (closest Koszul S 2 away but is CI)
ideal (x*z,y*z+x*u,y^2,y*u+z*u), -- not Koszul, Case 17, CI-like
ideal (x*z,y^2, y*u+z*u,u^2), -- not Koszul, Case 19, *** not CI-like ***** grade 3, almost CI
ideal (x*z,y^2,y*u + z^2,y*u+z*u), -- not Koszul, Case 20
ideal (x^2 +x*y,x*u,x*z+y*u,y^2), -- not Koszul, Case 22
ideal (x*z,y^2,y*z + z^2,y*u+z*u), -- not Koszul, Case 24
ideal (x^2 +x*y,y^2 +x*u,z^2 +x*u,z*u+u^2,y*z),	--not Koszul, Case 29
ideal (x*y+u^2, x*z,x^2+z^2+u^2,y^2, y*u+z*u), -- not Koszul, Case 30
ideal (x^2-y^2,y^2-z^2,z^2-u^2,x*z+y*u,-x^2+x*y-y*z+x*u), -- not Koszul, Case 31
ideal (x^2+z^2,x*z,y^2,y*u+z*u,u^2), -- not Koszul, Case 32
ideal (x^2 +x*y,y^2 +y*z,y^2 +x*u,z^2 +x*u,z*u+u^2), -- not Koszul, Case 33
ideal (x^2+x*y+y*u+u^2,y^2,x*z, x^2+z^2+u^2,y*u+z*u), -- not Koszul, Case 34
ideal (x^2+z^2+u^2,y^2,x*z,x*y+y*z+y*u,y*u+z*u), -- not Koszul, Case 35
ideal (x^2 +y^2,z^2,u^2,y*z-y*u,x*z+z*u), -- not Koszul, Case 36
ideal (x^2,y^2, x*y-z*u,y*z-x*u,(x-y)*(z-u)), -- not Koszul, Case 37
ideal (x^2+y*z+u^2, x*z+z^2 +y*u, x*y, x*u, z*u), -- not Koszul , Case 39
ideal (x^2-x*u,x*u-y^2,y^2-z^2,z^2-u^2,x*z+y*u), -- not Koszul, Case 40
ideal (x^2 +x*y,z*u,y^2,x*u,x*z+y*u), -- not Koszul, Case 42
ideal (x*z,y*z,y^2, y*u+z*u,z^2+u^2), -- not Koszul, Case 44
-- 46va
ideal (x^2+x*y,y^2, x*u,x*z+y*u,-x^2+x*z-y*z), -- not Koszul, Case 47
ideal (x*y,z^2+y*u, y*u+z*u,y^2,x*z), -- not Koszul, Case 48
ideal (x*y,x*z,y*z+x*u, z^2,z*u), -- not Koszul, Case 51
ideal (x^2+x*y,x*z+y*u,x*u,y^2,z^2,z*u+u^2), -- not Koszul, Case 55
ideal (x^2+x*z+u^2,x*y,x*u,x^2-y^2,z^2,z*u), -- not Koszul, Case 56
ideal (x^2+y*z+u^2,x*u,x^2+x*y,x*z+y*u,z*u+u^2,y^2+z^2), -- not Koszul, Case 57
-- 57v2
ideal (x*y,x^2 +z*u,y^2,z^2, x*z + y*u, x*u), -- not Koszul, Case 58
ideal (x^2-y^2,x*y,x*u,z^2,z*u,x*z+y*u), -- not Koszul, Case 59
-- 59v2
ideal (x^2+y*z+u^2,x*z+y*u,z*u,x*y,z^2,x*u), -- not Koszul, Case 60
ideal (x^2-y^2,x*y,z^2, x*u, z*u, u^2), -- not Koszul, Case 61
ideal (x^2-y^2,x*y, x*u, y*z + y*u,z^2,z*u), -- not Koszul, Case 62
-- 62va
-- 63v4
-- 63v8
-- 63ne
ideal (x^2,x*y,x*z, y^2, y*u + z^2,y*u+z*u), -- not Koszul, Case 65
-- 66v5
-- 68v
ideal (x^2,x*z,x*u,x*y-z*u,y*z,z^2), -- not Koszul, -- Case 69
-- 71v16
-- 71v7
-- 71v4
-- 71v5
-- 72v1
-- 72 v2e
ideal (x^2,x*y+z^2,y*z,x*u,y*u,z*u,u^2) -- not Kozul, Case 74
-- 75v1
-- 75v2
-- 78v1
-- 78v2e
-- 78v3v
-- 81va
};


variants={
    ideal(x*z + u^2, x*y, x*u, x^2, z*u+y^2 +z^2), -- Case 83
    ideal(x^2+y^2+z^2,x*y,x*u, y*z, z*u, x*z + u^2), -- Case 84
    ideal(x^2-y^2,x*y,y*z,z*u,x*z + u^2,x*u), -- Case 85
    ideal(x^2+y*z+u^2,y*u, z*u,x*y,z^2,x*u), -- Case 86
    ideal(y^2,x*z+y*u,z*u,x*y,z^2,x*u), -- Case 87
    ideal(x^2, x*y, x*u, y*u, z^2,x*z+u^2,y^2 +z^2 +z*u), -- Case 88
    ideal(x^2,x*y,x*z + u^2,x*u,y^2 + z^2,z*u), -- Case 89
    ideal(x*y,x*z+u^2,x*u,y*u,z*u,z^2), -- Case 90
    ideal(x^2,x*y,x*z,x*u,u^2,y^2 + z^2 + z*u), -- Case 91
    ideal(x^2,y^2 + z^2,x*y,y*z,z*u,x*z + u^2,x*u), -- Case 92
    ideal(x^2 + u^2,x*y,x*u,y^2,y*z,z^2,z*u), -- Case 93
    ideal(x^2,y^2,z^2,x*z + u^2,x*u,y*z,z*u), -- Case 94
    ideal(x^2 + x*y,x^2 + y*z,x*y + y^2,z*2, z^2, x*u, z*u, x*z + u^2), -- Case 95
    ideal(x*u+u^2,x^2+x*y,y^2+x*u,y^2+y*z,y^2 +y*z,y*u+z*u,z^2 +x*u,z*u+u^2), -- Case 96
    ideal(y*z,x^2 + x*y,x*z + y*u,x*u,z^2,z*u,x^2 + u^2), -- Case 97
    ideal(y^2,x*z,y*z + x*u,z^2,y*u,z*u,u^2), -- Case 98
    ideal(x*y,x*z + u^2,x*u,y*z + u^2,y*u,z*u,z^2), -- Case 99
    ideal(x^2, y^2, z^2, u^2, x*y, x*z, x*u, y*u), -- Case 100
    ideal(x*u,y*u + x*z,y*z,x^2,y^2,z^2 + x*y,u^2,z*u), -- Case 101
    ideal(x*u,y*u + x*z,y*z,x^2,y^2,z^2 + x*z,u^2,z*u), -- Case 102
    ideal(x^2, y^2, z^2, u^2, x*y, x*z, x*u, y*u, z*u) -- Case 103
    }


