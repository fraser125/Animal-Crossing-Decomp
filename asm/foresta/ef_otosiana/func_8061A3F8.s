lbl_8061A3F8:
/* 8061A3F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061A3FC  7C 08 02 A6 */	mflr r0
/* 8061A400  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061A404  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061A408  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8061A40C  3D 65 00 02 */	addis r11, r5, 2
/* 8061A410  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8061A414  7C 9F 23 78 */	mr r31, r4
/* 8061A418  38 81 00 10 */	addi r4, r1, 0x10
/* 8061A41C  38 A0 00 00 */	li r5, 0
/* 8061A420  81 43 00 00 */	lwz r10, 0(r3)
/* 8061A424  81 83 00 04 */	lwz r12, 4(r3)
/* 8061A428  80 03 00 08 */	lwz r0, 8(r3)
/* 8061A42C  38 60 00 61 */	li r3, 0x61
/* 8061A430  91 41 00 10 */	stw r10, 0x10(r1)
/* 8061A434  7D 0A 43 78 */	mr r10, r8
/* 8061A438  7C E8 3B 78 */	mr r8, r7
/* 8061A43C  38 E0 00 00 */	li r7, 0
/* 8061A440  91 81 00 14 */	stw r12, 0x14(r1)
/* 8061A444  90 01 00 18 */	stw r0, 0x18(r1)
/* 8061A448  91 21 00 08 */	stw r9, 8(r1)
/* 8061A44C  7F E9 FB 78 */	mr r9, r31
/* 8061A450  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8061A454  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8061A458  7D 89 03 A6 */	mtctr r12
/* 8061A45C  4E 80 04 21 */	bctrl 
/* 8061A460  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061A464  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8061A468  7C 08 03 A6 */	mtlr r0
/* 8061A46C  38 21 00 30 */	addi r1, r1, 0x30
/* 8061A470  4E 80 00 20 */	blr 
