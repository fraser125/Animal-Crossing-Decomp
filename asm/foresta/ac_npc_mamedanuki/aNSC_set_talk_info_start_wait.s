lbl_8055C324:
/* 8055C324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C328  7C 08 02 A6 */	mflr r0
/* 8055C32C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055C330  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055C334  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C338  3C 63 00 03 */	addis r3, r3, 3
/* 8055C33C  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 8055C340  2C 00 00 01 */	cmpwi r0, 1
/* 8055C344  40 82 00 0C */	bne lbl_8055C350
/* 8055C348  38 60 17 22 */	li r3, 0x1722
/* 8055C34C  48 00 00 18 */	b lbl_8055C364
lbl_8055C350:
/* 8055C350  2C 00 00 03 */	cmpwi r0, 3
/* 8055C354  40 82 00 0C */	bne lbl_8055C360
/* 8055C358  38 60 10 E1 */	li r3, 0x10e1
/* 8055C35C  48 00 00 08 */	b lbl_8055C364
lbl_8055C360:
/* 8055C360  38 60 17 13 */	li r3, 0x1713
lbl_8055C364:
/* 8055C364  4B E3 C1 B1 */	bl mDemo_Set_msg_num
/* 8055C368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C36C  7C 08 03 A6 */	mtlr r0
/* 8055C370  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C374  4E 80 00 20 */	blr 
