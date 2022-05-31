lbl_8056D718:
/* 8056D718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D71C  7C 08 02 A6 */	mflr r0
/* 8056D720  38 A0 00 0E */	li r5, 0xe
/* 8056D724  38 C0 00 00 */	li r6, 0
/* 8056D728  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D72C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056D730  3B E4 1D EC */	addi r31, r4, 0x1dec
/* 8056D734  38 80 00 01 */	li r4, 1
/* 8056D738  7F E3 FB 78 */	mr r3, r31
/* 8056D73C  4B E8 1F A1 */	bl mSM_open_submenu
/* 8056D740  38 7F 00 38 */	addi r3, r31, 0x38
/* 8056D744  4B E4 EF BD */	bl mMl_clear_mail
/* 8056D748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D74C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056D750  7C 08 03 A6 */	mtlr r0
/* 8056D754  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D758  4E 80 00 20 */	blr 
