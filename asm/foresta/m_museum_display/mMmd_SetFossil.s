lbl_803C7518:
/* 803C7518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C751C  7C 08 02 A6 */	mflr r0
/* 803C7520  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C7524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C7528  7C 7F 1B 79 */	or. r31, r3, r3
/* 803C752C  41 80 00 60 */	blt lbl_803C758C
/* 803C7530  2C 1F 00 19 */	cmpwi r31, 0x19
/* 803C7534  40 80 00 58 */	bge lbl_803C758C
/* 803C7538  4B FE C5 D1 */	bl mLd_PlayerManKindCheck
/* 803C753C  2C 03 00 00 */	cmpwi r3, 0
/* 803C7540  40 82 00 4C */	bne lbl_803C758C
/* 803C7544  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C7548  7F E3 0E 70 */	srawi r3, r31, 1
/* 803C754C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C7550  57 E5 17 7A */	rlwinm r5, r31, 2, 0x1d, 0x1d
/* 803C7554  3C 84 00 02 */	addis r4, r4, 2
/* 803C7558  38 00 00 0F */	li r0, 0xf
/* 803C755C  7C C4 1A 14 */	add r6, r4, r3
/* 803C7560  88 66 13 A8 */	lbz r3, 0x13a8(r6)
/* 803C7564  7C 00 28 30 */	slw r0, r0, r5
/* 803C7568  7C 60 00 78 */	andc r0, r3, r0
/* 803C756C  98 06 13 A8 */	stb r0, 0x13a8(r6)
/* 803C7570  88 64 60 03 */	lbz r3, 0x6003(r4)
/* 803C7574  88 86 13 A8 */	lbz r4, 0x13a8(r6)
/* 803C7578  38 03 00 01 */	addi r0, r3, 1
/* 803C757C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 803C7580  7C 00 28 30 */	slw r0, r0, r5
/* 803C7584  7C 80 03 78 */	or r0, r4, r0
/* 803C7588  98 06 13 A8 */	stb r0, 0x13a8(r6)
lbl_803C758C:
/* 803C758C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C7590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C7594  7C 08 03 A6 */	mtlr r0
/* 803C7598  38 21 00 10 */	addi r1, r1, 0x10
/* 803C759C  4E 80 00 20 */	blr 
