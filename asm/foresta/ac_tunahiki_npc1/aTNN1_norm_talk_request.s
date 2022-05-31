lbl_8058F390:
/* 8058F390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058F394  7C 08 02 A6 */	mflr r0
/* 8058F398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058F39C  88 03 09 A7 */	lbz r0, 0x9a7(r3)
/* 8058F3A0  28 00 00 00 */	cmplwi r0, 0
/* 8058F3A4  40 82 00 1C */	bne lbl_8058F3C0
/* 8058F3A8  3C A0 80 59 */	lis r5, func_8058F2FC@ha /* 0x8058F2FC@ha */
/* 8058F3AC  7C 64 1B 78 */	mr r4, r3
/* 8058F3B0  38 A5 F2 FC */	addi r5, r5, func_8058F2FC@l /* 0x8058F2FC@l */
/* 8058F3B4  38 60 00 07 */	li r3, 7
/* 8058F3B8  4B E0 AD A5 */	bl mDemo_Request
/* 8058F3BC  48 00 00 0C */	b lbl_8058F3C8
lbl_8058F3C0:
/* 8058F3C0  38 00 00 00 */	li r0, 0
/* 8058F3C4  98 03 09 A7 */	stb r0, 0x9a7(r3)
lbl_8058F3C8:
/* 8058F3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058F3CC  7C 08 03 A6 */	mtlr r0
/* 8058F3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058F3D4  4E 80 00 20 */	blr 
