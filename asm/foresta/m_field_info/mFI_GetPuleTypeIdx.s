lbl_803A6264:
/* 803A6264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A6268  7C 08 02 A6 */	mflr r0
/* 803A626C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A6270  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A6274  7C 7F 1B 78 */	mr r31, r3
/* 803A6278  48 03 E7 E1 */	bl mRF_Type2BlockInfo
/* 803A627C  54 60 04 20 */	rlwinm r0, r3, 0, 0x10, 0x10
/* 803A6280  38 60 FF FF */	li r3, -1
/* 803A6284  28 00 80 00 */	cmplwi r0, 0x8000
/* 803A6288  40 82 00 0C */	bne lbl_803A6294
/* 803A628C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 803A6290  38 63 FF BB */	addi r3, r3, -69
lbl_803A6294:
/* 803A6294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A6298  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A629C  7C 08 03 A6 */	mtlr r0
/* 803A62A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A62A4  4E 80 00 20 */	blr 
