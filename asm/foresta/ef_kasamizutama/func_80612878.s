lbl_80612878:
/* 80612878  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061287C  7C 08 02 A6 */	mflr r0
/* 80612880  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 80612884  90 01 00 34 */	stw r0, 0x34(r1)
/* 80612888  39 6A 85 38 */	addi r11, r10, common_data@l /* 0x81138538@l */
/* 8061288C  7D 0A 43 78 */	mr r10, r8
/* 80612890  7C E8 3B 78 */	mr r8, r7
/* 80612894  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80612898  3D 6B 00 02 */	addis r11, r11, 2
/* 8061289C  38 E1 00 10 */	addi r7, r1, 0x10
/* 806128A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806128A4  7C 9E 23 78 */	mr r30, r4
/* 806128A8  38 81 00 14 */	addi r4, r1, 0x14
/* 806128AC  83 E3 00 00 */	lwz r31, 0(r3)
/* 806128B0  81 83 00 04 */	lwz r12, 4(r3)
/* 806128B4  80 03 00 08 */	lwz r0, 8(r3)
/* 806128B8  38 60 00 6B */	li r3, 0x6b
/* 806128BC  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 806128C0  38 A0 00 00 */	li r5, 0
/* 806128C4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 806128C8  91 81 00 18 */	stw r12, 0x18(r1)
/* 806128CC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806128D0  91 21 00 08 */	stw r9, 8(r1)
/* 806128D4  7F C9 F3 78 */	mr r9, r30
/* 806128D8  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 806128DC  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 806128E0  7D 89 03 A6 */	mtctr r12
/* 806128E4  4E 80 04 21 */	bctrl 
/* 806128E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806128EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806128F0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806128F4  7C 08 03 A6 */	mtlr r0
/* 806128F8  38 21 00 30 */	addi r1, r1, 0x30
/* 806128FC  4E 80 00 20 */	blr 