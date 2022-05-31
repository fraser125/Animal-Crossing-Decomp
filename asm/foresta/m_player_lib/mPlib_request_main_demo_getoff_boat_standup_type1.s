lbl_803DAB9C:
/* 803DAB9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DABA0  7C 08 02 A6 */	mflr r0
/* 803DABA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DABA8  39 61 00 20 */	addi r11, r1, 0x20
/* 803DABAC  4B CC 03 29 */	bl func_8009AED4
/* 803DABB0  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DABB4  7C 7D 1B 78 */	mr r29, r3
/* 803DABB8  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 803DABBC  7C 9E 23 78 */	mr r30, r4
/* 803DABC0  7F E3 FB 78 */	mr r3, r31
/* 803DABC4  4B FF EA 7D */	bl get_player_actor_withoutCheck
/* 803DABC8  81 83 12 F0 */	lwz r12, 0x12f0(r3)
/* 803DABCC  7F E3 FB 78 */	mr r3, r31
/* 803DABD0  7F A4 EB 78 */	mr r4, r29
/* 803DABD4  7F C5 F3 78 */	mr r5, r30
/* 803DABD8  38 C0 00 13 */	li r6, 0x13
/* 803DABDC  7D 89 03 A6 */	mtctr r12
/* 803DABE0  4E 80 04 21 */	bctrl 
/* 803DABE4  39 61 00 20 */	addi r11, r1, 0x20
/* 803DABE8  4B CC 03 39 */	bl func_8009AF20
/* 803DABEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DABF0  7C 08 03 A6 */	mtlr r0
/* 803DABF4  38 21 00 20 */	addi r1, r1, 0x20
/* 803DABF8  4E 80 00 20 */	blr 
