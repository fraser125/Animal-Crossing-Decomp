lbl_805F6A50:
/* 805F6A50  7C A9 03 A6 */	mtctr r5
/* 805F6A54  2C 05 00 00 */	cmpwi r5, 0
/* 805F6A58  4C 81 00 20 */	blelr 
lbl_805F6A5C:
/* 805F6A5C  88 04 00 00 */	lbz r0, 0(r4)
/* 805F6A60  38 84 00 01 */	addi r4, r4, 1
/* 805F6A64  88 A3 00 00 */	lbz r5, 0(r3)
/* 805F6A68  7C A0 02 78 */	xor r0, r5, r0
/* 805F6A6C  98 03 00 00 */	stb r0, 0(r3)
/* 805F6A70  38 63 00 01 */	addi r3, r3, 1
/* 805F6A74  42 00 FF E8 */	bdnz lbl_805F6A5C
/* 805F6A78  4E 80 00 20 */	blr 
