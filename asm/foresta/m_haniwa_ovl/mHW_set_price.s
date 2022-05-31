lbl_805DFD88:
/* 805DFD88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DFD8C  7C 08 02 A6 */	mflr r0
/* 805DFD90  39 00 00 00 */	li r8, 0
/* 805DFD94  39 20 00 01 */	li r9, 1
/* 805DFD98  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DFD9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805DFDA0  7C 9F 23 78 */	mr r31, r4
/* 805DFDA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805DFDA8  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805DFDAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805DFDB0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805DFDB4  80 06 04 80 */	lwz r0, 0x480(r6)
/* 805DFDB8  3C E3 00 01 */	addis r7, r3, 1
/* 805DFDBC  80 86 09 7C */	lwz r4, 0x97c(r6)
/* 805DFDC0  38 61 00 0C */	addi r3, r1, 0xc
/* 805DFDC4  1C A0 26 B0 */	mulli r5, r0, 0x26b0
/* 805DFDC8  81 46 09 9C */	lwz r10, 0x99c(r6)
/* 805DFDCC  80 04 00 44 */	lwz r0, 0x44(r4)
/* 805DFDD0  38 80 00 06 */	li r4, 6
/* 805DFDD4  38 C0 00 05 */	li r6, 5
/* 805DFDD8  7C A7 2A 14 */	add r5, r7, r5
/* 805DFDDC  54 00 18 38 */	slwi r0, r0, 3
/* 805DFDE0  38 E0 00 01 */	li r7, 1
/* 805DFDE4  7C A5 02 14 */	add r5, r5, r0
/* 805DFDE8  80 A5 C2 C0 */	lwz r5, -0x3d40(r5)
/* 805DFDEC  90 AA 00 18 */	stw r5, 0x18(r10)
/* 805DFDF0  4B DC F6 89 */	bl mFont_UnintToString
/* 805DFDF4  38 61 00 08 */	addi r3, r1, 8
/* 805DFDF8  38 81 00 0C */	addi r4, r1, 0xc
/* 805DFDFC  38 A0 00 06 */	li r5, 6
/* 805DFE00  38 C0 00 20 */	li r6, 0x20
/* 805DFE04  4B DD C8 61 */	bl mMl_strlen2
/* 805DFE08  80 01 00 08 */	lwz r0, 8(r1)
/* 805DFE0C  7C 7E 1B 78 */	mr r30, r3
/* 805DFE10  2C 00 00 01 */	cmpwi r0, 1
/* 805DFE14  40 82 00 08 */	bne lbl_805DFE1C
/* 805DFE18  3B DE FF FF */	addi r30, r30, -1
lbl_805DFE1C:
/* 805DFE1C  80 7F 00 00 */	lwz r3, 0(r31)
/* 805DFE20  7F C5 F3 78 */	mr r5, r30
/* 805DFE24  38 81 00 0C */	addi r4, r1, 0xc
/* 805DFE28  4B DD AB FD */	bl func_803BAA24
/* 805DFE2C  80 7F 00 00 */	lwz r3, 0(r31)
/* 805DFE30  38 00 00 20 */	li r0, 0x20
/* 805DFE34  7C 03 F1 AE */	stbx r0, r3, r30
/* 805DFE38  80 1F 00 00 */	lwz r0, 0(r31)
/* 805DFE3C  7C 7E 02 14 */	add r3, r30, r0
/* 805DFE40  38 03 00 01 */	addi r0, r3, 1
/* 805DFE44  90 1F 00 00 */	stw r0, 0(r31)
/* 805DFE48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805DFE4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805DFE50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DFE54  7C 08 03 A6 */	mtlr r0
/* 805DFE58  38 21 00 20 */	addi r1, r1, 0x20
/* 805DFE5C  4E 80 00 20 */	blr 
