lbl_80605230:
/* 80605230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80605234  7C 08 02 A6 */	mflr r0
/* 80605238  7C E8 3B 78 */	mr r8, r7
/* 8060523C  38 E0 00 00 */	li r7, 0
/* 80605240  90 01 00 24 */	stw r0, 0x24(r1)
/* 80605244  39 40 00 00 */	li r10, 0
/* 80605248  80 03 00 00 */	lwz r0, 0(r3)
/* 8060524C  81 23 00 04 */	lwz r9, 4(r3)
/* 80605250  80 A3 00 08 */	lwz r5, 8(r3)
/* 80605254  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80605258  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060525C  38 00 00 00 */	li r0, 0
/* 80605260  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80605264  91 21 00 14 */	stw r9, 0x14(r1)
/* 80605268  3D 63 00 02 */	addis r11, r3, 2
/* 8060526C  7C 89 23 78 */	mr r9, r4
/* 80605270  38 81 00 10 */	addi r4, r1, 0x10
/* 80605274  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80605278  38 60 00 09 */	li r3, 9
/* 8060527C  38 A0 00 00 */	li r5, 0
/* 80605280  90 01 00 08 */	stw r0, 8(r1)
/* 80605284  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80605288  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8060528C  7D 89 03 A6 */	mtctr r12
/* 80605290  4E 80 04 21 */	bctrl 
/* 80605294  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80605298  7C 08 03 A6 */	mtlr r0
/* 8060529C  38 21 00 20 */	addi r1, r1, 0x20
/* 806052A0  4E 80 00 20 */	blr 