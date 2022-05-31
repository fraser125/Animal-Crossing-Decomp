lbl_80600048:
/* 80600048  3C 80 80 60 */	lis r4, mTI_timeIn_ovl_move@ha /* 0x805FF8C8@ha */
/* 8060004C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 80600050  38 04 F8 C8 */	addi r0, r4, mTI_timeIn_ovl_move@l /* 0x805FF8C8@l */
/* 80600054  3C 60 80 60 */	lis r3, mTI_timeIn_ovl_draw@ha /* 0x805FFFF0@ha */
/* 80600058  90 05 09 0C */	stw r0, 0x90c(r5)
/* 8060005C  38 03 FF F0 */	addi r0, r3, mTI_timeIn_ovl_draw@l /* 0x805FFFF0@l */
/* 80600060  90 05 09 10 */	stw r0, 0x910(r5)
/* 80600064  4E 80 00 20 */	blr 
