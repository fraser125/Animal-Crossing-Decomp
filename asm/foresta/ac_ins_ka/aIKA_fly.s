lbl_8059C388:
/* 8059C388  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059C38C  7C 08 02 A6 */	mflr r0
/* 8059C390  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059C394  39 61 00 20 */	addi r11, r1, 0x20
/* 8059C398  4B AF EB 3D */	bl func_8009AED4
/* 8059C39C  7C 9D 23 78 */	mr r29, r4
/* 8059C3A0  7C 7E 1B 78 */	mr r30, r3
/* 8059C3A4  7F A3 EB 78 */	mr r3, r29
/* 8059C3A8  4B E3 D2 99 */	bl get_player_actor_withoutCheck
/* 8059C3AC  7C 7F 1B 78 */	mr r31, r3
/* 8059C3B0  7F C3 F3 78 */	mr r3, r30
/* 8059C3B4  4B FF FE B1 */	bl aIKA_BGcheck
/* 8059C3B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8059C3BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8059C3C0  3C 63 00 02 */	addis r3, r3, 2
/* 8059C3C4  80 03 60 AC */	lwz r0, 0x60ac(r3)
/* 8059C3C8  28 00 00 00 */	cmplwi r0, 0
/* 8059C3CC  40 82 00 10 */	bne lbl_8059C3DC
/* 8059C3D0  80 03 60 B0 */	lwz r0, 0x60b0(r3)
/* 8059C3D4  28 00 00 00 */	cmplwi r0, 0
/* 8059C3D8  41 82 00 18 */	beq lbl_8059C3F0
lbl_8059C3DC:
/* 8059C3DC  7F C3 F3 78 */	mr r3, r30
/* 8059C3E0  7F A5 EB 78 */	mr r5, r29
/* 8059C3E4  38 80 00 00 */	li r4, 0
/* 8059C3E8  48 00 03 D9 */	bl aIKA_setupAction
/* 8059C3EC  48 00 00 44 */	b lbl_8059C430
lbl_8059C3F0:
/* 8059C3F0  28 1F 00 00 */	cmplwi r31, 0
/* 8059C3F4  41 82 00 2C */	beq lbl_8059C420
/* 8059C3F8  7F C3 F3 78 */	mr r3, r30
/* 8059C3FC  7F A4 EB 78 */	mr r4, r29
/* 8059C400  4B FF FE 9D */	bl aIKA_check_condition
/* 8059C404  2C 03 00 01 */	cmpwi r3, 1
/* 8059C408  40 82 00 18 */	bne lbl_8059C420
/* 8059C40C  7F C3 F3 78 */	mr r3, r30
/* 8059C410  7F A5 EB 78 */	mr r5, r29
/* 8059C414  38 80 00 03 */	li r4, 3
/* 8059C418  48 00 03 A9 */	bl aIKA_setupAction
/* 8059C41C  48 00 00 14 */	b lbl_8059C430
lbl_8059C420:
/* 8059C420  A8 7E 00 DE */	lha r3, 0xde(r30)
/* 8059C424  38 03 00 80 */	addi r0, r3, 0x80
/* 8059C428  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 8059C42C  B0 1E 00 36 */	sth r0, 0x36(r30)
lbl_8059C430:
/* 8059C430  39 61 00 20 */	addi r11, r1, 0x20
/* 8059C434  4B AF EA ED */	bl func_8009AF20
/* 8059C438  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059C43C  7C 08 03 A6 */	mtlr r0
/* 8059C440  38 21 00 20 */	addi r1, r1, 0x20
/* 8059C444  4E 80 00 20 */	blr 
