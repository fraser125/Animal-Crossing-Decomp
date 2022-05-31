lbl_8050F7C4:
/* 8050F7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050F7C8  7C 08 02 A6 */	mflr r0
/* 8050F7CC  2C 04 00 00 */	cmpwi r4, 0
/* 8050F7D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050F7D4  41 80 00 18 */	blt lbl_8050F7EC
/* 8050F7D8  2C 04 00 05 */	cmpwi r4, 5
/* 8050F7DC  40 80 00 10 */	bge lbl_8050F7EC
/* 8050F7E0  54 80 10 3A */	slwi r0, r4, 2
/* 8050F7E4  7C 63 02 14 */	add r3, r3, r0
/* 8050F7E8  4B FF FF 79 */	bl func_8050F760
lbl_8050F7EC:
/* 8050F7EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050F7F0  7C 08 03 A6 */	mtlr r0
/* 8050F7F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8050F7F8  4E 80 00 20 */	blr 
