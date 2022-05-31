lbl_803FC9EC:
/* 803FC9EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FC9F0  7C 08 02 A6 */	mflr r0
/* 803FC9F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FC9F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FC9FC  3B E0 00 00 */	li r31, 0
/* 803FCA00  93 C1 00 08 */	stw r30, 8(r1)
/* 803FCA04  7C 9E 23 78 */	mr r30, r4
/* 803FCA08  4B FF FF 15 */	bl mCD_repair_land
/* 803FCA0C  2C 03 00 00 */	cmpwi r3, 0
/* 803FCA10  41 82 00 14 */	beq lbl_803FCA24
/* 803FCA14  80 7E 00 00 */	lwz r3, 0(r30)
/* 803FCA18  3B E0 00 01 */	li r31, 1
/* 803FCA1C  38 03 00 01 */	addi r0, r3, 1
/* 803FCA20  90 1E 00 00 */	stw r0, 0(r30)
lbl_803FCA24:
/* 803FCA24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FCA28  7F E3 FB 78 */	mr r3, r31
/* 803FCA2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FCA30  83 C1 00 08 */	lwz r30, 8(r1)
/* 803FCA34  7C 08 03 A6 */	mtlr r0
/* 803FCA38  38 21 00 10 */	addi r1, r1, 0x10
/* 803FCA3C  4E 80 00 20 */	blr 
