lbl_8052863C:
/* 8052863C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528640  7C 08 02 A6 */	mflr r0
/* 80528644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052864C  7C 7F 1B 78 */	mr r31, r3
/* 80528650  80 03 08 A0 */	lwz r0, 0x8a0(r3)
/* 80528654  28 00 00 00 */	cmplwi r0, 0
/* 80528658  40 82 00 44 */	bne lbl_8052869C
/* 8052865C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80528660  7F E5 FB 78 */	mr r5, r31
/* 80528664  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80528668  7C 86 23 78 */	mr r6, r4
/* 8052866C  3C 83 00 02 */	addis r4, r3, 2
/* 80528670  38 60 00 29 */	li r3, 0x29
/* 80528674  81 24 60 A0 */	lwz r9, 0x60a0(r4)
/* 80528678  38 80 00 04 */	li r4, 4
/* 8052867C  38 E0 FF FF */	li r7, -1
/* 80528680  39 00 00 00 */	li r8, 0
/* 80528684  81 89 00 00 */	lwz r12, 0(r9)
/* 80528688  7D 89 03 A6 */	mtctr r12
/* 8052868C  4E 80 04 21 */	bctrl 
/* 80528690  28 03 00 00 */	cmplwi r3, 0
/* 80528694  41 82 00 08 */	beq lbl_8052869C
/* 80528698  90 7F 08 A0 */	stw r3, 0x8a0(r31)
lbl_8052869C:
/* 8052869C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805286A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805286A4  7C 08 03 A6 */	mtlr r0
/* 805286A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805286AC  4E 80 00 20 */	blr 