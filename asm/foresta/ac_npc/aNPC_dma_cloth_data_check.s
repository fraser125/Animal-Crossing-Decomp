lbl_8052C38C:
/* 8052C38C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052C390  7C 08 02 A6 */	mflr r0
/* 8052C394  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052C398  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8052C39C  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 8052C3A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052C3A4  7C BF 2B 78 */	mr r31, r5
/* 8052C3A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8052C3AC  7C 7E 1B 78 */	mr r30, r3
/* 8052C3B0  40 82 00 0C */	bne lbl_8052C3BC
/* 8052C3B4  38 60 00 0B */	li r3, 0xb
/* 8052C3B8  48 00 00 30 */	b lbl_8052C3E8
lbl_8052C3BC:
/* 8052C3BC  4B FF FF 99 */	bl aNPC_get_same_cloth_data_area
/* 8052C3C0  2C 03 FF FF */	cmpwi r3, -1
/* 8052C3C4  41 82 00 20 */	beq lbl_8052C3E4
/* 8052C3C8  1C 83 00 C0 */	mulli r4, r3, 0xc0
/* 8052C3CC  38 00 00 00 */	li r0, 0
/* 8052C3D0  7C BE 22 14 */	add r5, r30, r4
/* 8052C3D4  98 05 00 01 */	stb r0, 1(r5)
/* 8052C3D8  88 85 00 06 */	lbz r4, 6(r5)
/* 8052C3DC  38 04 00 01 */	addi r0, r4, 1
/* 8052C3E0  98 05 00 06 */	stb r0, 6(r5)
lbl_8052C3E4:
/* 8052C3E4  38 63 00 01 */	addi r3, r3, 1
lbl_8052C3E8:
/* 8052C3E8  2C 03 00 0B */	cmpwi r3, 0xb
/* 8052C3EC  40 82 00 14 */	bne lbl_8052C400
/* 8052C3F0  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 8052C3F4  28 00 00 00 */	cmplwi r0, 0
/* 8052C3F8  40 82 00 08 */	bne lbl_8052C400
/* 8052C3FC  38 60 FF FF */	li r3, -1
lbl_8052C400:
/* 8052C400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052C404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052C408  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052C40C  7C 08 03 A6 */	mtlr r0
/* 8052C410  38 21 00 10 */	addi r1, r1, 0x10
/* 8052C414  4E 80 00 20 */	blr 
