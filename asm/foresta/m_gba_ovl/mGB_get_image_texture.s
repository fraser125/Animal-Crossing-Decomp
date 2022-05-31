lbl_805DC4A8:
/* 805DC4A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC4AC  7C 08 02 A6 */	mflr r0
/* 805DC4B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC4B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC4B8  93 C1 00 08 */	stw r30, 8(r1)
/* 805DC4BC  7C 9E 23 78 */	mr r30, r4
/* 805DC4C0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DC4C4  83 E5 09 E4 */	lwz r31, 0x9e4(r5)
/* 805DC4C8  48 00 D3 59 */	bl mNW_get_image_no
/* 805DC4CC  1C 7E 02 20 */	mulli r3, r30, 0x220
/* 805DC4D0  80 1F 00 04 */	lwz r0, 4(r31)
/* 805DC4D4  38 63 00 20 */	addi r3, r3, 0x20
/* 805DC4D8  7C 60 1A 14 */	add r3, r0, r3
/* 805DC4DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC4E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DC4E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC4E8  7C 08 03 A6 */	mtlr r0
/* 805DC4EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC4F0  4E 80 00 20 */	blr 
