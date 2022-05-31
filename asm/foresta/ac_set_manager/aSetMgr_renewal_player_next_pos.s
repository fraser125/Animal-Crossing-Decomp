lbl_80496A48:
/* 80496A48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80496A4C  7C 08 02 A6 */	mflr r0
/* 80496A50  90 01 00 34 */	stw r0, 0x34(r1)
/* 80496A54  39 61 00 30 */	addi r11, r1, 0x30
/* 80496A58  4B C0 44 7D */	bl func_8009AED4
/* 80496A5C  3C C0 80 64 */	lis r6, data_80644CCC@ha /* 0x80644CCC@ha */
/* 80496A60  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80496A64  38 E6 4C CC */	addi r7, r6, data_80644CCC@l /* 0x80644CCC@l */
/* 80496A68  7C 7D 1B 78 */	mr r29, r3
/* 80496A6C  38 65 52 F0 */	addi r3, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 80496A70  80 C7 00 00 */	lwz r6, 0(r7)
/* 80496A74  80 A7 00 04 */	lwz r5, 4(r7)
/* 80496A78  7C 9E 23 78 */	mr r30, r4
/* 80496A7C  80 07 00 08 */	lwz r0, 8(r7)
/* 80496A80  83 E3 00 00 */	lwz r31, 0(r3)
/* 80496A84  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80496A88  7F E3 FB 78 */	mr r3, r31
/* 80496A8C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80496A90  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80496A94  4B F4 2B AD */	bl get_player_actor_withoutCheck
/* 80496A98  81 83 13 18 */	lwz r12, 0x1318(r3)
/* 80496A9C  7F E3 FB 78 */	mr r3, r31
/* 80496AA0  38 81 00 14 */	addi r4, r1, 0x14
/* 80496AA4  7D 89 03 A6 */	mtctr r12
/* 80496AA8  4E 80 04 21 */	bctrl 
/* 80496AAC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80496AB0  7C 7F 1B 78 */	mr r31, r3
/* 80496AB4  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 80496AB8  7F A3 EB 78 */	mr r3, r29
/* 80496ABC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80496AC0  7F C4 F3 78 */	mr r4, r30
/* 80496AC4  90 A1 00 08 */	stw r5, 8(r1)
/* 80496AC8  38 A1 00 08 */	addi r5, r1, 8
/* 80496ACC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80496AD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80496AD4  4B F0 EC 8D */	bl mFI_Wpos2BlockNum
/* 80496AD8  7C 63 FB 78 */	or r3, r3, r31
/* 80496ADC  39 61 00 30 */	addi r11, r1, 0x30
/* 80496AE0  4B C0 44 41 */	bl func_8009AF20
/* 80496AE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80496AE8  7C 08 03 A6 */	mtlr r0
/* 80496AEC  38 21 00 30 */	addi r1, r1, 0x30
/* 80496AF0  4E 80 00 20 */	blr 
