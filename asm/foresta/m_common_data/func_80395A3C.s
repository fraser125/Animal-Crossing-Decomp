lbl_80395A3C:
/* 80395A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80395A40  7C 08 02 A6 */	mflr r0
/* 80395A44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80395A48  3C 80 00 03 */	lis r4, 0x0003 /* 0x0002DC00@ha */
/* 80395A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80395A50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80395A54  38 84 DC 00 */	addi r4, r4, 0xDC00 /* 0x0002DC00@l */
/* 80395A58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80395A5C  3F E3 00 03 */	addis r31, r3, 3
/* 80395A60  93 C1 00 08 */	stw r30, 8(r1)
/* 80395A64  8B DF 88 A0 */	lbz r30, -0x7760(r31)
/* 80395A68  4B CC 76 01 */	bl bzero
/* 80395A6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80395A70  38 00 00 FF */	li r0, 0xff
/* 80395A74  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80395A78  38 C0 00 01 */	li r6, 1
/* 80395A7C  3C E3 00 02 */	addis r7, r3, 2
/* 80395A80  38 A0 FF FF */	li r5, -1
/* 80395A84  98 07 61 4F */	stb r0, 0x614f(r7)
/* 80395A88  3C 83 00 03 */	addis r4, r3, 3
/* 80395A8C  38 00 00 F6 */	li r0, 0xf6
/* 80395A90  98 C7 60 00 */	stb r6, 0x6000(r7)
/* 80395A94  90 A7 60 04 */	stw r5, 0x6004(r7)
/* 80395A98  B0 04 85 92 */	sth r0, -0x7a6e(r4)
/* 80395A9C  B0 04 85 94 */	sth r0, -0x7a6c(r4)
/* 80395AA0  9B DF 88 A0 */	stb r30, -0x7760(r31)
/* 80395AA4  48 01 6B 81 */	bl mFRm_ClearSaveCheckData
/* 80395AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80395AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80395AB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80395AB4  7C 08 03 A6 */	mtlr r0
/* 80395AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80395ABC  4E 80 00 20 */	blr 
