lbl_80574668:
/* 80574668  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057466C  7C 08 02 A6 */	mflr r0
/* 80574670  90 01 00 24 */	stw r0, 0x24(r1)
/* 80574674  39 61 00 20 */	addi r11, r1, 0x20
/* 80574678  4B B2 68 5D */	bl func_8009AED4
/* 8057467C  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 80574680  7C 7D 1B 78 */	mr r29, r3
/* 80574684  1C E0 00 14 */	mulli r7, r0, 0x14
/* 80574688  3C C0 80 6C */	lis r6, dt_tbl_614@ha /* 0x806BF6E4@ha */
/* 8057468C  98 A3 09 94 */	stb r5, 0x994(r3)
/* 80574690  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80574694  38 06 F6 E4 */	addi r0, r6, dt_tbl_614@l /* 0x806BF6E4@l */
/* 80574698  7F E0 3A 14 */	add r31, r0, r7
/* 8057469C  80 1F 00 00 */	lwz r0, 0(r31)
/* 805746A0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805746A4  3C C5 00 02 */	addis r6, r5, 2
/* 805746A8  7C 9E 23 78 */	mr r30, r4
/* 805746AC  90 03 09 98 */	stw r0, 0x998(r3)
/* 805746B0  38 A0 00 00 */	li r5, 0
/* 805746B4  80 1F 00 08 */	lwz r0, 8(r31)
/* 805746B8  90 03 09 64 */	stw r0, 0x964(r3)
/* 805746BC  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 805746C0  90 03 09 9C */	stw r0, 0x99c(r3)
/* 805746C4  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 805746C8  98 03 09 95 */	stb r0, 0x995(r3)
/* 805746CC  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 805746D0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 805746D4  81 86 01 14 */	lwz r12, 0x114(r6)
/* 805746D8  7D 89 03 A6 */	mtctr r12
/* 805746DC  4E 80 04 21 */	bctrl 
/* 805746E0  81 9F 00 04 */	lwz r12, 4(r31)
/* 805746E4  7F A3 EB 78 */	mr r3, r29
/* 805746E8  7F C4 F3 78 */	mr r4, r30
/* 805746EC  7D 89 03 A6 */	mtctr r12
/* 805746F0  4E 80 04 21 */	bctrl 
/* 805746F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805746F8  4B B2 68 29 */	bl func_8009AF20
/* 805746FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80574700  7C 08 03 A6 */	mtlr r0
/* 80574704  38 21 00 20 */	addi r1, r1, 0x20
/* 80574708  4E 80 00 20 */	blr 