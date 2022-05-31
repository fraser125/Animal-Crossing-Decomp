lbl_805406C8:
/* 805406C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805406CC  7C 08 02 A6 */	mflr r0
/* 805406D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805406D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805406D8  4B B5 A7 FD */	bl func_8009AED4
/* 805406DC  7C 7D 1B 78 */	mr r29, r3
/* 805406E0  88 03 07 45 */	lbz r0, 0x745(r3)
/* 805406E4  28 00 00 03 */	cmplwi r0, 3
/* 805406E8  40 82 00 08 */	bne lbl_805406F0
/* 805406EC  4B FF FF 9D */	bl aNPC_act_get_putaway
lbl_805406F0:
/* 805406F0  3C 80 80 65 */	lis r4, lit_2339@ha /* 0x80649420@ha */
/* 805406F4  38 7D 01 A8 */	addi r3, r29, 0x1a8
/* 805406F8  C0 24 94 20 */	lfs f1, lit_2339@l(r4)  /* 0x80649420@l */
/* 805406FC  4B E2 FD 8D */	bl cKF_FrameControl_passCheck_now
/* 80540700  2C 03 00 01 */	cmpwi r3, 1
/* 80540704  40 82 00 0C */	bne lbl_80540710
/* 80540708  38 00 00 01 */	li r0, 1
/* 8054070C  98 1D 07 45 */	stb r0, 0x745(r29)
lbl_80540710:
/* 80540710  88 1D 07 45 */	lbz r0, 0x745(r29)
/* 80540714  2C 00 00 02 */	cmpwi r0, 2
/* 80540718  41 82 00 24 */	beq lbl_8054073C
/* 8054071C  40 80 00 60 */	bge lbl_8054077C
/* 80540720  2C 00 00 01 */	cmpwi r0, 1
/* 80540724  40 80 00 08 */	bge lbl_8054072C
/* 80540728  48 00 00 54 */	b lbl_8054077C
lbl_8054072C:
/* 8054072C  7F A3 EB 78 */	mr r3, r29
/* 80540730  4B FF A9 91 */	bl aNPC_cancel_cloth_data
/* 80540734  38 00 00 02 */	li r0, 2
/* 80540738  98 1D 07 45 */	stb r0, 0x745(r29)
lbl_8054073C:
/* 8054073C  7F A3 EB 78 */	mr r3, r29
/* 80540740  4B FF AB F9 */	bl aNPC_change_cloth_data
/* 80540744  2C 03 00 01 */	cmpwi r3, 1
/* 80540748  40 82 00 34 */	bne lbl_8054077C
/* 8054074C  A3 FD 07 48 */	lhz r31, 0x748(r29)
/* 80540750  7F A3 EB 78 */	mr r3, r29
/* 80540754  8B DD 07 4B */	lbz r30, 0x74b(r29)
/* 80540758  7F E4 FB 78 */	mr r4, r31
/* 8054075C  7F C5 F3 78 */	mr r5, r30
/* 80540760  4B FF AC CD */	bl aNPC_setup_next_cloth
/* 80540764  7F A3 EB 78 */	mr r3, r29
/* 80540768  7F E4 FB 78 */	mr r4, r31
/* 8054076C  7F C5 F3 78 */	mr r5, r30
/* 80540770  4B FF AC C9 */	bl aNPC_setup_cloth
/* 80540774  38 00 00 03 */	li r0, 3
/* 80540778  98 1D 07 45 */	stb r0, 0x745(r29)
lbl_8054077C:
/* 8054077C  39 61 00 20 */	addi r11, r1, 0x20
/* 80540780  4B B5 A7 A1 */	bl func_8009AF20
/* 80540784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80540788  7C 08 03 A6 */	mtlr r0
/* 8054078C  38 21 00 20 */	addi r1, r1, 0x20
/* 80540790  4E 80 00 20 */	blr 
