lbl_8051C438:
/* 8051C438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C43C  7C 08 02 A6 */	mflr r0
/* 8051C440  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051C448  7C 9F 23 78 */	mr r31, r4
/* 8051C44C  93 C1 00 08 */	stw r30, 8(r1)
/* 8051C450  7C 7E 1B 78 */	mr r30, r3
/* 8051C454  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8051C458  28 00 00 11 */	cmplwi r0, 0x11
/* 8051C45C  40 82 00 40 */	bne lbl_8051C49C
/* 8051C460  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051C464  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051C468  3C 63 00 02 */	addis r3, r3, 2
/* 8051C46C  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8051C470  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8051C474  28 00 00 00 */	cmplwi r0, 0
/* 8051C478  40 82 00 24 */	bne lbl_8051C49C
/* 8051C47C  4B EA 32 2D */	bl func_803BF6A8
/* 8051C480  4B EA 48 CD */	bl mMsg_Unset_LockContinue
/* 8051C484  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8051C488  7F C3 F3 78 */	mr r3, r30
/* 8051C48C  7F E4 FB 78 */	mr r4, r31
/* 8051C490  38 A0 00 00 */	li r5, 0
/* 8051C494  7D 89 03 A6 */	mtctr r12
/* 8051C498  4E 80 04 21 */	bctrl 
lbl_8051C49C:
/* 8051C49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C4A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051C4A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051C4A8  7C 08 03 A6 */	mtlr r0
/* 8051C4AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C4B0  4E 80 00 20 */	blr 
