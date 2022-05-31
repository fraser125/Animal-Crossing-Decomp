lbl_805AABFC:
/* 805AABFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AAC00  7C 08 02 A6 */	mflr r0
/* 805AAC04  7C 65 1B 78 */	mr r5, r3
/* 805AAC08  7C 83 23 78 */	mr r3, r4
/* 805AAC0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AAC10  38 85 00 28 */	addi r4, r5, 0x28
/* 805AAC14  48 08 33 95 */	bl sAdo_OngenTrgStart
/* 805AAC18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AAC1C  7C 08 03 A6 */	mtlr r0
/* 805AAC20  38 21 00 10 */	addi r1, r1, 0x10
/* 805AAC24  4E 80 00 20 */	blr 
