lbl_8055BE24:
/* 8055BE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055BE28  7C 08 02 A6 */	mflr r0
/* 8055BE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055BE30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055BE34  7C 7F 1B 78 */	mr r31, r3
/* 8055BE38  93 C1 00 08 */	stw r30, 8(r1)
/* 8055BE3C  7C 9E 23 78 */	mr r30, r4
/* 8055BE40  7F C3 F3 78 */	mr r3, r30
/* 8055BE44  4B E7 D7 FD */	bl get_player_actor_withoutCheck
/* 8055BE48  28 03 00 00 */	cmplwi r3, 0
/* 8055BE4C  38 A0 00 00 */	li r5, 0
/* 8055BE50  41 82 00 A8 */	beq lbl_8055BEF8
/* 8055BE54  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055BE58  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 8055BE5C  3C 86 00 02 */	addis r4, r6, 2
/* 8055BE60  80 04 60 60 */	lwz r0, 0x6060(r4)
/* 8055BE64  28 00 00 00 */	cmplwi r0, 0
/* 8055BE68  41 82 00 90 */	beq lbl_8055BEF8
/* 8055BE6C  7C 65 1B 78 */	mr r5, r3
/* 8055BE70  A0 03 13 94 */	lhz r0, 0x1394(r3)
/* 8055BE74  28 00 40 81 */	cmplwi r0, 0x4081
/* 8055BE78  40 82 00 44 */	bne lbl_8055BEBC
/* 8055BE7C  3C 60 81 1F */	lis r3, data_811EC208@ha /* 0x811EC208@ha */
/* 8055BE80  3C 80 81 1F */	lis r4, aNMD_actor_p@ha /* 0x811EC20C@ha */
/* 8055BE84  38 A3 C2 08 */	addi r5, r3, data_811EC208@l /* 0x811EC208@l */
/* 8055BE88  80 05 00 00 */	lwz r0, 0(r5)
/* 8055BE8C  38 A4 C2 0C */	addi r5, r4, aNMD_actor_p@l /* 0x811EC20C@l */
/* 8055BE90  7F E3 FB 78 */	mr r3, r31
/* 8055BE94  7F C4 F3 78 */	mr r4, r30
/* 8055BE98  54 00 10 3A */	slwi r0, r0, 2
/* 8055BE9C  7C 05 00 2E */	lwzx r0, r5, r0
/* 8055BEA0  7C 00 F8 50 */	subf r0, r0, r31
/* 8055BEA4  30 00 FF FF */	addic r0, r0, -1
/* 8055BEA8  7C A0 01 10 */	subfe r5, r0, r0
/* 8055BEAC  38 A5 00 44 */	addi r5, r5, 0x44
/* 8055BEB0  48 00 2F 21 */	bl aNSC_setupAction
/* 8055BEB4  38 A0 00 01 */	li r5, 1
/* 8055BEB8  48 00 00 40 */	b lbl_8055BEF8
lbl_8055BEBC:
/* 8055BEBC  3C 66 00 03 */	addis r3, r6, 3
/* 8055BEC0  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 8055BEC4  2C 00 00 03 */	cmpwi r0, 3
/* 8055BEC8  40 82 00 1C */	bne lbl_8055BEE4
/* 8055BECC  7F E3 FB 78 */	mr r3, r31
/* 8055BED0  7F C4 F3 78 */	mr r4, r30
/* 8055BED4  38 C0 00 01 */	li r6, 1
/* 8055BED8  4B FF FD 5D */	bl aNSC_message_ctrl_sub
/* 8055BEDC  7C 65 1B 78 */	mr r5, r3
/* 8055BEE0  48 00 00 18 */	b lbl_8055BEF8
lbl_8055BEE4:
/* 8055BEE4  7F E3 FB 78 */	mr r3, r31
/* 8055BEE8  7F C4 F3 78 */	mr r4, r30
/* 8055BEEC  38 C0 00 00 */	li r6, 0
/* 8055BEF0  4B FF FD 45 */	bl aNSC_message_ctrl_sub
/* 8055BEF4  7C 65 1B 78 */	mr r5, r3
lbl_8055BEF8:
/* 8055BEF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055BEFC  7C A3 2B 78 */	mr r3, r5
/* 8055BF00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055BF04  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055BF08  7C 08 03 A6 */	mtlr r0
/* 8055BF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055BF10  4E 80 00 20 */	blr 
