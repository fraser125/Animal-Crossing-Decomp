lbl_804F3EFC:
/* 804F3EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3F00  7C 08 02 A6 */	mflr r0
/* 804F3F04  2C 04 00 00 */	cmpwi r4, 0
/* 804F3F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F3F0C  41 82 00 24 */	beq lbl_804F3F30
/* 804F3F10  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F3F14  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804F3F18  38 C4 83 54 */	addi r6, r4, lit_7381@l /* 0x80648354@l */
/* 804F3F1C  C0 45 65 68 */	lfs f2, lit_604@l(r5)  /* 0x80646568@l */
/* 804F3F20  C0 26 00 00 */	lfs f1, 0(r6)
/* 804F3F24  38 80 00 00 */	li r4, 0
/* 804F3F28  38 A0 00 22 */	li r5, 0x22
/* 804F3F2C  4B FF 1C D1 */	bl func_804E5BFC
lbl_804F3F30:
/* 804F3F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3F34  7C 08 03 A6 */	mtlr r0
/* 804F3F38  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3F3C  4E 80 00 20 */	blr 
