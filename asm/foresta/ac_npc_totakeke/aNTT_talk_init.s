lbl_80586D98:
/* 80586D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586D9C  7C 08 02 A6 */	mflr r0
/* 80586DA0  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 80586DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586DA8  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 80586DAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80586DB0  7C 7F 1B 78 */	mr r31, r3
/* 80586DB4  90 03 09 64 */	stw r0, 0x964(r3)
/* 80586DB8  4B E1 35 FD */	bl mDemo_Set_ListenAble
/* 80586DBC  7F E3 FB 78 */	mr r3, r31
/* 80586DC0  4B E1 34 D9 */	bl mDemo_Start
/* 80586DC4  88 1F 09 A4 */	lbz r0, 0x9a4(r31)
/* 80586DC8  2C 00 00 0D */	cmpwi r0, 0xd
/* 80586DCC  40 80 00 18 */	bge lbl_80586DE4
/* 80586DD0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80586DD4  40 80 00 08 */	bge lbl_80586DDC
/* 80586DD8  48 00 00 0C */	b lbl_80586DE4
lbl_80586DDC:
/* 80586DDC  38 60 00 00 */	li r3, 0
/* 80586DE0  4B E1 40 E9 */	bl mEv_SetTitleDemo
lbl_80586DE4:
/* 80586DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80586DE8  38 60 00 01 */	li r3, 1
/* 80586DEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80586DF0  7C 08 03 A6 */	mtlr r0
/* 80586DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80586DF8  4E 80 00 20 */	blr 
