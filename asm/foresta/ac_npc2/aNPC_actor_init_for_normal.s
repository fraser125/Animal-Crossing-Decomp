lbl_80543810:
/* 80543810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80543814  7C 08 02 A6 */	mflr r0
/* 80543818  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054381C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80543820  7C 7F 1B 78 */	mr r31, r3
/* 80543824  3C 60 81 1F */	lis r3, data_811EBD30@ha /* 0x811EBD30@ha */
/* 80543828  93 C1 00 08 */	stw r30, 8(r1)
/* 8054382C  7C 9E 23 78 */	mr r30, r4
/* 80543830  38 83 BD 30 */	addi r4, r3, data_811EBD30@l /* 0x811EBD30@l */
/* 80543834  7F E5 FB 78 */	mr r5, r31
/* 80543838  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8054383C  80 C4 00 00 */	lwz r6, 0(r4)
/* 80543840  A0 83 08 E4 */	lhz r4, 0x8e4(r3)
/* 80543844  38 66 01 74 */	addi r3, r6, 0x174
/* 80543848  4B FF 77 55 */	bl aNPC_dma_cloth_data_check
/* 8054384C  98 7F 07 4C */	stb r3, 0x74c(r31)
/* 80543850  7F E3 FB 78 */	mr r3, r31
/* 80543854  7F C4 F3 78 */	mr r4, r30
/* 80543858  4B FF FF 45 */	bl func_8054379C
/* 8054385C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80543860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80543864  83 C1 00 08 */	lwz r30, 8(r1)
/* 80543868  7C 08 03 A6 */	mtlr r0
/* 8054386C  38 21 00 10 */	addi r1, r1, 0x10
/* 80543870  4E 80 00 20 */	blr 
