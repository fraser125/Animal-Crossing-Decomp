lbl_8050F784:
/* 8050F784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050F788  7C 08 02 A6 */	mflr r0
/* 8050F78C  2C 04 00 00 */	cmpwi r4, 0
/* 8050F790  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050F794  7C 60 1B 78 */	mr r0, r3
/* 8050F798  41 80 00 1C */	blt lbl_8050F7B4
/* 8050F79C  2C 04 00 05 */	cmpwi r4, 5
/* 8050F7A0  40 80 00 14 */	bge lbl_8050F7B4
/* 8050F7A4  54 83 10 3A */	slwi r3, r4, 2
/* 8050F7A8  38 63 00 14 */	addi r3, r3, 0x14
/* 8050F7AC  7C 60 1A 14 */	add r3, r0, r3
/* 8050F7B0  4B FF FF B1 */	bl func_8050F760
lbl_8050F7B4:
/* 8050F7B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050F7B8  7C 08 03 A6 */	mtlr r0
/* 8050F7BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8050F7C0  4E 80 00 20 */	blr 