lbl_8055D7C8:
/* 8055D7C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055D7CC  7C 08 02 A6 */	mflr r0
/* 8055D7D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055D7D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055D7D8  7C 9F 23 78 */	mr r31, r4
/* 8055D7DC  93 C1 00 08 */	stw r30, 8(r1)
/* 8055D7E0  7C 7E 1B 78 */	mr r30, r3
/* 8055D7E4  7F E3 FB 78 */	mr r3, r31
/* 8055D7E8  4B E7 BE 89 */	bl mPlib_get_player_actor_main_index
/* 8055D7EC  2C 03 00 65 */	cmpwi r3, 0x65
/* 8055D7F0  40 82 00 18 */	bne lbl_8055D808
/* 8055D7F4  7F C3 F3 78 */	mr r3, r30
/* 8055D7F8  7F E4 FB 78 */	mr r4, r31
/* 8055D7FC  38 A0 00 28 */	li r5, 0x28
/* 8055D800  48 00 15 D1 */	bl aNSC_setupAction
/* 8055D804  48 00 00 74 */	b lbl_8055D878
lbl_8055D808:
/* 8055D808  A0 9E 09 BE */	lhz r4, 0x9be(r30)
/* 8055D80C  28 04 FE 20 */	cmplwi r4, 0xfe20
/* 8055D810  41 82 00 40 */	beq lbl_8055D850
/* 8055D814  28 04 24 00 */	cmplwi r4, 0x2400
/* 8055D818  7F E3 FB 78 */	mr r3, r31
/* 8055D81C  38 00 00 00 */	li r0, 0
/* 8055D820  41 80 00 10 */	blt lbl_8055D830
/* 8055D824  28 04 24 FF */	cmplwi r4, 0x24ff
/* 8055D828  40 80 00 08 */	bge lbl_8055D830
/* 8055D82C  38 00 00 01 */	li r0, 1
lbl_8055D830:
/* 8055D830  20 A0 00 00 */	subfic r5, r0, 0
/* 8055D834  38 04 DC 00 */	addi r0, r4, -9216
/* 8055D838  7C A5 29 10 */	subfe r5, r5, r5
/* 8055D83C  38 C0 00 01 */	li r6, 1
/* 8055D840  7C 00 28 38 */	and r0, r0, r5
/* 8055D844  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8055D848  4B E7 D4 21 */	bl mPlib_request_main_change_cloth_forNPC_type1
/* 8055D84C  48 00 00 2C */	b lbl_8055D878
lbl_8055D850:
/* 8055D850  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055D854  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FE20@ha */
/* 8055D858  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8055D85C  7F E3 FB 78 */	mr r3, r31
/* 8055D860  3C A4 00 02 */	addis r5, r4, 2
/* 8055D864  38 86 FE 20 */	addi r4, r6, 0xFE20 /* 0x0000FE20@l */
/* 8055D868  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 8055D86C  38 C0 00 01 */	li r6, 1
/* 8055D870  A0 A5 10 88 */	lhz r5, 0x1088(r5)
/* 8055D874  4B E7 D3 F5 */	bl mPlib_request_main_change_cloth_forNPC_type1
lbl_8055D878:
/* 8055D878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055D87C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055D880  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055D884  7C 08 03 A6 */	mtlr r0
/* 8055D888  38 21 00 10 */	addi r1, r1, 0x10
/* 8055D88C  4E 80 00 20 */	blr 
