lbl_80622DF8:
/* 80622DF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80622DFC  7C 08 02 A6 */	mflr r0
/* 80622E00  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 80622E04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80622E08  39 6A 85 38 */	addi r11, r10, common_data@l /* 0x81138538@l */
/* 80622E0C  7D 0A 43 78 */	mr r10, r8
/* 80622E10  7C E8 3B 78 */	mr r8, r7
/* 80622E14  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80622E18  3D 6B 00 02 */	addis r11, r11, 2
/* 80622E1C  38 E1 00 10 */	addi r7, r1, 0x10
/* 80622E20  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80622E24  7C 9E 23 78 */	mr r30, r4
/* 80622E28  38 81 00 14 */	addi r4, r1, 0x14
/* 80622E2C  83 E3 00 00 */	lwz r31, 0(r3)
/* 80622E30  81 83 00 04 */	lwz r12, 4(r3)
/* 80622E34  80 03 00 08 */	lwz r0, 8(r3)
/* 80622E38  38 60 00 36 */	li r3, 0x36
/* 80622E3C  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 80622E40  38 A0 00 00 */	li r5, 0
/* 80622E44  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80622E48  91 81 00 18 */	stw r12, 0x18(r1)
/* 80622E4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80622E50  91 21 00 08 */	stw r9, 8(r1)
/* 80622E54  7F C9 F3 78 */	mr r9, r30
/* 80622E58  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80622E5C  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80622E60  7D 89 03 A6 */	mtctr r12
/* 80622E64  4E 80 04 21 */	bctrl 
/* 80622E68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80622E6C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80622E70  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80622E74  7C 08 03 A6 */	mtlr r0
/* 80622E78  38 21 00 30 */	addi r1, r1, 0x30
/* 80622E7C  4E 80 00 20 */	blr 