lbl_805C820C:
/* 805C820C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C8210  7C 08 02 A6 */	mflr r0
/* 805C8214  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C8218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C821C  7C 7F 1B 78 */	mr r31, r3
/* 805C8220  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805C8224  80 63 09 EC */	lwz r3, 0x9ec(r3)
/* 805C8228  28 03 00 00 */	cmplwi r3, 0
/* 805C822C  41 82 00 08 */	beq lbl_805C8234
/* 805C8230  4B DF 42 85 */	bl zelda_free
lbl_805C8234:
/* 805C8234  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 805C8238  38 00 00 00 */	li r0, 0
/* 805C823C  90 03 09 EC */	stw r0, 0x9ec(r3)
/* 805C8240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C8244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C8248  7C 08 03 A6 */	mtlr r0
/* 805C824C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C8250  4E 80 00 20 */	blr 
