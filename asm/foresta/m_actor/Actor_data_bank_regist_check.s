lbl_8037550C:
/* 8037550C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80375510  7C 08 02 A6 */	mflr r0
/* 80375514  39 00 00 01 */	li r8, 1
/* 80375518  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037551C  80 03 00 00 */	lwz r0, 0(r3)
/* 80375520  2C 00 FF FF */	cmpwi r0, -1
/* 80375524  40 82 00 20 */	bne lbl_80375544
/* 80375528  88 04 00 02 */	lbz r0, 2(r4)
/* 8037552C  28 00 00 04 */	cmplwi r0, 4
/* 80375530  40 82 00 10 */	bne lbl_80375540
/* 80375534  4B FF FF D1 */	bl Actor_data_bank_regist_check_npc
/* 80375538  7C 68 1B 78 */	mr r8, r3
/* 8037553C  48 00 00 08 */	b lbl_80375544
lbl_80375540:
/* 80375540  39 00 00 01 */	li r8, 1
lbl_80375544:
/* 80375544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80375548  7D 03 43 78 */	mr r3, r8
/* 8037554C  7C 08 03 A6 */	mtlr r0
/* 80375550  38 21 00 10 */	addi r1, r1, 0x10
/* 80375554  4E 80 00 20 */	blr 
