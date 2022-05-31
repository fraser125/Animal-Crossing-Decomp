lbl_8052C4E8:
/* 8052C4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052C4EC  7C 08 02 A6 */	mflr r0
/* 8052C4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052C4F4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8052C4F8  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 8052C4FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052C500  93 C1 00 08 */	stw r30, 8(r1)
/* 8052C504  7C 7E 1B 78 */	mr r30, r3
/* 8052C508  41 82 00 9C */	beq lbl_8052C5A4
/* 8052C50C  3C 60 81 1D */	lis r3, data_811D3978@ha /* 0x811D3978@ha */
/* 8052C510  7F C4 F3 78 */	mr r4, r30
/* 8052C514  38 63 39 78 */	addi r3, r3, data_811D3978@l /* 0x811D3978@l */
/* 8052C518  80 63 00 00 */	lwz r3, 0(r3)
/* 8052C51C  3B E3 01 74 */	addi r31, r3, 0x174
/* 8052C520  7F E3 FB 78 */	mr r3, r31
/* 8052C524  4B FF FE 31 */	bl aNPC_get_same_cloth_data_area
/* 8052C528  2C 03 FF FF */	cmpwi r3, -1
/* 8052C52C  40 82 00 78 */	bne lbl_8052C5A4
/* 8052C530  7F E3 FB 78 */	mr r3, r31
/* 8052C534  4B FF FE E5 */	bl aNPC_get_new_cloth_data_area
/* 8052C538  2C 03 FF FF */	cmpwi r3, -1
/* 8052C53C  40 82 00 0C */	bne lbl_8052C548
/* 8052C540  7F E3 FB 78 */	mr r3, r31
/* 8052C544  4B FF FF 15 */	bl aNPC_get_no_use_cloth_data_area
lbl_8052C548:
/* 8052C548  2C 03 FF FF */	cmpwi r3, -1
/* 8052C54C  41 82 00 58 */	beq lbl_8052C5A4
/* 8052C550  1C 63 00 C0 */	mulli r3, r3, 0xc0
/* 8052C554  38 80 00 01 */	li r4, 1
/* 8052C558  38 00 00 00 */	li r0, 0
/* 8052C55C  7F FF 1A 14 */	add r31, r31, r3
/* 8052C560  98 9F 00 00 */	stb r4, 0(r31)
/* 8052C564  7F E3 FB 78 */	mr r3, r31
/* 8052C568  98 9F 00 01 */	stb r4, 1(r31)
/* 8052C56C  98 1F 00 06 */	stb r0, 6(r31)
/* 8052C570  B3 DF 00 04 */	sth r30, 4(r31)
/* 8052C574  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8052C578  4B FF FB 8D */	bl aNPC_getP_cloth_tex_rom
/* 8052C57C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8052C580  38 80 00 01 */	li r4, 1
/* 8052C584  38 00 00 00 */	li r0, 0
/* 8052C588  7F E3 FB 78 */	mr r3, r31
/* 8052C58C  98 9F 00 63 */	stb r4, 0x63(r31)
/* 8052C590  90 1F 00 78 */	stw r0, 0x78(r31)
/* 8052C594  4B FF FB D5 */	bl aNPC_getP_cloth_pal_rom
/* 8052C598  90 7F 00 70 */	stw r3, 0x70(r31)
/* 8052C59C  38 00 00 01 */	li r0, 1
/* 8052C5A0  98 1F 00 BF */	stb r0, 0xbf(r31)
lbl_8052C5A4:
/* 8052C5A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052C5A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052C5AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052C5B0  7C 08 03 A6 */	mtlr r0
/* 8052C5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8052C5B8  4E 80 00 20 */	blr 
