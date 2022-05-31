lbl_8051AF58:
/* 8051AF58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051AF5C  7C 08 02 A6 */	mflr r0
/* 8051AF60  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051AF64  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8051AF68  7C 9F 23 78 */	mr r31, r4
/* 8051AF6C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8051AF70  7C 7E 1B 78 */	mr r30, r3
/* 8051AF74  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8051AF78  38 61 00 14 */	addi r3, r1, 0x14
/* 8051AF7C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8051AF80  90 81 00 14 */	stw r4, 0x14(r1)
/* 8051AF84  90 01 00 18 */	stw r0, 0x18(r1)
/* 8051AF88  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8051AF8C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8051AF90  4B FF FD 75 */	bl aEBR2_get_zone
/* 8051AF94  28 1F 00 00 */	cmplwi r31, 0
/* 8051AF98  98 7E 09 9E */	stb r3, 0x99e(r30)
/* 8051AF9C  41 82 00 28 */	beq lbl_8051AFC4
/* 8051AFA0  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8051AFA4  38 61 00 08 */	addi r3, r1, 8
/* 8051AFA8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8051AFAC  90 81 00 08 */	stw r4, 8(r1)
/* 8051AFB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8051AFB4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8051AFB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8051AFBC  4B FF FD 49 */	bl aEBR2_get_zone
/* 8051AFC0  98 7E 09 A0 */	stb r3, 0x9a0(r30)
lbl_8051AFC4:
/* 8051AFC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051AFC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8051AFCC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8051AFD0  7C 08 03 A6 */	mtlr r0
/* 8051AFD4  38 21 00 30 */	addi r1, r1, 0x30
/* 8051AFD8  4E 80 00 20 */	blr 
