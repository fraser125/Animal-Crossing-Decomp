lbl_805E8F18:
/* 805E8F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E8F1C  7C 08 02 A6 */	mflr r0
/* 805E8F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E8F24  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E8F28  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805E8F2C  28 03 00 00 */	cmplwi r3, 0
/* 805E8F30  41 82 00 18 */	beq lbl_805E8F48
/* 805E8F34  81 83 02 EC */	lwz r12, 0x2ec(r3)
/* 805E8F38  38 63 00 08 */	addi r3, r3, 8
/* 805E8F3C  7D 89 03 A6 */	mtctr r12
/* 805E8F40  4E 80 04 21 */	bctrl 
/* 805E8F44  48 00 00 08 */	b lbl_805E8F4C
lbl_805E8F48:
/* 805E8F48  38 60 00 00 */	li r3, 0
lbl_805E8F4C:
/* 805E8F4C  38 03 2A 00 */	addi r0, r3, 0x2a00
/* 805E8F50  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 805E8F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E8F58  7C 08 03 A6 */	mtlr r0
/* 805E8F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 805E8F60  4E 80 00 20 */	blr 
