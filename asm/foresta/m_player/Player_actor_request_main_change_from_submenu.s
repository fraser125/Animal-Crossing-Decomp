lbl_804D4058:
/* 804D4058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D405C  7C 08 02 A6 */	mflr r0
/* 804D4060  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D4068  7C 9F 23 78 */	mr r31, r4
/* 804D406C  93 C1 00 08 */	stw r30, 8(r1)
/* 804D4070  7C 7E 1B 78 */	mr r30, r3
/* 804D4074  4B F0 75 45 */	bl mPlib_Check_SetOrderSubmenu
/* 804D4078  2C 03 00 00 */	cmpwi r3, 0
/* 804D407C  41 82 00 58 */	beq lbl_804D40D4
/* 804D4080  4B F0 58 2D */	bl mPlib_Get_change_data_from_submenu_p
/* 804D4084  80 83 00 00 */	lwz r4, 0(r3)
/* 804D4088  38 00 00 00 */	li r0, 0
/* 804D408C  2C 04 00 00 */	cmpwi r4, 0
/* 804D4090  41 80 00 10 */	blt lbl_804D40A0
/* 804D4094  2C 04 00 79 */	cmpwi r4, 0x79
/* 804D4098  40 80 00 08 */	bge lbl_804D40A0
/* 804D409C  38 00 00 01 */	li r0, 1
lbl_804D40A0:
/* 804D40A0  2C 00 00 00 */	cmpwi r0, 0
/* 804D40A4  41 82 00 34 */	beq lbl_804D40D8
/* 804D40A8  3C 60 80 65 */	lis r3, proc_17030@ha /* 0x806485CC@ha */
/* 804D40AC  54 80 10 3A */	slwi r0, r4, 2
/* 804D40B0  38 63 85 CC */	addi r3, r3, proc_17030@l /* 0x806485CC@l */
/* 804D40B4  7D 83 00 2E */	lwzx r12, r3, r0
/* 804D40B8  28 0C 00 00 */	cmplwi r12, 0
/* 804D40BC  40 82 00 08 */	bne lbl_804D40C4
/* 804D40C0  48 00 00 18 */	b lbl_804D40D8
lbl_804D40C4:
/* 804D40C4  7F C3 F3 78 */	mr r3, r30
/* 804D40C8  7F E4 FB 78 */	mr r4, r31
/* 804D40CC  7D 89 03 A6 */	mtctr r12
/* 804D40D0  4E 80 04 21 */	bctrl 
lbl_804D40D4:
/* 804D40D4  4B F0 57 E5 */	bl mPlib_Clear_change_data_from_submenu
lbl_804D40D8:
/* 804D40D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D40DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D40E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D40E4  7C 08 03 A6 */	mtlr r0
/* 804D40E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D40EC  4E 80 00 20 */	blr 
