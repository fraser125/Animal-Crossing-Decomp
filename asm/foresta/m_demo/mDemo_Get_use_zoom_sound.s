lbl_803986E8:
/* 803986E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803986EC  7C 08 02 A6 */	mflr r0
/* 803986F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803986F4  4B FF FC D9 */	bl func_803983CC
/* 803986F8  2C 03 00 01 */	cmpwi r3, 1
/* 803986FC  40 82 00 18 */	bne lbl_80398714
/* 80398700  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398704  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80398708  80 63 00 00 */	lwz r3, 0(r3)
/* 8039870C  80 63 03 08 */	lwz r3, 0x308(r3)
/* 80398710  48 00 00 08 */	b lbl_80398718
lbl_80398714:
/* 80398714  38 60 00 00 */	li r3, 0
lbl_80398718:
/* 80398718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039871C  7C 08 03 A6 */	mtlr r0
/* 80398720  38 21 00 10 */	addi r1, r1, 0x10
/* 80398724  4E 80 00 20 */	blr 