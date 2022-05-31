lbl_8057BAB8:
/* 8057BAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BABC  7C 08 02 A6 */	mflr r0
/* 8057BAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BAC4  88 03 09 A2 */	lbz r0, 0x9a2(r3)
/* 8057BAC8  98 03 09 A3 */	stb r0, 0x9a3(r3)
/* 8057BACC  4B FF B8 C5 */	bl aNSC_set_stop_spd
/* 8057BAD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BAD4  7C 08 03 A6 */	mtlr r0
/* 8057BAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BADC  4E 80 00 20 */	blr 
