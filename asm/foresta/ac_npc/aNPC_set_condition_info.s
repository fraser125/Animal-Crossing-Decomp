lbl_8052FCB8:
/* 8052FCB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052FCBC  7C 08 02 A6 */	mflr r0
/* 8052FCC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052FCC4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8052FCC8  7C 7F 1B 78 */	mr r31, r3
/* 8052FCCC  38 61 00 14 */	addi r3, r1, 0x14
/* 8052FCD0  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8052FCD4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8052FCD8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8052FCDC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8052FCE0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8052FCE4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8052FCE8  4B E7 77 49 */	bl mFI_GetUnitFG
/* 8052FCEC  90 7F 08 68 */	stw r3, 0x868(r31)
/* 8052FCF0  38 7F 08 6C */	addi r3, r31, 0x86c
/* 8052FCF4  38 9F 08 70 */	addi r4, r31, 0x870
/* 8052FCF8  38 A1 00 08 */	addi r5, r1, 8
/* 8052FCFC  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 8052FD00  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8052FD04  90 C1 00 08 */	stw r6, 8(r1)
/* 8052FD08  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052FD0C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8052FD10  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052FD14  4B E7 56 55 */	bl mFI_Wpos2UtNum
/* 8052FD18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052FD1C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8052FD20  7C 08 03 A6 */	mtlr r0
/* 8052FD24  38 21 00 30 */	addi r1, r1, 0x30
/* 8052FD28  4E 80 00 20 */	blr 
