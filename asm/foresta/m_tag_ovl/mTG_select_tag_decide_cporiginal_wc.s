lbl_805FB88C:
/* 805FB88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FB890  7C 08 02 A6 */	mflr r0
/* 805FB894  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FB898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FB89C  7C BF 2B 78 */	mr r31, r5
/* 805FB8A0  93 C1 00 08 */	stw r30, 8(r1)
/* 805FB8A4  7C 7E 1B 78 */	mr r30, r3
/* 805FB8A8  4B FD 19 A1 */	bl mCO_top_folder
/* 805FB8AC  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 805FB8B0  7C 04 18 00 */	cmpw r4, r3
/* 805FB8B4  41 82 00 34 */	beq lbl_805FB8E8
/* 805FB8B8  7F C3 F3 78 */	mr r3, r30
/* 805FB8BC  4B FD 1A 79 */	bl mCO_change_up_folder
/* 805FB8C0  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805FB8C4  7F C3 F3 78 */	mr r3, r30
/* 805FB8C8  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805FB8CC  81 84 03 70 */	lwz r12, 0x370(r4)
/* 805FB8D0  7D 89 03 A6 */	mtctr r12
/* 805FB8D4  4E 80 04 21 */	bctrl 
/* 805FB8D8  38 60 04 1C */	li r3, 0x41c
/* 805FB8DC  48 03 24 29 */	bl sAdo_SysTrgStart
/* 805FB8E0  7F C3 F3 78 */	mr r3, r30
/* 805FB8E4  4B FD 19 B1 */	bl mCO_clear_mark_flg
lbl_805FB8E8:
/* 805FB8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FB8EC  38 60 00 00 */	li r3, 0
/* 805FB8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FB8F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FB8F8  7C 08 03 A6 */	mtlr r0
/* 805FB8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 805FB900  4E 80 00 20 */	blr 
