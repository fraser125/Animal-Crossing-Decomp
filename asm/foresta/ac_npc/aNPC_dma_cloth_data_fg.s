lbl_8052C254:
/* 8052C254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052C258  7C 08 02 A6 */	mflr r0
/* 8052C25C  3C 60 81 1D */	lis r3, data_811D3978@ha /* 0x811D3978@ha */
/* 8052C260  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052C264  38 63 39 78 */	addi r3, r3, data_811D3978@l /* 0x811D3978@l */
/* 8052C268  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052C26C  93 C1 00 08 */	stw r30, 8(r1)
/* 8052C270  3B C0 00 00 */	li r30, 0
/* 8052C274  80 63 00 00 */	lwz r3, 0(r3)
/* 8052C278  3B E3 01 74 */	addi r31, r3, 0x174
lbl_8052C27C:
/* 8052C27C  A0 7F 00 04 */	lhz r3, 4(r31)
/* 8052C280  28 03 00 00 */	cmplwi r3, 0
/* 8052C284  41 82 00 50 */	beq lbl_8052C2D4
/* 8052C288  88 1F 00 00 */	lbz r0, 0(r31)
/* 8052C28C  28 00 00 01 */	cmplwi r0, 1
/* 8052C290  40 82 00 44 */	bne lbl_8052C2D4
/* 8052C294  28 03 FE 20 */	cmplwi r3, 0xfe20
/* 8052C298  41 82 00 1C */	beq lbl_8052C2B4
/* 8052C29C  28 03 24 00 */	cmplwi r3, 0x2400
/* 8052C2A0  41 80 00 0C */	blt lbl_8052C2AC
/* 8052C2A4  28 03 24 FF */	cmplwi r3, 0x24ff
/* 8052C2A8  41 80 00 0C */	blt lbl_8052C2B4
lbl_8052C2AC:
/* 8052C2AC  38 00 24 00 */	li r0, 0x2400
/* 8052C2B0  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8052C2B4:
/* 8052C2B4  7F E3 FB 78 */	mr r3, r31
/* 8052C2B8  4B FF FF 15 */	bl aNPC_dma_cloth_tex_data_fg
/* 8052C2BC  7F E3 FB 78 */	mr r3, r31
/* 8052C2C0  4B FF FF 51 */	bl aNPC_dma_cloth_pal_data_fg
/* 8052C2C4  38 00 00 00 */	li r0, 0
/* 8052C2C8  98 1F 00 00 */	stb r0, 0(r31)
/* 8052C2CC  98 1F 00 63 */	stb r0, 0x63(r31)
/* 8052C2D0  98 1F 00 BF */	stb r0, 0xbf(r31)
lbl_8052C2D4:
/* 8052C2D4  3B DE 00 01 */	addi r30, r30, 1
/* 8052C2D8  3B FF 00 C0 */	addi r31, r31, 0xc0
/* 8052C2DC  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8052C2E0  41 80 FF 9C */	blt lbl_8052C27C
/* 8052C2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052C2E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052C2EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052C2F0  7C 08 03 A6 */	mtlr r0
/* 8052C2F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8052C2F8  4E 80 00 20 */	blr 
