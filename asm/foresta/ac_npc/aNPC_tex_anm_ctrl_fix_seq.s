lbl_8052D5C8:
/* 8052D5C8  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8052D5CC  80 03 01 94 */	lwz r0, 0x194(r3)
/* 8052D5D0  7C 65 02 14 */	add r3, r5, r0
/* 8052D5D4  88 03 FF FF */	lbz r0, -1(r3)
/* 8052D5D8  98 04 00 04 */	stb r0, 4(r4)
/* 8052D5DC  4E 80 00 20 */	blr 
