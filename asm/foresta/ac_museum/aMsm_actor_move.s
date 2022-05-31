lbl_805B4774:
/* 805B4774  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B4778  7C 08 02 A6 */	mflr r0
/* 805B477C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B4780  39 61 00 30 */	addi r11, r1, 0x30
/* 805B4784  4B AE 67 51 */	bl func_8009AED4
/* 805B4788  7C 7E 1B 78 */	mr r30, r3
/* 805B478C  7C 9D 23 78 */	mr r29, r4
/* 805B4790  4B FF FF 0D */	bl aMsm_ctrl_light
/* 805B4794  2C 03 00 00 */	cmpwi r3, 0
/* 805B4798  41 82 00 10 */	beq lbl_805B47A8
/* 805B479C  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064A91C@ha */
/* 805B47A0  C0 23 A9 1C */	lfs f1, lit_436@l(r3)  /* 0x8064A91C@l */
/* 805B47A4  48 00 00 0C */	b lbl_805B47B0
lbl_805B47A8:
/* 805B47A8  3C 60 80 65 */	lis r3, lit_437@ha /* 0x8064A920@ha */
/* 805B47AC  C0 23 A9 20 */	lfs f1, lit_437@l(r3)  /* 0x8064A920@l */
lbl_805B47B0:
/* 805B47B0  3C 60 80 65 */	lis r3, lit_512@ha /* 0x8064A950@ha */
/* 805B47B4  38 83 A9 50 */	addi r4, r3, lit_512@l /* 0x8064A950@l */
/* 805B47B8  C0 44 00 00 */	lfs f2, 0(r4)
/* 805B47BC  38 7E 02 C8 */	addi r3, r30, 0x2c8
/* 805B47C0  4B E0 64 A9 */	bl chase_f
/* 805B47C4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805B47C8  83 E3 52 F0 */	lwz r31, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 805B47CC  7F E3 FB 78 */	mr r3, r31
/* 805B47D0  4B E2 4E 71 */	bl get_player_actor_withoutCheck
/* 805B47D4  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805B47D8  7F E3 FB 78 */	mr r3, r31
/* 805B47DC  7D 89 03 A6 */	mtctr r12
/* 805B47E0  4E 80 04 21 */	bctrl 
/* 805B47E4  7C 1E 18 40 */	cmplw r30, r3
/* 805B47E8  40 82 00 28 */	bne lbl_805B4810
/* 805B47EC  7F C3 F3 78 */	mr r3, r30
/* 805B47F0  7F A4 EB 78 */	mr r4, r29
/* 805B47F4  4B FF FD B1 */	bl aMsm_rewrite_out_data
/* 805B47F8  3C 80 80 6C */	lis r4, aMsm_museum_enter_data@ha /* 0x806C5BE0@ha */
/* 805B47FC  7F A3 EB 78 */	mr r3, r29
/* 805B4800  38 84 5B E0 */	addi r4, r4, aMsm_museum_enter_data@l /* 0x806C5BE0@l */
/* 805B4804  38 A0 00 00 */	li r5, 0
/* 805B4808  4B E3 C9 A1 */	bl goto_other_scene
/* 805B480C  48 00 00 60 */	b lbl_805B486C
lbl_805B4810:
/* 805B4810  7F C3 F3 78 */	mr r3, r30
/* 805B4814  7F A4 EB 78 */	mr r4, r29
/* 805B4818  4B FF FE B9 */	bl aMsm_check_player
/* 805B481C  2C 03 00 02 */	cmpwi r3, 2
/* 805B4820  40 82 00 4C */	bne lbl_805B486C
/* 805B4824  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805B4828  7F A3 EB 78 */	mr r3, r29
/* 805B482C  D0 01 00 08 */	stfs f0, 8(r1)
/* 805B4830  4B E2 4E 11 */	bl get_player_actor_withoutCheck
/* 805B4834  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805B4838  3C 60 80 65 */	lis r3, lit_498@ha /* 0x8064A948@ha */
/* 805B483C  38 83 A9 48 */	addi r4, r3, lit_498@l /* 0x8064A948@l */
/* 805B4840  7F A3 EB 78 */	mr r3, r29
/* 805B4844  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805B4848  7F C7 F3 78 */	mr r7, r30
/* 805B484C  C0 24 00 00 */	lfs f1, 0(r4)
/* 805B4850  38 81 00 08 */	addi r4, r1, 8
/* 805B4854  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805B4858  38 A0 80 00 */	li r5, -32768
/* 805B485C  38 C0 00 01 */	li r6, 1
/* 805B4860  EC 01 00 2A */	fadds f0, f1, f0
/* 805B4864  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805B4868  4B E2 5E 21 */	bl mPlib_request_main_door_type1
lbl_805B486C:
/* 805B486C  39 61 00 30 */	addi r11, r1, 0x30
/* 805B4870  4B AE 66 B1 */	bl func_8009AF20
/* 805B4874  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B4878  7C 08 03 A6 */	mtlr r0
/* 805B487C  38 21 00 30 */	addi r1, r1, 0x30
/* 805B4880  4E 80 00 20 */	blr 
