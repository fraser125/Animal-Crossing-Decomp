lbl_803DC110:
/* 803DC110  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DC114  7C 08 02 A6 */	mflr r0
/* 803DC118  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DC11C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DC120  4B CB ED B5 */	bl func_8009AED4
/* 803DC124  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DC128  7C 7D 1B 78 */	mr r29, r3
/* 803DC12C  38 65 52 F0 */	addi r3, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC130  7C 9E 23 78 */	mr r30, r4
/* 803DC134  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC138  4B FF D5 09 */	bl get_player_actor_withoutCheck
/* 803DC13C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DC140  7C 7F 1B 78 */	mr r31, r3
/* 803DC144  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC148  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC14C  4B FF D4 F5 */	bl get_player_actor_withoutCheck
/* 803DC150  81 83 13 38 */	lwz r12, 0x1338(r3)
/* 803DC154  7F E3 FB 78 */	mr r3, r31
/* 803DC158  7F A4 EB 78 */	mr r4, r29
/* 803DC15C  7F C5 F3 78 */	mr r5, r30
/* 803DC160  7D 89 03 A6 */	mtctr r12
/* 803DC164  4E 80 04 21 */	bctrl 
/* 803DC168  39 61 00 20 */	addi r11, r1, 0x20
/* 803DC16C  4B CB ED B5 */	bl func_8009AF20
/* 803DC170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DC174  7C 08 03 A6 */	mtlr r0
/* 803DC178  38 21 00 20 */	addi r1, r1, 0x20
/* 803DC17C  4E 80 00 20 */	blr 
