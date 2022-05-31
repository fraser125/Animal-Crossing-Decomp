lbl_8050B168:
/* 8050B168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050B16C  7C 08 02 A6 */	mflr r0
/* 8050B170  2C 05 00 01 */	cmpwi r5, 1
/* 8050B174  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050B178  40 82 00 0C */	bne lbl_8050B184
/* 8050B17C  4B FF FF 71 */	bl mRF_MakeBaseLandformStep3
/* 8050B180  48 00 00 08 */	b lbl_8050B188
lbl_8050B184:
/* 8050B184  4B FF F2 F1 */	bl mRF_MakeBaseLandformStep2
lbl_8050B188:
/* 8050B188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050B18C  7C 08 03 A6 */	mtlr r0
/* 8050B190  38 21 00 10 */	addi r1, r1, 0x10
/* 8050B194  4E 80 00 20 */	blr 
