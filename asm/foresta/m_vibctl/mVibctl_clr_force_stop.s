lbl_80403FDC:
/* 80403FDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80403FE0  7C 08 02 A6 */	mflr r0
/* 80403FE4  3C A0 81 1C */	lis r5, mVib_info@ha /* 0x811C51D0@ha */
/* 80403FE8  7C 64 1B 78 */	mr r4, r3
/* 80403FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80403FF0  38 65 51 D0 */	addi r3, r5, mVib_info@l /* 0x811C51D0@l */
/* 80403FF4  4B FF FC 01 */	bl mVibInfo_clr_force_stop
/* 80403FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80403FFC  7C 08 03 A6 */	mtlr r0
/* 80404000  38 21 00 10 */	addi r1, r1, 0x10
/* 80404004  4E 80 00 20 */	blr 
