lbl_8054C7A0:
/* 8054C7A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054C7A4  7C 08 02 A6 */	mflr r0
/* 8054C7A8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054C7AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054C7B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054C7B4  7C 9F 23 78 */	mr r31, r4
/* 8054C7B8  93 C1 00 08 */	stw r30, 8(r1)
/* 8054C7BC  7C 7E 1B 78 */	mr r30, r3
/* 8054C7C0  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8054C7C4  3C 63 00 02 */	addis r3, r3, 2
/* 8054C7C8  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8054C7CC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8054C7D0  28 00 00 00 */	cmplwi r0, 0
/* 8054C7D4  40 82 00 A8 */	bne lbl_8054C87C
/* 8054C7D8  38 00 FF FF */	li r0, -1
/* 8054C7DC  B0 1E 09 74 */	sth r0, 0x974(r30)
/* 8054C7E0  4B E7 2E C9 */	bl func_803BF6A8
/* 8054C7E4  4B E7 45 69 */	bl mMsg_Unset_LockContinue
/* 8054C7E8  80 1E 09 A0 */	lwz r0, 0x9a0(r30)
/* 8054C7EC  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8054C7F0  41 82 00 60 */	beq lbl_8054C850
/* 8054C7F4  40 80 00 1C */	bge lbl_8054C810
/* 8054C7F8  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8054C7FC  41 82 00 34 */	beq lbl_8054C830
/* 8054C800  40 80 00 40 */	bge lbl_8054C840
/* 8054C804  2C 00 00 19 */	cmpwi r0, 0x19
/* 8054C808  40 80 00 18 */	bge lbl_8054C820
/* 8054C80C  48 00 00 70 */	b lbl_8054C87C
lbl_8054C810:
/* 8054C810  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8054C814  41 82 00 5C */	beq lbl_8054C870
/* 8054C818  40 80 00 64 */	bge lbl_8054C87C
/* 8054C81C  48 00 00 44 */	b lbl_8054C860
lbl_8054C820:
/* 8054C820  7F C3 F3 78 */	mr r3, r30
/* 8054C824  7F E4 FB 78 */	mr r4, r31
/* 8054C828  4B FF F0 5D */	bl aCR_chk_art_complete
/* 8054C82C  48 00 00 50 */	b lbl_8054C87C
lbl_8054C830:
/* 8054C830  7F C3 F3 78 */	mr r3, r30
/* 8054C834  7F E4 FB 78 */	mr r4, r31
/* 8054C838  4B FF EF 29 */	bl aCR_chk_fossil_parts_complete
/* 8054C83C  48 00 00 40 */	b lbl_8054C87C
lbl_8054C840:
/* 8054C840  7F C3 F3 78 */	mr r3, r30
/* 8054C844  7F E4 FB 78 */	mr r4, r31
/* 8054C848  4B FF EF AD */	bl aCR_chk_fossil_complete
/* 8054C84C  48 00 00 30 */	b lbl_8054C87C
lbl_8054C850:
/* 8054C850  7F C3 F3 78 */	mr r3, r30
/* 8054C854  7F E4 FB 78 */	mr r4, r31
/* 8054C858  4B FF F1 3D */	bl aCR_chk_insect_complete
/* 8054C85C  48 00 00 20 */	b lbl_8054C87C
lbl_8054C860:
/* 8054C860  7F C3 F3 78 */	mr r3, r30
/* 8054C864  7F E4 FB 78 */	mr r4, r31
/* 8054C868  4B FF F1 B5 */	bl aCR_set_after_explain_insect
/* 8054C86C  48 00 00 10 */	b lbl_8054C87C
lbl_8054C870:
/* 8054C870  7F C3 F3 78 */	mr r3, r30
/* 8054C874  7F E4 FB 78 */	mr r4, r31
/* 8054C878  4B FF F0 95 */	bl aCR_chk_fish_complete
lbl_8054C87C:
/* 8054C87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054C880  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054C884  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054C888  7C 08 03 A6 */	mtlr r0
/* 8054C88C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054C890  4E 80 00 20 */	blr 
