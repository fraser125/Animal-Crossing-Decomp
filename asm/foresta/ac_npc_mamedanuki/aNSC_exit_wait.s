lbl_8055E4CC:
/* 8055E4CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E4D0  7C 08 02 A6 */	mflr r0
/* 8055E4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E4D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055E4DC  7C 9F 23 78 */	mr r31, r4
/* 8055E4E0  4B E6 11 C9 */	bl func_803BF6A8
/* 8055E4E4  4B E6 12 5D */	bl mMsg_Check_main_wait
/* 8055E4E8  2C 03 00 01 */	cmpwi r3, 1
/* 8055E4EC  40 82 00 38 */	bne lbl_8055E524
/* 8055E4F0  3C 80 80 6B */	lis r4, stairs@ha /* 0x806AA014@ha */
/* 8055E4F4  7F E3 FB 78 */	mr r3, r31
/* 8055E4F8  38 84 A0 14 */	addi r4, r4, stairs@l /* 0x806AA014@l */
/* 8055E4FC  38 A0 00 01 */	li r5, 1
/* 8055E500  4B E9 2C A9 */	bl goto_other_scene
/* 8055E504  88 1F 20 D3 */	lbz r0, 0x20d3(r31)
/* 8055E508  28 00 00 00 */	cmplwi r0, 0
/* 8055E50C  40 82 00 18 */	bne lbl_8055E524
/* 8055E510  38 00 00 0C */	li r0, 0xc
/* 8055E514  98 1F 20 D0 */	stb r0, 0x20d0(r31)
/* 8055E518  4B E1 E2 39 */	bl mBGMPsComp_volume_talk_end
/* 8055E51C  38 60 01 95 */	li r3, 0x195
/* 8055E520  4B E1 D5 ED */	bl mBGMPsComp_make_ps_wipe
lbl_8055E524:
/* 8055E524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055E52C  7C 08 03 A6 */	mtlr r0
/* 8055E530  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E534  4E 80 00 20 */	blr 
