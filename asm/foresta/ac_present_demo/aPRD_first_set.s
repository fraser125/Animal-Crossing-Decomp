lbl_80483C94:
/* 80483C94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80483C98  7C 08 02 A6 */	mflr r0
/* 80483C9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80483CA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80483CA4  7C 9F 23 78 */	mr r31, r4
/* 80483CA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80483CAC  7C 7E 1B 78 */	mr r30, r3
/* 80483CB0  4B FF FF B1 */	bl aPRD_setup_present_npc_info
/* 80483CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80483CB8  40 82 00 10 */	bne lbl_80483CC8
/* 80483CBC  7F C3 F3 78 */	mr r3, r30
/* 80483CC0  4B EF 07 81 */	bl Actor_delete
/* 80483CC4  48 00 00 94 */	b lbl_80483D58
lbl_80483CC8:
/* 80483CC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80483CCC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80483CD0  3C 63 00 02 */	addis r3, r3, 2
/* 80483CD4  80 63 60 4C */	lwz r3, 0x604c(r3)
/* 80483CD8  28 03 00 00 */	cmplwi r3, 0
/* 80483CDC  41 82 00 7C */	beq lbl_80483D58
/* 80483CE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80483CE4  28 0C 00 00 */	cmplwi r12, 0
/* 80483CE8  41 82 00 70 */	beq lbl_80483D58
/* 80483CEC  38 00 00 06 */	li r0, 6
/* 80483CF0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D073@ha */
/* 80483CF4  90 01 00 08 */	stw r0, 8(r1)
/* 80483CF8  7F E3 FB 78 */	mr r3, r31
/* 80483CFC  38 84 D0 73 */	addi r4, r4, 0xD073 /* 0x0000D073@l */
/* 80483D00  38 A0 FF FF */	li r5, -1
/* 80483D04  89 1F 00 E4 */	lbz r8, 0xe4(r31)
/* 80483D08  38 C0 FF FF */	li r6, -1
/* 80483D0C  89 3F 00 E5 */	lbz r9, 0xe5(r31)
/* 80483D10  38 E0 FF FF */	li r7, -1
/* 80483D14  7D 08 07 74 */	extsb r8, r8
/* 80483D18  39 40 00 06 */	li r10, 6
/* 80483D1C  7D 29 07 74 */	extsb r9, r9
/* 80483D20  7D 89 03 A6 */	mtctr r12
/* 80483D24  4E 80 04 21 */	bctrl 
/* 80483D28  2C 03 00 01 */	cmpwi r3, 1
/* 80483D2C  40 82 00 2C */	bne lbl_80483D58
/* 80483D30  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D073@ha */
/* 80483D34  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 80483D38  38 84 D0 73 */	addi r4, r4, 0xD073 /* 0x0000D073@l */
/* 80483D3C  38 A0 00 04 */	li r5, 4
/* 80483D40  4B EF 20 01 */	bl Actor_info_fgName_search
/* 80483D44  90 7E 01 7C */	stw r3, 0x17c(r30)
/* 80483D48  7F C3 F3 78 */	mr r3, r30
/* 80483D4C  7F E4 FB 78 */	mr r4, r31
/* 80483D50  38 A0 00 01 */	li r5, 1
/* 80483D54  48 00 01 FD */	bl aPRD_setupAction
lbl_80483D58:
/* 80483D58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80483D5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80483D60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80483D64  7C 08 03 A6 */	mtlr r0
/* 80483D68  38 21 00 20 */	addi r1, r1, 0x20
/* 80483D6C  4E 80 00 20 */	blr 
