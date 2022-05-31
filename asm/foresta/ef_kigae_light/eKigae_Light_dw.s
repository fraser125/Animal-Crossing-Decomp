lbl_80613A74:
/* 80613A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80613A78  7C 08 02 A6 */	mflr r0
/* 80613A7C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80613A80  7C 67 1B 78 */	mr r7, r3
/* 80613A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80613A88  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80613A8C  7C 83 23 78 */	mr r3, r4
/* 80613A90  38 87 00 10 */	addi r4, r7, 0x10
/* 80613A94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80613A98  3C A5 00 02 */	addis r5, r5, 2
/* 80613A9C  80 C5 60 9C */	lwz r6, 0x609c(r5)
/* 80613AA0  38 A7 00 34 */	addi r5, r7, 0x34
/* 80613AA4  83 E3 00 00 */	lwz r31, 0(r3)
/* 80613AA8  81 86 00 18 */	lwz r12, 0x18(r6)
/* 80613AAC  7D 89 03 A6 */	mtctr r12
/* 80613AB0  4E 80 04 21 */	bctrl 
/* 80613AB4  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 80613AB8  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 80613ABC  3C A0 80 CC */	lis r5, ef_takurami01_normal_render_mode@ha /* 0x80CC0590@ha */
/* 80613AC0  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80613AC4  38 08 00 08 */	addi r0, r8, 8
/* 80613AC8  3C 60 80 CC */	lis r3, ef_takurami01_kira_modelT@ha /* 0x80CC0400@ha */
/* 80613ACC  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80613AD0  38 06 00 20 */	addi r0, r6, 0x0020 /* 0xDB060020@l */
/* 80613AD4  38 E5 05 90 */	addi r7, r5, ef_takurami01_normal_render_mode@l /* 0x80CC0590@l */
/* 80613AD8  38 C4 00 FF */	addi r6, r4, 0x00FF /* 0xFA0000FF@l */
/* 80613ADC  90 08 00 00 */	stw r0, 0(r8)
/* 80613AE0  38 A0 FF FF */	li r5, -1
/* 80613AE4  3C 80 DE 00 */	lis r4, 0xde00
/* 80613AE8  38 03 04 00 */	addi r0, r3, ef_takurami01_kira_modelT@l /* 0x80CC0400@l */
/* 80613AEC  90 E8 00 04 */	stw r7, 4(r8)
/* 80613AF0  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80613AF4  38 67 00 08 */	addi r3, r7, 8
/* 80613AF8  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80613AFC  90 C7 00 00 */	stw r6, 0(r7)
/* 80613B00  90 A7 00 04 */	stw r5, 4(r7)
/* 80613B04  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80613B08  38 65 00 08 */	addi r3, r5, 8
/* 80613B0C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80613B10  90 85 00 00 */	stw r4, 0(r5)
/* 80613B14  90 05 00 04 */	stw r0, 4(r5)
/* 80613B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80613B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80613B20  7C 08 03 A6 */	mtlr r0
/* 80613B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80613B28  4E 80 00 20 */	blr 
