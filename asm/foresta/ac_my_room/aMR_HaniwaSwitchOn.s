lbl_804715EC:
/* 804715EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804715F0  7C 08 02 A6 */	mflr r0
/* 804715F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804715F8  39 61 00 20 */	addi r11, r1, 0x20
/* 804715FC  4B C2 98 D9 */	bl func_8009AED4
/* 80471600  7C 7D 1B 78 */	mr r29, r3
/* 80471604  7C 9E 23 78 */	mr r30, r4
/* 80471608  4B FF FE C5 */	bl aMR_GetHaniwaSwitchVac
/* 8047160C  2C 03 FF FF */	cmpwi r3, -1
/* 80471610  3B FD 04 2C */	addi r31, r29, 0x42c
/* 80471614  40 82 00 54 */	bne lbl_80471668
/* 80471618  80 BF 00 00 */	lwz r5, 0(r31)
/* 8047161C  2C 05 00 00 */	cmpwi r5, 0
/* 80471620  41 80 00 60 */	blt lbl_80471680
/* 80471624  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80471628  38 80 00 01 */	li r4, 1
/* 8047162C  80 C3 DF E8 */	lwz r6, data_811CDFE8@l(r3)  /* 0x811CDFE8@l */
/* 80471630  1C A5 08 58 */	mulli r5, r5, 0x858
/* 80471634  38 00 00 00 */	li r0, 0
/* 80471638  7F A3 EB 78 */	mr r3, r29
/* 8047163C  7C A6 2A 14 */	add r5, r6, r5
/* 80471640  98 85 01 2D */	stb r4, 0x12d(r5)
/* 80471644  98 05 01 2C */	stb r0, 0x12c(r5)
/* 80471648  80 85 00 04 */	lwz r4, 4(r5)
/* 8047164C  4B FF FF 19 */	bl aMR_HaniwaOffReport
/* 80471650  38 00 00 01 */	li r0, 1
/* 80471654  98 1E 01 2D */	stb r0, 0x12d(r30)
/* 80471658  98 1E 01 2C */	stb r0, 0x12c(r30)
/* 8047165C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80471660  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80471664  48 00 00 1C */	b lbl_80471680
lbl_80471668:
/* 80471668  38 80 00 01 */	li r4, 1
/* 8047166C  54 60 10 3A */	slwi r0, r3, 2
/* 80471670  98 9E 01 2D */	stb r4, 0x12d(r30)
/* 80471674  98 9E 01 2C */	stb r4, 0x12c(r30)
/* 80471678  80 7E 00 04 */	lwz r3, 4(r30)
/* 8047167C  7C 7F 01 2E */	stwx r3, r31, r0
lbl_80471680:
/* 80471680  39 61 00 20 */	addi r11, r1, 0x20
/* 80471684  4B C2 98 9D */	bl func_8009AF20
/* 80471688  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047168C  7C 08 03 A6 */	mtlr r0
/* 80471690  38 21 00 20 */	addi r1, r1, 0x20
/* 80471694  4E 80 00 20 */	blr 
