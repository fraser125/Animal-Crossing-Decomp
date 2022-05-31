lbl_803D180C:
/* 803D180C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D1810  7C 08 02 A6 */	mflr r0
/* 803D1814  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D1818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D181C  7C 7F 1B 78 */	mr r31, r3
/* 803D1820  7C 83 23 78 */	mr r3, r4
/* 803D1824  4B FF FF 95 */	bl mNpc_GetNpcWorldNamePTableNo
/* 803D1828  7C 64 1B 79 */	or. r4, r3, r3
/* 803D182C  40 82 00 10 */	bne lbl_803D183C
/* 803D1830  3C 60 80 66 */	lis r3, l_no_name_npc_name@ha /* 0x8065B1D8@ha */
/* 803D1834  38 03 B1 D8 */	addi r0, r3, l_no_name_npc_name@l /* 0x8065B1D8@l */
/* 803D1838  7C 04 03 78 */	mr r4, r0
lbl_803D183C:
/* 803D183C  7F E3 FB 78 */	mr r3, r31
/* 803D1840  48 00 E6 7D */	bl mPr_CopyPlayerName
/* 803D1844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D1848  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D184C  7C 08 03 A6 */	mtlr r0
/* 803D1850  38 21 00 10 */	addi r1, r1, 0x10
/* 803D1854  4E 80 00 20 */	blr 
