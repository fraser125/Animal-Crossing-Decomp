lbl_805655A8:
/* 805655A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805655AC  7C 08 02 A6 */	mflr r0
/* 805655B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805655B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805655B8  7C 9F 23 78 */	mr r31, r4
/* 805655BC  93 C1 00 08 */	stw r30, 8(r1)
/* 805655C0  7C 7E 1B 78 */	mr r30, r3
/* 805655C4  88 03 09 AF */	lbz r0, 0x9af(r3)
/* 805655C8  28 00 00 05 */	cmplwi r0, 5
/* 805655CC  41 82 00 0C */	beq lbl_805655D8
/* 805655D0  28 00 00 06 */	cmplwi r0, 6
/* 805655D4  40 82 00 10 */	bne lbl_805655E4
lbl_805655D8:
/* 805655D8  3C 80 80 65 */	lis r4, lit_1696@ha /* 0x806497AC@ha */
/* 805655DC  C0 24 97 AC */	lfs f1, lit_1696@l(r4)  /* 0x806497AC@l */
/* 805655E0  48 00 00 0C */	b lbl_805655EC
lbl_805655E4:
/* 805655E4  3C 80 80 65 */	lis r4, lit_1697@ha /* 0x806497B0@ha */
/* 805655E8  C0 24 97 B0 */	lfs f1, lit_1697@l(r4)  /* 0x806497B0@l */
lbl_805655EC:
/* 805655EC  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 805655F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805655F4  4C 41 13 82 */	cror 2, 1, 2
/* 805655F8  40 82 00 48 */	bne lbl_80565640
/* 805655FC  7F C3 F3 78 */	mr r3, r30
/* 80565600  7F E4 FB 78 */	mr r4, r31
/* 80565604  4B FF F7 41 */	bl aNNW_next_target
/* 80565608  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8056560C  2C 00 00 01 */	cmpwi r0, 1
/* 80565610  41 82 00 08 */	beq lbl_80565618
/* 80565614  48 00 00 18 */	b lbl_8056562C
lbl_80565618:
/* 80565618  7F C3 F3 78 */	mr r3, r30
/* 8056561C  7F E4 FB 78 */	mr r4, r31
/* 80565620  38 A0 00 02 */	li r5, 2
/* 80565624  4B FF FF 4D */	bl aNNW_my_proc_init
/* 80565628  48 00 00 24 */	b lbl_8056564C
lbl_8056562C:
/* 8056562C  7F C3 F3 78 */	mr r3, r30
/* 80565630  7F E4 FB 78 */	mr r4, r31
/* 80565634  38 A0 00 04 */	li r5, 4
/* 80565638  4B FF FF 39 */	bl aNNW_my_proc_init
/* 8056563C  48 00 00 10 */	b lbl_8056564C
lbl_80565640:
/* 80565640  4B FF C3 45 */	bl aNNW_turn_player
/* 80565644  38 00 04 00 */	li r0, 0x400
/* 80565648  B0 1E 09 26 */	sth r0, 0x926(r30)
lbl_8056564C:
/* 8056564C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80565650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80565654  83 C1 00 08 */	lwz r30, 8(r1)
/* 80565658  7C 08 03 A6 */	mtlr r0
/* 8056565C  38 21 00 10 */	addi r1, r1, 0x10
/* 80565660  4E 80 00 20 */	blr 