lbl_8056D75C:
/* 8056D75C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D760  7C 08 02 A6 */	mflr r0
/* 8056D764  38 A0 00 07 */	li r5, 7
/* 8056D768  38 C0 00 00 */	li r6, 0
/* 8056D76C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D770  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056D774  3B E4 1D EC */	addi r31, r4, 0x1dec
/* 8056D778  38 80 00 01 */	li r4, 1
/* 8056D77C  7F E3 FB 78 */	mr r3, r31
/* 8056D780  4B E8 1F 5D */	bl mSM_open_submenu
/* 8056D784  38 7F 00 38 */	addi r3, r31, 0x38
/* 8056D788  4B E4 EF 79 */	bl mMl_clear_mail
/* 8056D78C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D790  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056D794  7C 08 03 A6 */	mtlr r0
/* 8056D798  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D79C  4E 80 00 20 */	blr 
