lbl_803C064C:
/* 803C064C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0650  7C 08 02 A6 */	mflr r0
/* 803C0654  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C065C  3B E0 00 00 */	li r31, 0
/* 803C0660  93 C1 00 08 */	stw r30, 8(r1)
/* 803C0664  7C 7E 1B 78 */	mr r30, r3
lbl_803C0668:
/* 803C0668  7F C3 F3 78 */	mr r3, r30
/* 803C066C  7F E4 FB 78 */	mr r4, r31
/* 803C0670  38 A0 00 32 */	li r5, 0x32
/* 803C0674  38 C0 00 3C */	li r6, 0x3c
/* 803C0678  38 E0 00 32 */	li r7, 0x32
/* 803C067C  39 00 00 FF */	li r8, 0xff
/* 803C0680  4B FF FF 9D */	bl mMsg_Set_LineFontColor
/* 803C0684  3B FF 00 01 */	addi r31, r31, 1
/* 803C0688  2C 1F 00 04 */	cmpwi r31, 4
/* 803C068C  41 80 FF DC */	blt lbl_803C0668
/* 803C0690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C0698  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C069C  7C 08 03 A6 */	mtlr r0
/* 803C06A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C06A4  4E 80 00 20 */	blr 
