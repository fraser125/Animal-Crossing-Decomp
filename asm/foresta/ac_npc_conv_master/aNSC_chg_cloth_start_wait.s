lbl_805497B8:
/* 805497B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805497BC  7C 08 02 A6 */	mflr r0
/* 805497C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805497C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805497C8  7C 9F 23 78 */	mr r31, r4
/* 805497CC  93 C1 00 08 */	stw r30, 8(r1)
/* 805497D0  7C 7E 1B 78 */	mr r30, r3
/* 805497D4  7F E3 FB 78 */	mr r3, r31
/* 805497D8  4B E8 FE 99 */	bl mPlib_get_player_actor_main_index
/* 805497DC  2C 03 00 65 */	cmpwi r3, 0x65
/* 805497E0  40 82 00 18 */	bne lbl_805497F8
/* 805497E4  7F C3 F3 78 */	mr r3, r30
/* 805497E8  7F E4 FB 78 */	mr r4, r31
/* 805497EC  38 A0 00 28 */	li r5, 0x28
/* 805497F0  48 00 17 2D */	bl aNSC_setupAction
/* 805497F4  48 00 00 74 */	b lbl_80549868
lbl_805497F8:
/* 805497F8  A0 9E 09 BE */	lhz r4, 0x9be(r30)
/* 805497FC  28 04 FE 20 */	cmplwi r4, 0xfe20
/* 80549800  41 82 00 40 */	beq lbl_80549840
/* 80549804  28 04 24 00 */	cmplwi r4, 0x2400
/* 80549808  7F E3 FB 78 */	mr r3, r31
/* 8054980C  38 00 00 00 */	li r0, 0
/* 80549810  41 80 00 10 */	blt lbl_80549820
/* 80549814  28 04 24 FF */	cmplwi r4, 0x24ff
/* 80549818  40 80 00 08 */	bge lbl_80549820
/* 8054981C  38 00 00 01 */	li r0, 1
lbl_80549820:
/* 80549820  20 A0 00 00 */	subfic r5, r0, 0
/* 80549824  38 04 DC 00 */	addi r0, r4, -9216
/* 80549828  7C A5 29 10 */	subfe r5, r5, r5
/* 8054982C  38 C0 00 01 */	li r6, 1
/* 80549830  7C 00 28 38 */	and r0, r0, r5
/* 80549834  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80549838  4B E9 14 31 */	bl mPlib_request_main_change_cloth_forNPC_type1
/* 8054983C  48 00 00 2C */	b lbl_80549868
lbl_80549840:
/* 80549840  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80549844  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FE20@ha */
/* 80549848  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8054984C  7F E3 FB 78 */	mr r3, r31
/* 80549850  3C A4 00 02 */	addis r5, r4, 2
/* 80549854  38 86 FE 20 */	addi r4, r6, 0xFE20 /* 0x0000FE20@l */
/* 80549858  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 8054985C  38 C0 00 01 */	li r6, 1
/* 80549860  A0 A5 10 88 */	lhz r5, 0x1088(r5)
/* 80549864  4B E9 14 05 */	bl mPlib_request_main_change_cloth_forNPC_type1
lbl_80549868:
/* 80549868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054986C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80549870  83 C1 00 08 */	lwz r30, 8(r1)
/* 80549874  7C 08 03 A6 */	mtlr r0
/* 80549878  38 21 00 10 */	addi r1, r1, 0x10
/* 8054987C  4E 80 00 20 */	blr 
