lbl_8062A5A0:
/* 8062A5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062A5A4  7C 08 02 A6 */	mflr r0
/* 8062A5A8  38 83 1C C0 */	addi r4, r3, 0x1cc0
/* 8062A5AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062A5B0  4B D8 C4 A9 */	bl Global_kankyo_ct
/* 8062A5B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062A5B8  7C 08 03 A6 */	mtlr r0
/* 8062A5BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8062A5C0  4E 80 00 20 */	blr 
