lbl_805F816C:
/* 805F816C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F8170  7C 08 02 A6 */	mflr r0
/* 805F8174  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F8178  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805F817C  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805F8180  80 05 01 B0 */	lwz r0, 0x1b0(r5)
/* 805F8184  2C 00 00 03 */	cmpwi r0, 3
/* 805F8188  41 82 00 1C */	beq lbl_805F81A4
/* 805F818C  40 80 00 1C */	bge lbl_805F81A8
/* 805F8190  2C 00 00 02 */	cmpwi r0, 2
/* 805F8194  40 80 00 08 */	bge lbl_805F819C
/* 805F8198  48 00 00 10 */	b lbl_805F81A8
lbl_805F819C:
/* 805F819C  4B FF C8 09 */	bl mTG_nw_cover_proc
/* 805F81A0  48 00 00 08 */	b lbl_805F81A8
lbl_805F81A4:
/* 805F81A4  4B FF C5 55 */	bl mTG_nw_carpet_proc
lbl_805F81A8:
/* 805F81A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F81AC  7C 08 03 A6 */	mtlr r0
/* 805F81B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805F81B4  4E 80 00 20 */	blr 
