lbl_803F0680:
/* 803F0680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F0684  7C 08 02 A6 */	mflr r0
/* 803F0688  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F068C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F0690  7C 7F 1B 78 */	mr r31, r3
/* 803F0694  88 03 00 5B */	lbz r0, 0x5b(r3)
/* 803F0698  2C 00 00 02 */	cmpwi r0, 2
/* 803F069C  41 82 00 58 */	beq lbl_803F06F4
/* 803F06A0  40 80 00 74 */	bge lbl_803F0714
/* 803F06A4  2C 00 00 01 */	cmpwi r0, 1
/* 803F06A8  40 80 00 08 */	bge lbl_803F06B0
/* 803F06AC  48 00 00 68 */	b lbl_803F0714
lbl_803F06B0:
/* 803F06B0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803F06B4  28 00 00 00 */	cmplwi r0, 0
/* 803F06B8  40 82 00 5C */	bne lbl_803F0714
/* 803F06BC  38 7F 00 34 */	addi r3, r31, 0x34
/* 803F06C0  38 9F 00 54 */	addi r4, r31, 0x54
/* 803F06C4  38 A0 00 01 */	li r5, 1
/* 803F06C8  4B C6 F8 AD */	bl osCreateMesgQueue
/* 803F06CC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 803F06D0  80 9F 00 08 */	lwz r4, 8(r31)
/* 803F06D4  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 803F06D8  4B C1 65 9D */	bl _JW_GetResourceAram
/* 803F06DC  80 7F 00 08 */	lwz r3, 8(r31)
/* 803F06E0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 803F06E4  4B C8 95 39 */	bl DCStoreRangeNoSync
/* 803F06E8  38 00 00 00 */	li r0, 0
/* 803F06EC  98 1F 00 5B */	stb r0, 0x5b(r31)
/* 803F06F0  48 00 00 24 */	b lbl_803F0714
lbl_803F06F4:
/* 803F06F4  38 7F 00 34 */	addi r3, r31, 0x34
/* 803F06F8  38 80 00 00 */	li r4, 0
/* 803F06FC  38 A0 00 00 */	li r5, 0
/* 803F0700  4B C6 FA 1D */	bl osRecvMesg
/* 803F0704  2C 03 00 00 */	cmpwi r3, 0
/* 803F0708  40 82 00 0C */	bne lbl_803F0714
/* 803F070C  7F E3 FB 78 */	mr r3, r31
/* 803F0710  4B FF FE 19 */	bl func_803F0528
lbl_803F0714:
/* 803F0714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F0718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F071C  7C 08 03 A6 */	mtlr r0
/* 803F0720  38 21 00 10 */	addi r1, r1, 0x10
/* 803F0724  4E 80 00 20 */	blr 
