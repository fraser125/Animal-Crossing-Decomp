lbl_803C9F88:
/* 803C9F88  3C 60 81 17 */	lis r3, mNtc_auto_nwrite_data@ha /* 0x8116B2B8@ha */
/* 803C9F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9F90  38 C3 B2 B8 */	addi r6, r3, mNtc_auto_nwrite_data@l /* 0x8116B2B8@l */
/* 803C9F94  39 20 00 00 */	li r9, 0
/* 803C9F98  38 60 00 00 */	li r3, 0
lbl_803C9F9C:
/* 803C9F9C  39 49 00 01 */	addi r10, r9, 1
/* 803C9FA0  7C A6 18 2E */	lwzx r5, r6, r3
/* 803C9FA4  20 0A 00 2B */	subfic r0, r10, 0x2b
/* 803C9FA8  7D 28 4B 78 */	mr r8, r9
/* 803C9FAC  90 A1 00 08 */	stw r5, 8(r1)
/* 803C9FB0  55 44 10 3A */	slwi r4, r10, 2
/* 803C9FB4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803C9FB8  7C 09 03 A6 */	mtctr r0
/* 803C9FBC  2C 0A 00 2B */	cmpwi r10, 0x2b
/* 803C9FC0  40 80 00 30 */	bge lbl_803C9FF0
lbl_803C9FC4:
/* 803C9FC4  7C E6 22 14 */	add r7, r6, r4
/* 803C9FC8  A0 01 00 0E */	lhz r0, 0xe(r1)
/* 803C9FCC  A0 A7 00 02 */	lhz r5, 2(r7)
/* 803C9FD0  7C 05 00 40 */	cmplw r5, r0
/* 803C9FD4  40 80 00 10 */	bge lbl_803C9FE4
/* 803C9FD8  80 07 00 00 */	lwz r0, 0(r7)
/* 803C9FDC  7D 48 53 78 */	mr r8, r10
/* 803C9FE0  90 01 00 0C */	stw r0, 0xc(r1)
lbl_803C9FE4:
/* 803C9FE4  39 4A 00 01 */	addi r10, r10, 1
/* 803C9FE8  38 84 00 04 */	addi r4, r4, 4
/* 803C9FEC  42 00 FF D8 */	bdnz lbl_803C9FC4
lbl_803C9FF0:
/* 803C9FF0  80 81 00 08 */	lwz r4, 8(r1)
/* 803C9FF4  55 05 10 3A */	slwi r5, r8, 2
/* 803C9FF8  39 29 00 01 */	addi r9, r9, 1
/* 803C9FFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803CA000  7C 86 29 2E */	stwx r4, r6, r5
/* 803CA004  2C 09 00 2B */	cmpwi r9, 0x2b
/* 803CA008  7C 06 19 2E */	stwx r0, r6, r3
/* 803CA00C  38 63 00 04 */	addi r3, r3, 4
/* 803CA010  41 80 FF 8C */	blt lbl_803C9F9C
/* 803CA014  38 21 00 10 */	addi r1, r1, 0x10
/* 803CA018  4E 80 00 20 */	blr 
