lbl_8062221C:
/* 8062221C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80622220  7C 08 02 A6 */	mflr r0
/* 80622224  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80622228  90 01 00 34 */	stw r0, 0x34(r1)
/* 8062222C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80622230  3D 65 00 02 */	addis r11, r5, 2
/* 80622234  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80622238  7C 9F 23 78 */	mr r31, r4
/* 8062223C  38 81 00 10 */	addi r4, r1, 0x10
/* 80622240  38 A0 00 00 */	li r5, 0
/* 80622244  81 43 00 00 */	lwz r10, 0(r3)
/* 80622248  81 83 00 04 */	lwz r12, 4(r3)
/* 8062224C  80 03 00 08 */	lwz r0, 8(r3)
/* 80622250  38 60 00 77 */	li r3, 0x77
/* 80622254  91 41 00 10 */	stw r10, 0x10(r1)
/* 80622258  7D 0A 43 78 */	mr r10, r8
/* 8062225C  7C E8 3B 78 */	mr r8, r7
/* 80622260  38 E0 00 00 */	li r7, 0
/* 80622264  91 81 00 14 */	stw r12, 0x14(r1)
/* 80622268  90 01 00 18 */	stw r0, 0x18(r1)
/* 8062226C  91 21 00 08 */	stw r9, 8(r1)
/* 80622270  7F E9 FB 78 */	mr r9, r31
/* 80622274  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80622278  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8062227C  7D 89 03 A6 */	mtctr r12
/* 80622280  4E 80 04 21 */	bctrl 
/* 80622284  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80622288  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8062228C  7C 08 03 A6 */	mtlr r0
/* 80622290  38 21 00 30 */	addi r1, r1, 0x30
/* 80622294  4E 80 00 20 */	blr 
