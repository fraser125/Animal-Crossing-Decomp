lbl_805FF86C:
/* 805FF86C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FF870  7C 08 02 A6 */	mflr r0
/* 805FF874  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FF878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FF87C  7C 9F 23 78 */	mr r31, r4
/* 805FF880  93 C1 00 08 */	stw r30, 8(r1)
/* 805FF884  7C 7E 1B 78 */	mr r30, r3
/* 805FF888  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805FF88C  2C 00 00 01 */	cmpwi r0, 1
/* 805FF890  40 82 00 08 */	bne lbl_805FF898
/* 805FF894  4B DC B1 D1 */	bl mNtc_auto_nwrite_time_ct
lbl_805FF898:
/* 805FF898  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805FF89C  7F C3 F3 78 */	mr r3, r30
/* 805FF8A0  7F E4 FB 78 */	mr r4, r31
/* 805FF8A4  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805FF8A8  7D 89 03 A6 */	mtctr r12
/* 805FF8AC  4E 80 04 21 */	bctrl 
/* 805FF8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FF8B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FF8B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FF8BC  7C 08 03 A6 */	mtlr r0
/* 805FF8C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805FF8C4  4E 80 00 20 */	blr 
