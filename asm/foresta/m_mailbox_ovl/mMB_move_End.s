lbl_805E5704:
/* 805E5704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E5708  7C 08 02 A6 */	mflr r0
/* 805E570C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E5710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E5714  7C 9F 23 78 */	mr r31, r4
/* 805E5718  93 C1 00 08 */	stw r30, 8(r1)
/* 805E571C  7C 7E 1B 78 */	mr r30, r3
/* 805E5720  4B DF 47 85 */	bl mPlib_request_main_mail_land_from_submenu
/* 805E5724  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E5728  7F C3 F3 78 */	mr r3, r30
/* 805E572C  7F E4 FB 78 */	mr r4, r31
/* 805E5730  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805E5734  7D 89 03 A6 */	mtctr r12
/* 805E5738  4E 80 04 21 */	bctrl 
/* 805E573C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E5740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E5744  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E5748  7C 08 03 A6 */	mtlr r0
/* 805E574C  38 21 00 10 */	addi r1, r1, 0x10
/* 805E5750  4E 80 00 20 */	blr 
