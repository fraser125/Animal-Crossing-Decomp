lbl_80554360:
/* 80554360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80554364  7C 08 02 A6 */	mflr r0
/* 80554368  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055436C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80554370  93 C1 00 08 */	stw r30, 8(r1)
/* 80554374  7C 7E 1B 78 */	mr r30, r3
/* 80554378  4B E6 B3 31 */	bl func_803BF6A8
/* 8055437C  7C 7F 1B 78 */	mr r31, r3
/* 80554380  4B E6 C9 C1 */	bl mMsg_Set_LockContinue
/* 80554384  7F E3 FB 78 */	mr r3, r31
/* 80554388  4B E6 B6 BD */	bl mMsg_request_main_disappear_wait_type1
/* 8055438C  38 00 00 06 */	li r0, 6
/* 80554390  90 1E 09 98 */	stw r0, 0x998(r30)
/* 80554394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80554398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055439C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805543A0  7C 08 03 A6 */	mtlr r0
/* 805543A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805543A8  4E 80 00 20 */	blr 
