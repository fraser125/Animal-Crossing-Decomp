lbl_804A1CC8:
/* 804A1CC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A1CCC  7C 08 02 A6 */	mflr r0
/* 804A1CD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A1CD4  39 61 00 20 */	addi r11, r1, 0x20
/* 804A1CD8  4B BF 91 FD */	bl func_8009AED4
/* 804A1CDC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804A1CE0  7C 9D 23 78 */	mr r29, r4
/* 804A1CE4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804A1CE8  3B C0 00 01 */	li r30, 1
/* 804A1CEC  3C A5 00 02 */	addis r5, r5, 2
/* 804A1CF0  83 E5 60 F4 */	lwz r31, 0x60f4(r5)
/* 804A1CF4  28 1F 00 00 */	cmplwi r31, 0
/* 804A1CF8  40 82 00 0C */	bne lbl_804A1D04
/* 804A1CFC  38 60 00 00 */	li r3, 0
/* 804A1D00  48 00 00 90 */	b lbl_804A1D90
lbl_804A1D04:
/* 804A1D04  3C A0 80 64 */	lis r5, lit_751@ha /* 0x80645C54@ha */
/* 804A1D08  C0 25 5C 54 */	lfs f1, lit_751@l(r5)  /* 0x80645C54@l */
/* 804A1D0C  4B FF FE 21 */	bl aSIGN_search_exist_npc_inCircle_forSign
/* 804A1D10  28 03 00 00 */	cmplwi r3, 0
/* 804A1D14  41 82 00 0C */	beq lbl_804A1D20
/* 804A1D18  38 60 00 00 */	li r3, 0
/* 804A1D1C  48 00 00 74 */	b lbl_804A1D90
lbl_804A1D20:
/* 804A1D20  38 00 00 0A */	li r0, 0xa
/* 804A1D24  38 60 00 00 */	li r3, 0
/* 804A1D28  7C 09 03 A6 */	mtctr r0
lbl_804A1D2C:
/* 804A1D2C  38 03 02 40 */	addi r0, r3, 0x240
/* 804A1D30  7C 1F 00 2E */	lwzx r0, r31, r0
/* 804A1D34  2C 00 00 00 */	cmpwi r0, 0
/* 804A1D38  40 82 00 0C */	bne lbl_804A1D44
/* 804A1D3C  3B C0 00 00 */	li r30, 0
/* 804A1D40  48 00 00 0C */	b lbl_804A1D4C
lbl_804A1D44:
/* 804A1D44  38 63 00 2C */	addi r3, r3, 0x2c
/* 804A1D48  42 00 FF E4 */	bdnz lbl_804A1D2C
lbl_804A1D4C:
/* 804A1D4C  2C 1E 00 00 */	cmpwi r30, 0
/* 804A1D50  41 82 00 0C */	beq lbl_804A1D5C
/* 804A1D54  38 60 00 00 */	li r3, 0
/* 804A1D58  48 00 00 38 */	b lbl_804A1D90
lbl_804A1D5C:
/* 804A1D5C  80 BD 00 00 */	lwz r5, 0(r29)
/* 804A1D60  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 804A1D64  80 1D 00 04 */	lwz r0, 4(r29)
/* 804A1D68  38 60 00 57 */	li r3, 0x57
/* 804A1D6C  90 BF 03 EC */	stw r5, 0x3ec(r31)
/* 804A1D70  90 1F 03 F0 */	stw r0, 0x3f0(r31)
/* 804A1D74  80 1D 00 08 */	lwz r0, 8(r29)
/* 804A1D78  90 1F 03 F4 */	stw r0, 0x3f4(r31)
/* 804A1D7C  48 18 C2 2D */	bl sAdo_OngenTrgStart
/* 804A1D80  7F E3 FB 78 */	mr r3, r31
/* 804A1D84  38 80 00 05 */	li r4, 5
/* 804A1D88  48 00 05 49 */	bl aSIGN_setup_action
/* 804A1D8C  38 60 00 01 */	li r3, 1
lbl_804A1D90:
/* 804A1D90  39 61 00 20 */	addi r11, r1, 0x20
/* 804A1D94  4B BF 91 8D */	bl func_8009AF20
/* 804A1D98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A1D9C  7C 08 03 A6 */	mtlr r0
/* 804A1DA0  38 21 00 20 */	addi r1, r1, 0x20
/* 804A1DA4  4E 80 00 20 */	blr 
