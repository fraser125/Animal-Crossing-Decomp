lbl_803FCB4C:
/* 803FCB4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FCB50  7C 08 02 A6 */	mflr r0
/* 803FCB54  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FCB58  39 61 00 20 */	addi r11, r1, 0x20
/* 803FCB5C  4B C9 E3 79 */	bl func_8009AED4
/* 803FCB60  80 A3 00 00 */	lwz r5, 0(r3)
/* 803FCB64  3C C0 80 66 */	lis r6, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FCB68  80 E6 E7 08 */	lwz r7, l_mcd_file_table@l(r6)  /* 0x8065E708@l */
/* 803FCB6C  7C 9D 23 78 */	mr r29, r4
/* 803FCB70  2C 05 FF FF */	cmpwi r5, -1
/* 803FCB74  41 82 00 68 */	beq lbl_803FCBDC
/* 803FCB78  80 03 01 9C */	lwz r0, 0x19c(r3)
/* 803FCB7C  2C 00 00 01 */	cmpwi r0, 1
/* 803FCB80  40 82 00 10 */	bne lbl_803FCB90
/* 803FCB84  3C 80 80 66 */	lis r4, l_mCD_land_file_name_dummy@ha /* 0x8065E6A8@ha */
/* 803FCB88  38 04 E6 A8 */	addi r0, r4, l_mCD_land_file_name_dummy@l /* 0x8065E6A8@l */
/* 803FCB8C  7C 07 03 78 */	mr r7, r0
lbl_803FCB90:
/* 803FCB90  1C C5 00 94 */	mulli r6, r5, 0x94
/* 803FCB94  38 80 00 18 */	li r4, 0x18
/* 803FCB98  3B E6 00 54 */	addi r31, r6, 0x54
/* 803FCB9C  7F E3 FA 14 */	add r31, r3, r31
/* 803FCBA0  7C E3 3B 78 */	mr r3, r7
/* 803FCBA4  38 DF 00 74 */	addi r6, r31, 0x74
/* 803FCBA8  38 FF 00 6C */	addi r7, r31, 0x6c
/* 803FCBAC  4B FF CE 01 */	bl mCD_set_file_permission_bg
/* 803FCBB0  7C 60 1B 78 */	mr r0, r3
/* 803FCBB4  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 803FCBB8  7C 1E 03 78 */	mr r30, r0
/* 803FCBBC  4B FF D6 F9 */	bl mCD_TransErrorCode
/* 803FCBC0  2C 1E 00 01 */	cmpwi r30, 1
/* 803FCBC4  90 7F 00 78 */	stw r3, 0x78(r31)
/* 803FCBC8  40 82 00 18 */	bne lbl_803FCBE0
/* 803FCBCC  80 7D 00 00 */	lwz r3, 0(r29)
/* 803FCBD0  38 03 00 01 */	addi r0, r3, 1
/* 803FCBD4  90 1D 00 00 */	stw r0, 0(r29)
/* 803FCBD8  48 00 00 08 */	b lbl_803FCBE0
lbl_803FCBDC:
/* 803FCBDC  3B C0 FF FF */	li r30, -1
lbl_803FCBE0:
/* 803FCBE0  7F C3 F3 78 */	mr r3, r30
/* 803FCBE4  39 61 00 20 */	addi r11, r1, 0x20
/* 803FCBE8  4B C9 E3 39 */	bl func_8009AF20
/* 803FCBEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FCBF0  7C 08 03 A6 */	mtlr r0
/* 803FCBF4  38 21 00 20 */	addi r1, r1, 0x20
/* 803FCBF8  4E 80 00 20 */	blr 
