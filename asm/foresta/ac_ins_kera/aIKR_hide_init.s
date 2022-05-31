lbl_8059DAEC:
/* 8059DAEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059DAF0  7C 08 02 A6 */	mflr r0
/* 8059DAF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059DAF8  38 A1 00 08 */	addi r5, r1, 8
/* 8059DAFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059DB00  7C 7F 1B 78 */	mr r31, r3
/* 8059DB04  38 9F 02 3C */	addi r4, r31, 0x23c
/* 8059DB08  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 8059DB0C  38 7F 02 38 */	addi r3, r31, 0x238
/* 8059DB10  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059DB14  90 C1 00 08 */	stw r6, 8(r1)
/* 8059DB18  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059DB1C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059DB20  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059DB24  4B E0 78 45 */	bl mFI_Wpos2UtNum
/* 8059DB28  38 00 00 00 */	li r0, 0
/* 8059DB2C  98 1F 00 B5 */	stb r0, 0xb5(r31)
/* 8059DB30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059DB34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059DB38  7C 08 03 A6 */	mtlr r0
/* 8059DB3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8059DB40  4E 80 00 20 */	blr 
