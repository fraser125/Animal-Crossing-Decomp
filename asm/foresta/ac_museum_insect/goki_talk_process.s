lbl_8046AC40:
/* 8046AC40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046AC44  7C 08 02 A6 */	mflr r0
/* 8046AC48  3C 80 81 1D */	lis r4, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8046AC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046AC50  38 84 DF D0 */	addi r4, r4, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8046AC54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046AC58  7C 7F 1B 78 */	mr r31, r3
/* 8046AC5C  38 60 00 08 */	li r3, 8
/* 8046AC60  80 84 00 00 */	lwz r4, 0(r4)
/* 8046AC64  4B F2 F6 01 */	bl mDemo_Check
/* 8046AC68  2C 03 00 01 */	cmpwi r3, 1
/* 8046AC6C  40 82 00 28 */	bne lbl_8046AC94
/* 8046AC70  4B F2 F7 A1 */	bl mDemo_Check_ListenAble
/* 8046AC74  2C 03 00 00 */	cmpwi r3, 0
/* 8046AC78  40 82 00 24 */	bne lbl_8046AC9C
/* 8046AC7C  4B F2 F7 39 */	bl mDemo_Set_ListenAble
/* 8046AC80  38 60 00 01 */	li r3, 1
/* 8046AC84  4B F2 DC 9D */	bl mDemo_Set_camera
/* 8046AC88  38 60 00 00 */	li r3, 0
/* 8046AC8C  4B F7 2D 99 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 8046AC90  48 00 00 0C */	b lbl_8046AC9C
lbl_8046AC94:
/* 8046AC94  38 00 00 00 */	li r0, 0
/* 8046AC98  90 1F 00 04 */	stw r0, 4(r31)
lbl_8046AC9C:
/* 8046AC9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046ACA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046ACA4  7C 08 03 A6 */	mtlr r0
/* 8046ACA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8046ACAC  4E 80 00 20 */	blr 
