lbl_804FDBD8:
/* 804FDBD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FDBDC  7C 08 02 A6 */	mflr r0
/* 804FDBE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FDBE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FDBE8  7C 9F 23 78 */	mr r31, r4
/* 804FDBEC  93 C1 00 08 */	stw r30, 8(r1)
/* 804FDBF0  7C 7E 1B 78 */	mr r30, r3
/* 804FDBF4  4B FD 98 E9 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804FDBF8  2C 03 00 00 */	cmpwi r3, 0
/* 804FDBFC  40 82 00 18 */	bne lbl_804FDC14
/* 804FDC00  7F C3 F3 78 */	mr r3, r30
/* 804FDC04  7F E4 FB 78 */	mr r4, r31
/* 804FDC08  38 A0 00 01 */	li r5, 1
/* 804FDC0C  38 C0 42 04 */	li r6, 0x4204
/* 804FDC10  4B FD D7 45 */	bl Player_actor_Set_FootMark_Base2
lbl_804FDC14:
/* 804FDC14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FDC18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FDC1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FDC20  7C 08 03 A6 */	mtlr r0
/* 804FDC24  38 21 00 10 */	addi r1, r1, 0x10
/* 804FDC28  4E 80 00 20 */	blr 
