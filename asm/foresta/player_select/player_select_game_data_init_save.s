lbl_8062BFBC:
/* 8062BFBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062BFC0  7C 08 02 A6 */	mflr r0
/* 8062BFC4  38 A0 00 02 */	li r5, 2
/* 8062BFC8  38 C0 00 00 */	li r6, 0
/* 8062BFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062BFD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062BFD4  7C 7F 1B 78 */	mr r31, r3
/* 8062BFD8  80 83 02 14 */	lwz r4, 0x214(r3)
/* 8062BFDC  4B DC 2B 89 */	bl mSDI_StartInitBefore
/* 8062BFE0  2C 03 00 01 */	cmpwi r3, 1
/* 8062BFE4  40 82 00 10 */	bne lbl_8062BFF4
/* 8062BFE8  38 00 00 01 */	li r0, 1
/* 8062BFEC  90 1F 02 18 */	stw r0, 0x218(r31)
/* 8062BFF0  48 00 00 0C */	b lbl_8062BFFC
lbl_8062BFF4:
/* 8062BFF4  38 00 00 04 */	li r0, 4
/* 8062BFF8  90 1F 02 18 */	stw r0, 0x218(r31)
lbl_8062BFFC:
/* 8062BFFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062C000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062C004  7C 08 03 A6 */	mtlr r0
/* 8062C008  38 21 00 10 */	addi r1, r1, 0x10
/* 8062C00C  4E 80 00 20 */	blr 
