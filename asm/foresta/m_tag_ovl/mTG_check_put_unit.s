lbl_805F2304:
/* 805F2304  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F2308  7C 08 02 A6 */	mflr r0
/* 805F230C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F2310  39 61 00 30 */	addi r11, r1, 0x30
/* 805F2314  4B AA 8B C1 */	bl func_8009AED4
/* 805F2318  7C 7D 1B 78 */	mr r29, r3
/* 805F231C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805F2320  80 BD 00 00 */	lwz r5, 0(r29)
/* 805F2324  38 83 52 F0 */	addi r4, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805F2328  80 1D 00 04 */	lwz r0, 4(r29)
/* 805F232C  38 61 00 0C */	addi r3, r1, 0xc
/* 805F2330  83 E4 00 00 */	lwz r31, 0(r4)
/* 805F2334  38 81 00 08 */	addi r4, r1, 8
/* 805F2338  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805F233C  38 A1 00 10 */	addi r5, r1, 0x10
/* 805F2340  3B C0 00 01 */	li r30, 1
/* 805F2344  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F2348  80 1D 00 08 */	lwz r0, 8(r29)
/* 805F234C  90 01 00 18 */	stw r0, 0x18(r1)
/* 805F2350  4B DB 30 19 */	bl mFI_Wpos2UtNum
/* 805F2354  7F E3 FB 78 */	mr r3, r31
/* 805F2358  7F A4 EB 78 */	mr r4, r29
/* 805F235C  4B E0 51 51 */	bl mRlib_snowman_ball_unit_check_from_pos
/* 805F2360  2C 03 00 00 */	cmpwi r3, 0
/* 805F2364  41 82 00 0C */	beq lbl_805F2370
/* 805F2368  3B C0 00 00 */	li r30, 0
/* 805F236C  48 00 00 38 */	b lbl_805F23A4
lbl_805F2370:
/* 805F2370  7F A3 EB 78 */	mr r3, r29
/* 805F2374  4B D9 E5 5D */	bl mCoBG_CheckAcceptDesignSign
/* 805F2378  2C 03 00 00 */	cmpwi r3, 0
/* 805F237C  40 82 00 0C */	bne lbl_805F2388
/* 805F2380  3B C0 00 00 */	li r30, 0
/* 805F2384  48 00 00 20 */	b lbl_805F23A4
lbl_805F2388:
/* 805F2388  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805F238C  80 81 00 08 */	lwz r4, 8(r1)
/* 805F2390  4B DB 42 61 */	bl mFI_UtNum2UtCol
/* 805F2394  4B D9 DE F5 */	bl mCoBG_GetHoleNumber_ClData
/* 805F2398  2C 03 00 00 */	cmpwi r3, 0
/* 805F239C  40 81 00 08 */	ble lbl_805F23A4
/* 805F23A0  3B C0 00 00 */	li r30, 0
lbl_805F23A4:
/* 805F23A4  7F C3 F3 78 */	mr r3, r30
/* 805F23A8  39 61 00 30 */	addi r11, r1, 0x30
/* 805F23AC  4B AA 8B 75 */	bl func_8009AF20
/* 805F23B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F23B4  7C 08 03 A6 */	mtlr r0
/* 805F23B8  38 21 00 30 */	addi r1, r1, 0x30
/* 805F23BC  4E 80 00 20 */	blr 
