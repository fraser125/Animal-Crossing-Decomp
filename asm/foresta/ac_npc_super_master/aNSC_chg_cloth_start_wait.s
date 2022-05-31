lbl_8058485C:
/* 8058485C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80584860  7C 08 02 A6 */	mflr r0
/* 80584864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80584868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058486C  7C 9F 23 78 */	mr r31, r4
/* 80584870  93 C1 00 08 */	stw r30, 8(r1)
/* 80584874  7C 7E 1B 78 */	mr r30, r3
/* 80584878  7F E3 FB 78 */	mr r3, r31
/* 8058487C  4B E5 4D F5 */	bl mPlib_get_player_actor_main_index
/* 80584880  2C 03 00 65 */	cmpwi r3, 0x65
/* 80584884  40 82 00 18 */	bne lbl_8058489C
/* 80584888  7F C3 F3 78 */	mr r3, r30
/* 8058488C  7F E4 FB 78 */	mr r4, r31
/* 80584890  38 A0 00 28 */	li r5, 0x28
/* 80584894  48 00 17 2D */	bl aNSC_setupAction
/* 80584898  48 00 00 74 */	b lbl_8058490C
lbl_8058489C:
/* 8058489C  A0 9E 09 BE */	lhz r4, 0x9be(r30)
/* 805848A0  28 04 FE 20 */	cmplwi r4, 0xfe20
/* 805848A4  41 82 00 40 */	beq lbl_805848E4
/* 805848A8  28 04 24 00 */	cmplwi r4, 0x2400
/* 805848AC  7F E3 FB 78 */	mr r3, r31
/* 805848B0  38 00 00 00 */	li r0, 0
/* 805848B4  41 80 00 10 */	blt lbl_805848C4
/* 805848B8  28 04 24 FF */	cmplwi r4, 0x24ff
/* 805848BC  40 80 00 08 */	bge lbl_805848C4
/* 805848C0  38 00 00 01 */	li r0, 1
lbl_805848C4:
/* 805848C4  20 A0 00 00 */	subfic r5, r0, 0
/* 805848C8  38 04 DC 00 */	addi r0, r4, -9216
/* 805848CC  7C A5 29 10 */	subfe r5, r5, r5
/* 805848D0  38 C0 00 01 */	li r6, 1
/* 805848D4  7C 00 28 38 */	and r0, r0, r5
/* 805848D8  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805848DC  4B E5 63 8D */	bl mPlib_request_main_change_cloth_forNPC_type1
/* 805848E0  48 00 00 2C */	b lbl_8058490C
lbl_805848E4:
/* 805848E4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805848E8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FE20@ha */
/* 805848EC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805848F0  7F E3 FB 78 */	mr r3, r31
/* 805848F4  3C A4 00 02 */	addis r5, r4, 2
/* 805848F8  38 86 FE 20 */	addi r4, r6, 0xFE20 /* 0x0000FE20@l */
/* 805848FC  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 80584900  38 C0 00 01 */	li r6, 1
/* 80584904  A0 A5 10 88 */	lhz r5, 0x1088(r5)
/* 80584908  4B E5 63 61 */	bl mPlib_request_main_change_cloth_forNPC_type1
lbl_8058490C:
/* 8058490C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80584910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80584914  83 C1 00 08 */	lwz r30, 8(r1)
/* 80584918  7C 08 03 A6 */	mtlr r0
/* 8058491C  38 21 00 10 */	addi r1, r1, 0x10
/* 80584920  4E 80 00 20 */	blr 
