lbl_805A482C:
/* 805A482C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4830  7C 08 02 A6 */	mflr r0
/* 805A4834  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A483C  7C 7F 1B 78 */	mr r31, r3
/* 805A4840  93 C1 00 08 */	stw r30, 8(r1)
/* 805A4844  7C 9E 23 78 */	mr r30, r4
/* 805A4848  4B FF F1 F5 */	bl aGTT_player_near
/* 805A484C  2C 03 00 00 */	cmpwi r3, 0
/* 805A4850  40 82 00 A0 */	bne lbl_805A48F0
/* 805A4854  7F E3 FB 78 */	mr r3, r31
/* 805A4858  7F C4 F3 78 */	mr r4, r30
/* 805A485C  4B FF F0 21 */	bl aGTT_search_Uki
/* 805A4860  2C 03 00 01 */	cmpwi r3, 1
/* 805A4864  40 82 00 14 */	bne lbl_805A4878
/* 805A4868  7F E3 FB 78 */	mr r3, r31
/* 805A486C  38 80 00 03 */	li r4, 3
/* 805A4870  48 00 03 D5 */	bl aGTT_setupAction
/* 805A4874  48 00 00 7C */	b lbl_805A48F0
lbl_805A4878:
/* 805A4878  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A487C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 805A4880  40 82 00 14 */	bne lbl_805A4894
/* 805A4884  7F E3 FB 78 */	mr r3, r31
/* 805A4888  4B FF F3 09 */	bl aGYO_check_wall
/* 805A488C  2C 03 00 00 */	cmpwi r3, 0
/* 805A4890  40 82 00 60 */	bne lbl_805A48F0
lbl_805A4894:
/* 805A4894  80 7F 02 18 */	lwz r3, 0x218(r31)
/* 805A4898  2C 03 00 00 */	cmpwi r3, 0
/* 805A489C  40 82 00 0C */	bne lbl_805A48A8
/* 805A48A0  38 00 00 00 */	li r0, 0
/* 805A48A4  48 00 00 0C */	b lbl_805A48B0
lbl_805A48A8:
/* 805A48A8  38 03 FF FF */	addi r0, r3, -1
/* 805A48AC  90 1F 02 18 */	stw r0, 0x218(r31)
lbl_805A48B0:
/* 805A48B0  2C 00 00 00 */	cmpwi r0, 0
/* 805A48B4  40 82 00 20 */	bne lbl_805A48D4
/* 805A48B8  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A48BC  7F E3 FB 78 */	mr r3, r31
/* 805A48C0  38 80 00 01 */	li r4, 1
/* 805A48C4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 805A48C8  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A48CC  48 00 03 79 */	bl aGTT_setupAction
/* 805A48D0  48 00 00 20 */	b lbl_805A48F0
lbl_805A48D4:
/* 805A48D4  3C 60 80 65 */	lis r3, lit_458@ha /* 0x8064A3CC@ha */
/* 805A48D8  3C 80 80 65 */	lis r4, lit_447@ha /* 0x8064A3C8@ha */
/* 805A48DC  38 A3 A3 CC */	addi r5, r3, lit_458@l /* 0x8064A3CC@l */
/* 805A48E0  C0 44 A3 C8 */	lfs f2, lit_447@l(r4)  /* 0x8064A3C8@l */
/* 805A48E4  C0 25 00 00 */	lfs f1, 0(r5)
/* 805A48E8  38 7F 00 74 */	addi r3, r31, 0x74
/* 805A48EC  4B E1 63 7D */	bl chase_f
lbl_805A48F0:
/* 805A48F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A48F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A48F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A48FC  7C 08 03 A6 */	mtlr r0
/* 805A4900  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4904  4E 80 00 20 */	blr 
