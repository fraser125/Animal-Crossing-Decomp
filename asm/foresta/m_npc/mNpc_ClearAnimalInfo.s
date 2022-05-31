lbl_803CC43C:
/* 803CC43C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CC440  7C 08 02 A6 */	mflr r0
/* 803CC444  38 80 09 88 */	li r4, 0x988
/* 803CC448  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CC44C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CC450  7C 7F 1B 78 */	mr r31, r3
/* 803CC454  4B C9 0C 15 */	bl bzero
/* 803CC458  7F E3 FB 78 */	mr r3, r31
/* 803CC45C  4B FF EF 29 */	bl mNpc_ClearAnimalPersonalID
/* 803CC460  38 7F 00 10 */	addi r3, r31, 0x10
/* 803CC464  38 80 00 07 */	li r4, 7
/* 803CC468  4B FF F2 4D */	bl mNpc_ClearAnimalMemory
/* 803CC46C  38 A0 00 00 */	li r5, 0
/* 803CC470  38 00 00 FF */	li r0, 0xff
/* 803CC474  B0 BF 08 E4 */	sth r5, 0x8e4(r31)
/* 803CC478  38 7F 08 9D */	addi r3, r31, 0x89d
/* 803CC47C  38 80 00 0A */	li r4, 0xa
/* 803CC480  98 BF 08 98 */	stb r5, 0x898(r31)
/* 803CC484  98 1F 08 99 */	stb r0, 0x899(r31)
/* 803CC488  98 1F 08 9A */	stb r0, 0x89a(r31)
/* 803CC48C  98 1F 08 9B */	stb r0, 0x89b(r31)
/* 803CC490  98 1F 08 9C */	stb r0, 0x89c(r31)
/* 803CC494  4B FF EE 9D */	bl mNpc_ClearBufSpace1
/* 803CC498  38 7F 08 A8 */	addi r3, r31, 0x8a8
/* 803CC49C  48 01 65 45 */	bl mQst_ClearContest
/* 803CC4A0  38 7F 08 D8 */	addi r3, r31, 0x8d8
/* 803CC4A4  4B FE 74 25 */	bl mLd_ClearLandName
/* 803CC4A8  38 80 00 00 */	li r4, 0
/* 803CC4AC  38 00 00 01 */	li r0, 1
/* 803CC4B0  B0 9F 08 E0 */	sth r4, 0x8e0(r31)
/* 803CC4B4  38 7F 08 D0 */	addi r3, r31, 0x8d0
/* 803CC4B8  B0 9F 08 E6 */	sth r4, 0x8e6(r31)
/* 803CC4BC  98 1F 08 E8 */	stb r0, 0x8e8(r31)
/* 803CC4C0  48 01 39 D5 */	bl func_803DFE94
/* 803CC4C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CC4C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CC4CC  7C 08 03 A6 */	mtlr r0
/* 803CC4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803CC4D4  4E 80 00 20 */	blr 
