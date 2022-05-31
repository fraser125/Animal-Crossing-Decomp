lbl_805674A0:
/* 805674A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805674A4  7C 08 02 A6 */	mflr r0
/* 805674A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805674AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805674B0  7C 7F 1B 78 */	mr r31, r3
/* 805674B4  38 61 00 08 */	addi r3, r1, 8
/* 805674B8  80 9F 09 A8 */	lwz r4, 0x9a8(r31)
/* 805674BC  4B FF FF 35 */	bl aNPS2_GetCardPrivateNameCopy
/* 805674C0  2C 03 00 00 */	cmpwi r3, 0
/* 805674C4  41 82 00 68 */	beq lbl_8056752C
/* 805674C8  38 61 00 08 */	addi r3, r1, 8
/* 805674CC  4B FF FF 95 */	bl aNPS2_set_str_cpak_name
/* 805674D0  80 7F 09 A8 */	lwz r3, 0x9a8(r31)
/* 805674D4  4B E9 90 09 */	bl mCD_CheckCardPlayerNative
/* 805674D8  2C 03 00 00 */	cmpwi r3, 0
/* 805674DC  90 7F 09 A4 */	stw r3, 0x9a4(r31)
/* 805674E0  40 80 00 0C */	bge lbl_805674EC
/* 805674E4  3B E0 00 03 */	li r31, 3
/* 805674E8  48 00 00 48 */	b lbl_80567530
lbl_805674EC:
/* 805674EC  2C 03 00 04 */	cmpwi r3, 4
/* 805674F0  41 80 00 0C */	blt lbl_805674FC
/* 805674F4  3B E0 00 01 */	li r31, 1
/* 805674F8  48 00 00 38 */	b lbl_80567530
lbl_805674FC:
/* 805674FC  1C 83 24 40 */	mulli r4, r3, 0x2440
/* 80567500  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80567504  38 00 00 02 */	li r0, 2
/* 80567508  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056750C  7C 85 22 14 */	add r4, r5, r4
/* 80567510  88 84 10 A6 */	lbz r4, 0x10a6(r4)
/* 80567514  38 84 FF FF */	addi r4, r4, -1
/* 80567518  30 84 FF FF */	addic r4, r4, -1
/* 8056751C  7C 84 21 10 */	subfe r4, r4, r4
/* 80567520  7C 1F 20 38 */	and r31, r0, r4
/* 80567524  4B FF FE A9 */	bl func_805673CC
/* 80567528  48 00 00 08 */	b lbl_80567530
lbl_8056752C:
/* 8056752C  3B E0 00 03 */	li r31, 3
lbl_80567530:
/* 80567530  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80567534  7F E3 FB 78 */	mr r3, r31
/* 80567538  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056753C  7C 08 03 A6 */	mtlr r0
/* 80567540  38 21 00 20 */	addi r1, r1, 0x20
/* 80567544  4E 80 00 20 */	blr 
