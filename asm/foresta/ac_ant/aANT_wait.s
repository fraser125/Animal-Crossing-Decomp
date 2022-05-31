lbl_8050C378:
/* 8050C378  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050C37C  7C 08 02 A6 */	mflr r0
/* 8050C380  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050C384  39 61 00 30 */	addi r11, r1, 0x30
/* 8050C388  4B B8 EB 4D */	bl func_8009AED4
/* 8050C38C  7C 7F 1B 78 */	mr r31, r3
/* 8050C390  80 63 01 88 */	lwz r3, 0x188(r3)
/* 8050C394  28 03 00 00 */	cmplwi r3, 0
/* 8050C398  41 82 00 18 */	beq lbl_8050C3B0
/* 8050C39C  A0 03 00 00 */	lhz r0, 0(r3)
/* 8050C3A0  28 00 28 06 */	cmplwi r0, 0x2806
/* 8050C3A4  41 82 00 1C */	beq lbl_8050C3C0
/* 8050C3A8  28 00 2F 03 */	cmplwi r0, 0x2f03
/* 8050C3AC  41 82 00 14 */	beq lbl_8050C3C0
lbl_8050C3B0:
/* 8050C3B0  7F E3 FB 78 */	mr r3, r31
/* 8050C3B4  38 80 00 02 */	li r4, 2
/* 8050C3B8  48 00 02 7D */	bl aANT_setupAction
/* 8050C3BC  48 00 01 20 */	b lbl_8050C4DC
lbl_8050C3C0:
/* 8050C3C0  4B EC FC F9 */	bl mPlib_Get_item_net_catch_label
/* 8050C3C4  7C 1F 18 40 */	cmplw r31, r3
/* 8050C3C8  40 82 00 14 */	bne lbl_8050C3DC
/* 8050C3CC  7F E3 FB 78 */	mr r3, r31
/* 8050C3D0  38 80 00 01 */	li r4, 1
/* 8050C3D4  48 00 02 61 */	bl aANT_setupAction
/* 8050C3D8  48 00 01 04 */	b lbl_8050C4DC
lbl_8050C3DC:
/* 8050C3DC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8050C3E0  83 A3 52 F0 */	lwz r29, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8050C3E4  7F A3 EB 78 */	mr r3, r29
/* 8050C3E8  4B EC D2 59 */	bl get_player_actor_withoutCheck
/* 8050C3EC  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8050C3F0  7C 7E 1B 78 */	mr r30, r3
/* 8050C3F4  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8050C3F8  80 63 00 00 */	lwz r3, 0(r3)
/* 8050C3FC  4B EC D2 45 */	bl get_player_actor_withoutCheck
/* 8050C400  81 83 13 08 */	lwz r12, 0x1308(r3)
/* 8050C404  7F C3 F3 78 */	mr r3, r30
/* 8050C408  7F A4 EB 78 */	mr r4, r29
/* 8050C40C  7D 89 03 A6 */	mtctr r12
/* 8050C410  4E 80 04 21 */	bctrl 
/* 8050C414  3C 60 80 65 */	lis r3, lit_474@ha /* 0x80648E5C@ha */
/* 8050C418  C0 03 8E 5C */	lfs f0, lit_474@l(r3)  /* 0x80648E5C@l */
/* 8050C41C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050C420  41 81 00 14 */	bgt lbl_8050C434
/* 8050C424  38 61 00 08 */	addi r3, r1, 8
/* 8050C428  4B EC FC 29 */	bl mPlib_Check_StopNet
/* 8050C42C  2C 03 00 00 */	cmpwi r3, 0
/* 8050C430  41 82 00 5C */	beq lbl_8050C48C
lbl_8050C434:
/* 8050C434  3C 60 80 65 */	lis r3, lit_475@ha /* 0x80648E60@ha */
/* 8050C438  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8050C43C  C0 03 8E 60 */	lfs f0, lit_475@l(r3)  /* 0x80648E60@l */
/* 8050C440  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050C444  40 80 00 48 */	bge lbl_8050C48C
/* 8050C448  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8050C44C  83 A3 52 F0 */	lwz r29, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8050C450  7F A3 EB 78 */	mr r3, r29
/* 8050C454  4B EC D1 ED */	bl get_player_actor_withoutCheck
/* 8050C458  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8050C45C  7C 7E 1B 78 */	mr r30, r3
/* 8050C460  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8050C464  80 63 00 00 */	lwz r3, 0(r3)
/* 8050C468  4B EC D1 D9 */	bl get_player_actor_withoutCheck
/* 8050C46C  81 83 13 0C */	lwz r12, 0x130c(r3)
/* 8050C470  7F C3 F3 78 */	mr r3, r30
/* 8050C474  7F A4 EB 78 */	mr r4, r29
/* 8050C478  7F E5 FB 78 */	mr r5, r31
/* 8050C47C  38 C0 00 01 */	li r6, 1
/* 8050C480  7D 89 03 A6 */	mtctr r12
/* 8050C484  4E 80 04 21 */	bctrl 
/* 8050C488  48 00 00 54 */	b lbl_8050C4DC
lbl_8050C48C:
/* 8050C48C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8050C490  83 A3 52 F0 */	lwz r29, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8050C494  7F A3 EB 78 */	mr r3, r29
/* 8050C498  4B EC D1 A9 */	bl get_player_actor_withoutCheck
/* 8050C49C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8050C4A0  7C 7E 1B 78 */	mr r30, r3
/* 8050C4A4  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8050C4A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8050C4AC  4B EC D1 95 */	bl get_player_actor_withoutCheck
/* 8050C4B0  81 83 13 04 */	lwz r12, 0x1304(r3)
/* 8050C4B4  3C 60 80 65 */	lis r3, lit_476@ha /* 0x80648E64@ha */
/* 8050C4B8  38 C3 8E 64 */	addi r6, r3, lit_476@l /* 0x80648E64@l */
/* 8050C4BC  7F A4 EB 78 */	mr r4, r29
/* 8050C4C0  C0 26 00 00 */	lfs f1, 0(r6)
/* 8050C4C4  7F C3 F3 78 */	mr r3, r30
/* 8050C4C8  7F E5 FB 78 */	mr r5, r31
/* 8050C4CC  38 FF 00 28 */	addi r7, r31, 0x28
/* 8050C4D0  38 C0 00 01 */	li r6, 1
/* 8050C4D4  7D 89 03 A6 */	mtctr r12
/* 8050C4D8  4E 80 04 21 */	bctrl 
lbl_8050C4DC:
/* 8050C4DC  39 61 00 30 */	addi r11, r1, 0x30
/* 8050C4E0  4B B8 EA 41 */	bl func_8009AF20
/* 8050C4E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050C4E8  7C 08 03 A6 */	mtlr r0
/* 8050C4EC  38 21 00 30 */	addi r1, r1, 0x30
/* 8050C4F0  4E 80 00 20 */	blr 
