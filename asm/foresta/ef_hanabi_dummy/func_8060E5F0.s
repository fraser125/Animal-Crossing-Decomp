lbl_8060E5F0:
/* 8060E5F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060E5F4  7C 08 02 A6 */	mflr r0
/* 8060E5F8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8060E5FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060E600  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8060E604  3D 65 00 02 */	addis r11, r5, 2
/* 8060E608  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8060E60C  7C 9F 23 78 */	mr r31, r4
/* 8060E610  38 81 00 10 */	addi r4, r1, 0x10
/* 8060E614  38 A0 00 00 */	li r5, 0
/* 8060E618  81 43 00 00 */	lwz r10, 0(r3)
/* 8060E61C  81 83 00 04 */	lwz r12, 4(r3)
/* 8060E620  80 03 00 08 */	lwz r0, 8(r3)
/* 8060E624  38 60 00 51 */	li r3, 0x51
/* 8060E628  91 41 00 10 */	stw r10, 0x10(r1)
/* 8060E62C  7D 0A 43 78 */	mr r10, r8
/* 8060E630  7C E8 3B 78 */	mr r8, r7
/* 8060E634  38 E0 00 00 */	li r7, 0
/* 8060E638  91 81 00 14 */	stw r12, 0x14(r1)
/* 8060E63C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8060E640  91 21 00 08 */	stw r9, 8(r1)
/* 8060E644  7F E9 FB 78 */	mr r9, r31
/* 8060E648  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8060E64C  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8060E650  7D 89 03 A6 */	mtctr r12
/* 8060E654  4E 80 04 21 */	bctrl 
/* 8060E658  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060E65C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8060E660  7C 08 03 A6 */	mtlr r0
/* 8060E664  38 21 00 30 */	addi r1, r1, 0x30
/* 8060E668  4E 80 00 20 */	blr 