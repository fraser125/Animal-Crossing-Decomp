lbl_805BE4AC:
/* 805BE4AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BE4B0  7C 08 02 A6 */	mflr r0
/* 805BE4B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BE4B8  39 61 00 30 */	addi r11, r1, 0x30
/* 805BE4BC  4B AD CA 19 */	bl func_8009AED4
/* 805BE4C0  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805BE4C4  7C 7D 1B 78 */	mr r29, r3
/* 805BE4C8  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805BE4CC  7C 9E 23 78 */	mr r30, r4
/* 805BE4D0  7F E3 FB 78 */	mr r3, r31
/* 805BE4D4  4B E1 B1 6D */	bl get_player_actor_withoutCheck
/* 805BE4D8  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805BE4DC  7F E3 FB 78 */	mr r3, r31
/* 805BE4E0  7D 89 03 A6 */	mtctr r12
/* 805BE4E4  4E 80 04 21 */	bctrl 
/* 805BE4E8  7C 1D 18 40 */	cmplw r29, r3
/* 805BE4EC  40 82 00 28 */	bne lbl_805BE514
/* 805BE4F0  7F A3 EB 78 */	mr r3, r29
/* 805BE4F4  7F C4 F3 78 */	mr r4, r30
/* 805BE4F8  4B FF FE 21 */	bl aTnt_rewrite_out_data
/* 805BE4FC  3C 80 80 6C */	lis r4, aTnt_tent_enter_data@ha /* 0x806C7094@ha */
/* 805BE500  7F C3 F3 78 */	mr r3, r30
/* 805BE504  38 84 70 94 */	addi r4, r4, aTnt_tent_enter_data@l /* 0x806C7094@l */
/* 805BE508  38 A0 00 01 */	li r5, 1
/* 805BE50C  4B E3 2C 9D */	bl goto_other_scene
/* 805BE510  48 00 00 60 */	b lbl_805BE570
lbl_805BE514:
/* 805BE514  7F A3 EB 78 */	mr r3, r29
/* 805BE518  7F C4 F3 78 */	mr r4, r30
/* 805BE51C  4B FF FE F5 */	bl aTnt_check_player
/* 805BE520  2C 03 00 00 */	cmpwi r3, 0
/* 805BE524  41 82 00 4C */	beq lbl_805BE570
/* 805BE528  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 805BE52C  7F C3 F3 78 */	mr r3, r30
/* 805BE530  D0 01 00 08 */	stfs f0, 8(r1)
/* 805BE534  4B E1 B1 0D */	bl get_player_actor_withoutCheck
/* 805BE538  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805BE53C  3C 60 80 65 */	lis r3, lit_548@ha /* 0x8064ABB4@ha */
/* 805BE540  38 83 AB B4 */	addi r4, r3, lit_548@l /* 0x8064ABB4@l */
/* 805BE544  7F C3 F3 78 */	mr r3, r30
/* 805BE548  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805BE54C  7F A7 EB 78 */	mr r7, r29
/* 805BE550  C0 24 00 00 */	lfs f1, 0(r4)
/* 805BE554  38 81 00 08 */	addi r4, r1, 8
/* 805BE558  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805BE55C  38 A0 80 00 */	li r5, -32768
/* 805BE560  38 C0 00 01 */	li r6, 1
/* 805BE564  EC 01 00 2A */	fadds f0, f1, f0
/* 805BE568  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805BE56C  4B E1 C1 1D */	bl mPlib_request_main_door_type1
lbl_805BE570:
/* 805BE570  39 61 00 30 */	addi r11, r1, 0x30
/* 805BE574  4B AD C9 AD */	bl func_8009AF20
/* 805BE578  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BE57C  7C 08 03 A6 */	mtlr r0
/* 805BE580  38 21 00 30 */	addi r1, r1, 0x30
/* 805BE584  4E 80 00 20 */	blr 
