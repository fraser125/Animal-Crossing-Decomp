lbl_804D654C:
/* 804D654C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6550  7C 08 02 A6 */	mflr r0
/* 804D6554  7C 64 1B 78 */	mr r4, r3
/* 804D6558  34 A4 11 10 */	addic. r5, r4, 0x1110
/* 804D655C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6560  40 82 00 0C */	bne lbl_804D656C
/* 804D6564  38 60 00 00 */	li r3, 0
/* 804D6568  48 00 00 10 */	b lbl_804D6578
lbl_804D656C:
/* 804D656C  38 64 01 74 */	addi r3, r4, 0x174
/* 804D6570  38 84 01 E4 */	addi r4, r4, 0x1e4
/* 804D6574  4B E9 BA 8D */	bl cKF_SkeletonInfo_R_combine_play
lbl_804D6578:
/* 804D6578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D657C  7C 08 03 A6 */	mtlr r0
/* 804D6580  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6584  4E 80 00 20 */	blr 
