lbl_8037B538:
/* 8037B538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037B53C  7C 08 02 A6 */	mflr r0
/* 8037B540  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037B544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037B548  7C 7F 1B 78 */	mr r31, r3
/* 8037B54C  88 03 00 00 */	lbz r0, 0(r3)
/* 8037B550  28 00 00 00 */	cmplwi r0, 0
/* 8037B554  41 82 00 30 */	beq lbl_8037B584
/* 8037B558  48 00 13 45 */	bl mBGMPsComp_execute_bgm_num_get
/* 8037B55C  2C 03 00 2B */	cmpwi r3, 0x2b
/* 8037B560  40 82 00 20 */	bne lbl_8037B580
/* 8037B564  88 7F 00 01 */	lbz r3, 1(r31)
/* 8037B568  48 2B 2F 09 */	bl sAdos_TTKK_ARM
/* 8037B56C  88 1F 00 01 */	lbz r0, 1(r31)
/* 8037B570  28 00 00 00 */	cmplwi r0, 0
/* 8037B574  40 82 00 10 */	bne lbl_8037B584
/* 8037B578  48 00 12 E1 */	bl mBGMPsComp_arm_delete
/* 8037B57C  48 00 00 08 */	b lbl_8037B584
lbl_8037B580:
/* 8037B580  48 00 12 D9 */	bl mBGMPsComp_arm_delete
lbl_8037B584:
/* 8037B584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037B588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037B58C  7C 08 03 A6 */	mtlr r0
/* 8037B590  38 21 00 10 */	addi r1, r1, 0x10
/* 8037B594  4E 80 00 20 */	blr 
