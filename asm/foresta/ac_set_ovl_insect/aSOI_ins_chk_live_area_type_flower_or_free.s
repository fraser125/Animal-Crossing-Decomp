lbl_8049BE18:
/* 8049BE18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049BE1C  7C 08 02 A6 */	mflr r0
/* 8049BE20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049BE24  39 61 00 20 */	addi r11, r1, 0x20
/* 8049BE28  4B BF F0 AD */	bl func_8009AED4
/* 8049BE2C  3D 20 81 14 */	lis r9, common_data@ha /* 0x81138538@ha */
/* 8049BE30  7C 7D 1B 78 */	mr r29, r3
/* 8049BE34  38 69 85 38 */	addi r3, r9, common_data@l /* 0x81138538@l */
/* 8049BE38  7C 9E 23 78 */	mr r30, r4
/* 8049BE3C  3C 63 00 02 */	addis r3, r3, 2
/* 8049BE40  3B E0 00 00 */	li r31, 0
/* 8049BE44  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 8049BE48  2C 00 00 01 */	cmpwi r0, 1
/* 8049BE4C  41 82 00 38 */	beq lbl_8049BE84
/* 8049BE50  7C A3 2B 78 */	mr r3, r5
/* 8049BE54  7C C4 33 78 */	mr r4, r6
/* 8049BE58  7C E5 3B 78 */	mr r5, r7
/* 8049BE5C  7D 06 43 78 */	mr r6, r8
/* 8049BE60  4B FF F6 D9 */	bl aSOI_ins_field_fg_check_get
/* 8049BE64  7C 7F 1B 79 */	or. r31, r3, r3
/* 8049BE68  38 A0 00 01 */	li r5, 1
/* 8049BE6C  40 82 00 08 */	bne lbl_8049BE74
/* 8049BE70  38 A0 00 03 */	li r5, 3
lbl_8049BE74:
/* 8049BE74  7F A3 EB 78 */	mr r3, r29
/* 8049BE78  7F C4 F3 78 */	mr r4, r30
/* 8049BE7C  38 C0 00 0C */	li r6, 0xc
/* 8049BE80  4B FF FB 01 */	bl aSOI_ins_change_how_to_make
lbl_8049BE84:
/* 8049BE84  7F E3 FB 78 */	mr r3, r31
/* 8049BE88  39 61 00 20 */	addi r11, r1, 0x20
/* 8049BE8C  4B BF F0 95 */	bl func_8009AF20
/* 8049BE90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049BE94  7C 08 03 A6 */	mtlr r0
/* 8049BE98  38 21 00 20 */	addi r1, r1, 0x20
/* 8049BE9C  4E 80 00 20 */	blr 
