lbl_8062B424:
/* 8062B424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062B428  7C 08 02 A6 */	mflr r0
/* 8062B42C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062B430  38 00 00 00 */	li r0, 0
/* 8062B434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062B438  7C 7F 1B 78 */	mr r31, r3
/* 8062B43C  38 9F 01 10 */	addi r4, r31, 0x110
/* 8062B440  90 03 20 98 */	stw r0, 0x2098(r3)
/* 8062B444  98 03 20 95 */	stb r0, 0x2095(r3)
/* 8062B448  98 03 20 96 */	stb r0, 0x2096(r3)
/* 8062B44C  98 03 20 97 */	stb r0, 0x2097(r3)
/* 8062B450  90 03 20 A8 */	stw r0, 0x20a8(r3)
/* 8062B454  4B DC 56 BD */	bl mSc_data_bank_ct
/* 8062B458  38 7F 1D 90 */	addi r3, r31, 0x1d90
/* 8062B45C  4B D9 0C 4D */	bl Global_light_ct
/* 8062B460  38 7F 20 00 */	addi r3, r31, 0x2000
/* 8062B464  4B DC 5C 11 */	bl Door_info_ct
/* 8062B468  4B D6 A6 79 */	bl common_data_clear
/* 8062B46C  80 9F 01 0C */	lwz r4, 0x10c(r31)
/* 8062B470  7F E3 FB 78 */	mr r3, r31
/* 8062B474  4B DC 59 41 */	bl Scene_ct
/* 8062B478  38 7F 01 10 */	addi r3, r31, 0x110
/* 8062B47C  4B DC 57 15 */	bl mSc_decide_exchange_bank
/* 8062B480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062B484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062B488  7C 08 03 A6 */	mtlr r0
/* 8062B48C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062B490  4E 80 00 20 */	blr 
