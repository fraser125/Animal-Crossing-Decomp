lbl_804DEC8C:
/* 804DEC8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DEC90  7C 08 02 A6 */	mflr r0
/* 804DEC94  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DEC98  39 61 00 20 */	addi r11, r1, 0x20
/* 804DEC9C  4B BB C2 35 */	bl func_8009AED0
/* 804DECA0  7C 9C 23 78 */	mr r28, r4
/* 804DECA4  7C 7F 1B 78 */	mr r31, r3
/* 804DECA8  7F 80 07 75 */	extsb. r0, r28
/* 804DECAC  83 A3 12 38 */	lwz r29, 0x1238(r3)
/* 804DECB0  3B DF 12 2C */	addi r30, r31, 0x122c
/* 804DECB4  41 80 00 6C */	blt lbl_804DED20
/* 804DECB8  7F C4 F3 78 */	mr r4, r30
/* 804DECBC  7F A5 EB 78 */	mr r5, r29
/* 804DECC0  38 60 00 00 */	li r3, 0
/* 804DECC4  4B FF FF 81 */	bl Player_actor_Get_RadioExerciseCommand
/* 804DECC8  7C 63 07 74 */	extsb r3, r3
/* 804DECCC  7F 80 07 74 */	extsb r0, r28
/* 804DECD0  7C 03 00 00 */	cmpw r3, r0
/* 804DECD4  40 82 00 4C */	bne lbl_804DED20
/* 804DECD8  88 DF 12 34 */	lbz r6, 0x1234(r31)
/* 804DECDC  3C 00 43 30 */	lis r0, 0x4330
/* 804DECE0  3C 80 80 64 */	lis r4, lit_1627@ha /* 0x80646A54@ha */
/* 804DECE4  3C 60 80 64 */	lis r3, lit_5205@ha /* 0x80647CE0@ha */
/* 804DECE8  7C C5 07 74 */	extsb r5, r6
/* 804DECEC  90 01 00 08 */	stw r0, 8(r1)
/* 804DECF0  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 804DECF4  C8 44 6A 54 */	lfd f2, lit_1627@l(r4)  /* 0x80646A54@l */
/* 804DECF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DECFC  C0 03 7C E0 */	lfs f0, lit_5205@l(r3)  /* 0x80647CE0@l */
/* 804DED00  C8 21 00 08 */	lfd f1, 8(r1)
/* 804DED04  EC 21 10 28 */	fsubs f1, f1, f2
/* 804DED08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DED0C  4C 41 13 82 */	cror 2, 1, 2
/* 804DED10  41 82 00 10 */	beq lbl_804DED20
/* 804DED14  38 06 00 01 */	addi r0, r6, 1
/* 804DED18  98 1F 12 34 */	stb r0, 0x1234(r31)
/* 804DED1C  48 00 00 30 */	b lbl_804DED4C
lbl_804DED20:
/* 804DED20  7F A4 EB 78 */	mr r4, r29
/* 804DED24  38 60 00 07 */	li r3, 7
/* 804DED28  4B FF FF 09 */	bl Player_actor_Get_RadioExerciseCommandRingBufferIndex
/* 804DED2C  7C 60 1B 78 */	mr r0, r3
/* 804DED30  38 60 00 00 */	li r3, 0
/* 804DED34  7C 04 03 78 */	mr r4, r0
/* 804DED38  90 9F 12 38 */	stw r4, 0x1238(r31)
/* 804DED3C  4B FF FE F5 */	bl Player_actor_Get_RadioExerciseCommandRingBufferIndex
/* 804DED40  7F 9E 19 AE */	stbx r28, r30, r3
/* 804DED44  38 00 00 00 */	li r0, 0
/* 804DED48  98 1F 12 34 */	stb r0, 0x1234(r31)
lbl_804DED4C:
/* 804DED4C  39 61 00 20 */	addi r11, r1, 0x20
/* 804DED50  4B BB C1 CD */	bl func_8009AF1C
/* 804DED54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DED58  7C 08 03 A6 */	mtlr r0
/* 804DED5C  38 21 00 20 */	addi r1, r1, 0x20
/* 804DED60  4E 80 00 20 */	blr 
