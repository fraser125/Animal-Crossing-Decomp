lbl_8057F814:
/* 8057F814  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057F818  7C 08 02 A6 */	mflr r0
/* 8057F81C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057F820  39 61 00 20 */	addi r11, r1, 0x20
/* 8057F824  4B B1 B6 B1 */	bl func_8009AED4
/* 8057F828  7C 9E 23 78 */	mr r30, r4
/* 8057F82C  7C 7D 1B 78 */	mr r29, r3
/* 8057F830  7F C3 F3 78 */	mr r3, r30
/* 8057F834  4B E5 9E 0D */	bl get_player_actor_withoutCheck
/* 8057F838  7C 7F 1B 78 */	mr r31, r3
/* 8057F83C  7F A3 EB 78 */	mr r3, r29
/* 8057F840  7F C4 F3 78 */	mr r4, r30
/* 8057F844  4B FF FF 55 */	bl aSTM_look_player
/* 8057F848  88 1D 09 A6 */	lbz r0, 0x9a6(r29)
/* 8057F84C  28 00 00 2F */	cmplwi r0, 0x2f
/* 8057F850  41 82 00 0C */	beq lbl_8057F85C
/* 8057F854  28 00 00 48 */	cmplwi r0, 0x48
/* 8057F858  40 82 00 5C */	bne lbl_8057F8B4
lbl_8057F85C:
/* 8057F85C  28 1F 00 00 */	cmplwi r31, 0
/* 8057F860  41 82 00 54 */	beq lbl_8057F8B4
/* 8057F864  3C 60 80 65 */	lis r3, data_80649A3C@ha /* 0x80649A3C@ha */
/* 8057F868  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8057F86C  C0 03 9A 3C */	lfs f0, data_80649A3C@l(r3)  /* 0x80649A3C@l */
/* 8057F870  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057F874  4C 41 13 82 */	cror 2, 1, 2
/* 8057F878  40 82 00 3C */	bne lbl_8057F8B4
/* 8057F87C  28 00 00 2F */	cmplwi r0, 0x2f
/* 8057F880  40 82 00 14 */	bne lbl_8057F894
/* 8057F884  38 60 00 2F */	li r3, 0x2f
/* 8057F888  38 80 03 84 */	li r4, 0x384
/* 8057F88C  4B DF CA F5 */	bl mBGMPsComp_delete_ps_happening
/* 8057F890  48 00 00 10 */	b lbl_8057F8A0
lbl_8057F894:
/* 8057F894  38 60 00 48 */	li r3, 0x48
/* 8057F898  38 80 52 8A */	li r4, 0x528a
/* 8057F89C  4B DF CA E5 */	bl mBGMPsComp_delete_ps_happening
lbl_8057F8A0:
/* 8057F8A0  38 60 03 84 */	li r3, 0x384
/* 8057F8A4  38 80 01 2C */	li r4, 0x12c
/* 8057F8A8  4B DF C3 61 */	bl mBGMPsComp_make_ps_co_quiet
/* 8057F8AC  38 00 00 00 */	li r0, 0
/* 8057F8B0  98 1D 09 A6 */	stb r0, 0x9a6(r29)
lbl_8057F8B4:
/* 8057F8B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8057F8B8  4B B1 B6 69 */	bl func_8009AF20
/* 8057F8BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057F8C0  7C 08 03 A6 */	mtlr r0
/* 8057F8C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8057F8C8  4E 80 00 20 */	blr 
