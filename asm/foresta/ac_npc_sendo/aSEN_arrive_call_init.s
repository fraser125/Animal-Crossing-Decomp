lbl_805745D4:
/* 805745D4  38 00 02 00 */	li r0, 0x200
/* 805745D8  38 A0 04 00 */	li r5, 0x400
/* 805745DC  B0 03 08 B8 */	sth r0, 0x8b8(r3)
/* 805745E0  38 80 00 7C */	li r4, 0x7c
/* 805745E4  38 00 00 00 */	li r0, 0
/* 805745E8  B0 A3 08 BA */	sth r5, 0x8ba(r3)
/* 805745EC  B0 83 09 74 */	sth r4, 0x974(r3)
/* 805745F0  98 03 07 52 */	stb r0, 0x752(r3)
/* 805745F4  4E 80 00 20 */	blr 
