lbl_8039D564:
/* 8039D564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039D568  7C 08 02 A6 */	mflr r0
/* 8039D56C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039D570  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039D574  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039D578  3C 63 00 02 */	addis r3, r3, 2
/* 8039D57C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039D580  93 C1 00 08 */	stw r30, 8(r1)
/* 8039D584  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 8039D588  2C 00 00 01 */	cmpwi r0, 1
/* 8039D58C  40 82 00 40 */	bne lbl_8039D5CC
/* 8039D590  3C 60 81 16 */	lis r3, index_today@ha /* 0x811677AC@ha */
/* 8039D594  3B E3 77 AC */	addi r31, r3, index_today@l /* 0x811677AC@l */
/* 8039D598  8B DF 00 23 */	lbz r30, 0x23(r31)
/* 8039D59C  28 1E 00 FF */	cmplwi r30, 0xff
/* 8039D5A0  41 82 00 2C */	beq lbl_8039D5CC
/* 8039D5A4  38 60 00 23 */	li r3, 0x23
/* 8039D5A8  38 80 00 01 */	li r4, 1
/* 8039D5AC  48 00 04 D5 */	bl mEv_clear_status
/* 8039D5B0  3C 60 81 16 */	lis r3, event_today@ha /* 0x811676AC@ha */
/* 8039D5B4  38 00 00 FF */	li r0, 0xff
/* 8039D5B8  57 C4 25 36 */	rlwinm r4, r30, 4, 0x14, 0x1b
/* 8039D5BC  38 A0 FF FF */	li r5, -1
/* 8039D5C0  38 63 76 AC */	addi r3, r3, event_today@l /* 0x811676AC@l */
/* 8039D5C4  98 1F 00 23 */	stb r0, 0x23(r31)
/* 8039D5C8  7C A3 21 2E */	stwx r5, r3, r4
lbl_8039D5CC:
/* 8039D5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039D5D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039D5D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039D5D8  7C 08 03 A6 */	mtlr r0
/* 8039D5DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8039D5E0  4E 80 00 20 */	blr 
