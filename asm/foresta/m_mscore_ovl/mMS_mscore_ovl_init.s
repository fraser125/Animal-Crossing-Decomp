lbl_805E8AEC:
/* 805E8AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E8AF0  7C 08 02 A6 */	mflr r0
/* 805E8AF4  38 80 00 05 */	li r4, 5
/* 805E8AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E8AFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E8B00  93 C1 00 08 */	stw r30, 8(r1)
/* 805E8B04  7C 7E 1B 78 */	mr r30, r3
/* 805E8B08  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E8B0C  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805E8B10  38 65 02 94 */	addi r3, r5, 0x294
/* 805E8B14  83 E5 09 B0 */	lwz r31, 0x9b0(r5)
/* 805E8B18  7D 89 03 A6 */	mtctr r12
/* 805E8B1C  4E 80 04 21 */	bctrl 
/* 805E8B20  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805E8B24  38 A0 00 00 */	li r5, 0
/* 805E8B28  38 80 00 0A */	li r4, 0xa
/* 805E8B2C  38 00 FF FF */	li r0, -1
/* 805E8B30  90 A3 09 3C */	stw r5, 0x93c(r3)
/* 805E8B34  7F E3 FB 78 */	mr r3, r31
/* 805E8B38  90 BF 00 14 */	stw r5, 0x14(r31)
/* 805E8B3C  90 9F 00 18 */	stw r4, 0x18(r31)
/* 805E8B40  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805E8B44  4B DD 67 01 */	bl mMld_GetMelody
/* 805E8B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E8B4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E8B50  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E8B54  7C 08 03 A6 */	mtlr r0
/* 805E8B58  38 21 00 10 */	addi r1, r1, 0x10
/* 805E8B5C  4E 80 00 20 */	blr 
