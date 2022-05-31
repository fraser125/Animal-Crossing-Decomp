lbl_8038C300:
/* 8038C300  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038C304  7C 08 02 A6 */	mflr r0
/* 8038C308  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038C30C  39 61 00 20 */	addi r11, r1, 0x20
/* 8038C310  4B D0 EB C1 */	bl func_8009AED0
/* 8038C314  7C 9D 23 78 */	mr r29, r4
/* 8038C318  7C 7C 1B 78 */	mr r28, r3
/* 8038C31C  80 64 00 00 */	lwz r3, 0(r4)
/* 8038C320  7C BE 2B 78 */	mr r30, r5
/* 8038C324  7C DF 33 78 */	mr r31, r6
/* 8038C328  4B FF F2 85 */	bl mCoBG_SearchSlateDetail
/* 8038C32C  98 7C 00 2A */	stb r3, 0x2a(r28)
/* 8038C330  7F 83 E3 78 */	mr r3, r28
/* 8038C334  7F A4 EB 78 */	mr r4, r29
/* 8038C338  7F E6 FB 78 */	mr r6, r31
/* 8038C33C  88 BC 00 2A */	lbz r5, 0x2a(r28)
/* 8038C340  4B FF F5 61 */	bl mCoBG_GetUnitVecInf_SlatingWall
/* 8038C344  38 00 00 00 */	li r0, 0
/* 8038C348  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 8038C34C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8038C350  38 03 00 01 */	addi r0, r3, 1
/* 8038C354  90 1E 00 00 */	stw r0, 0(r30)
/* 8038C358  39 61 00 20 */	addi r11, r1, 0x20
/* 8038C35C  4B D0 EB C1 */	bl func_8009AF1C
/* 8038C360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038C364  7C 08 03 A6 */	mtlr r0
/* 8038C368  38 21 00 20 */	addi r1, r1, 0x20
/* 8038C36C  4E 80 00 20 */	blr 
