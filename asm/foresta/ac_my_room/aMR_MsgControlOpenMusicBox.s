lbl_8047530C:
/* 8047530C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80475310  7C 08 02 A6 */	mflr r0
/* 80475314  90 01 00 24 */	stw r0, 0x24(r1)
/* 80475318  39 61 00 20 */	addi r11, r1, 0x20
/* 8047531C  4B C2 5B B9 */	bl func_8009AED4
/* 80475320  7C 7E 1B 78 */	mr r30, r3
/* 80475324  7C 9D 23 78 */	mr r29, r4
/* 80475328  4B FF EE 05 */	bl aMR_GetNowDemoFtr
/* 8047532C  7C 7F 1B 78 */	mr r31, r3
/* 80475330  3B BD 1D EC */	addi r29, r29, 0x1dec
/* 80475334  4B F2 50 05 */	bl mDemo_CheckDemo
/* 80475338  2C 03 00 00 */	cmpwi r3, 0
/* 8047533C  40 82 00 60 */	bne lbl_8047539C
/* 80475340  A0 7F 08 44 */	lhz r3, 0x844(r31)
/* 80475344  38 00 00 00 */	li r0, 0
/* 80475348  28 03 2A 00 */	cmplwi r3, 0x2a00
/* 8047534C  41 80 00 10 */	blt lbl_8047535C
/* 80475350  28 03 2A 37 */	cmplwi r3, 0x2a37
/* 80475354  40 80 00 08 */	bge lbl_8047535C
/* 80475358  38 00 00 01 */	li r0, 1
lbl_8047535C:
/* 8047535C  2C 00 00 00 */	cmpwi r0, 0
/* 80475360  3B E0 FF FF */	li r31, -1
/* 80475364  41 82 00 0C */	beq lbl_80475370
/* 80475368  38 03 D6 00 */	addi r0, r3, -10752
/* 8047536C  54 1F 04 3E */	clrlwi r31, r0, 0x10
lbl_80475370:
/* 80475370  7F C3 F3 78 */	mr r3, r30
/* 80475374  4B FF EE B9 */	bl aMR_MemoryMusicBoxStatus
/* 80475378  7F A3 EB 78 */	mr r3, r29
/* 8047537C  7F E5 FB 78 */	mr r5, r31
/* 80475380  38 80 00 15 */	li r4, 0x15
/* 80475384  38 C0 00 00 */	li r6, 0
/* 80475388  4B F7 A3 55 */	bl mSM_open_submenu
/* 8047538C  4B F0 E1 B5 */	bl func_80383540
/* 80475390  4B F0 E7 E5 */	bl mChoice_Clear_ChoseNum
/* 80475394  38 00 00 21 */	li r0, 0x21
/* 80475398  B0 1E 03 EE */	sth r0, 0x3ee(r30)
lbl_8047539C:
/* 8047539C  39 61 00 20 */	addi r11, r1, 0x20
/* 804753A0  4B C2 5B 81 */	bl func_8009AF20
/* 804753A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804753A8  7C 08 03 A6 */	mtlr r0
/* 804753AC  38 21 00 20 */	addi r1, r1, 0x20
/* 804753B0  4E 80 00 20 */	blr 
