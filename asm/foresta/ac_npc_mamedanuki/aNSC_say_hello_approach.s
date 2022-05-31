lbl_8055C3FC:
/* 8055C3FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C400  7C 08 02 A6 */	mflr r0
/* 8055C404  3C A0 80 65 */	lis r5, lit_1301@ha /* 0x806496F8@ha */
/* 8055C408  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C40C  C0 05 96 F8 */	lfs f0, lit_1301@l(r5)  /* 0x806496F8@l */
/* 8055C410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055C414  7C 7F 1B 78 */	mr r31, r3
/* 8055C418  93 C1 00 08 */	stw r30, 8(r1)
/* 8055C41C  7C 9E 23 78 */	mr r30, r4
/* 8055C420  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8055C424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8055C428  40 80 00 18 */	bge lbl_8055C440
/* 8055C42C  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8055C430  80 BF 09 94 */	lwz r5, 0x994(r31)
/* 8055C434  38 A5 00 01 */	addi r5, r5, 1
/* 8055C438  48 00 29 99 */	bl aNSC_setupAction
/* 8055C43C  48 00 00 40 */	b lbl_8055C47C
lbl_8055C440:
/* 8055C440  7F E4 FB 78 */	mr r4, r31
/* 8055C444  38 60 00 08 */	li r3, 8
/* 8055C448  4B E3 DE 1D */	bl mDemo_Check
/* 8055C44C  2C 03 00 00 */	cmpwi r3, 0
/* 8055C450  40 82 00 2C */	bne lbl_8055C47C
/* 8055C454  7F E4 FB 78 */	mr r4, r31
/* 8055C458  38 60 00 07 */	li r3, 7
/* 8055C45C  4B E3 DE 09 */	bl mDemo_Check
/* 8055C460  2C 03 00 00 */	cmpwi r3, 0
/* 8055C464  40 82 00 18 */	bne lbl_8055C47C
/* 8055C468  80 BF 09 94 */	lwz r5, 0x994(r31)
/* 8055C46C  7F E3 FB 78 */	mr r3, r31
/* 8055C470  7F C4 F3 78 */	mr r4, r30
/* 8055C474  38 A5 00 01 */	addi r5, r5, 1
/* 8055C478  48 00 29 59 */	bl aNSC_setupAction
lbl_8055C47C:
/* 8055C47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055C484  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055C488  7C 08 03 A6 */	mtlr r0
/* 8055C48C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C490  4E 80 00 20 */	blr 
