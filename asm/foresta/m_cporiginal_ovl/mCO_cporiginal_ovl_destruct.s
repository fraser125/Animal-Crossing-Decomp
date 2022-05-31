lbl_805CEB28:
/* 805CEB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CEB2C  7C 08 02 A6 */	mflr r0
/* 805CEB30  3C 80 81 21 */	lis r4, co_ovl_data@ha /* 0x81210F18@ha */
/* 805CEB34  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CEB38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CEB3C  7C 7F 1B 78 */	mr r31, r3
/* 805CEB40  38 64 0F 18 */	addi r3, r4, co_ovl_data@l /* 0x81210F18@l */
/* 805CEB44  80 63 00 00 */	lwz r3, 0(r3)
/* 805CEB48  28 03 00 00 */	cmplwi r3, 0
/* 805CEB4C  41 82 00 14 */	beq lbl_805CEB60
/* 805CEB50  4B DE D9 65 */	bl zelda_free
/* 805CEB54  3C 60 81 21 */	lis r3, co_ovl_data@ha /* 0x81210F18@ha */
/* 805CEB58  38 00 00 00 */	li r0, 0
/* 805CEB5C  90 03 0F 18 */	stw r0, co_ovl_data@l(r3)  /* 0x81210F18@l */
lbl_805CEB60:
/* 805CEB60  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 805CEB64  38 00 00 00 */	li r0, 0
/* 805CEB68  90 03 09 DC */	stw r0, 0x9dc(r3)
/* 805CEB6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CEB70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CEB74  7C 08 03 A6 */	mtlr r0
/* 805CEB78  38 21 00 10 */	addi r1, r1, 0x10
/* 805CEB7C  4E 80 00 20 */	blr 
