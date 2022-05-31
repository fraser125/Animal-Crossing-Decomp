lbl_8051DDD4:
/* 8051DDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051DDD8  7C 08 02 A6 */	mflr r0
/* 8051DDDC  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8051DDE0  3C E0 80 52 */	lis r7, aEDSN_think_proc@ha /* 0x8051DDA0@ha */
/* 8051DDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051DDE8  38 07 DD A0 */	addi r0, r7, aEDSN_think_proc@l /* 0x8051DDA0@l */
/* 8051DDEC  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8051DDF0  38 A0 00 09 */	li r5, 9
/* 8051DDF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051DDF8  3C E6 00 02 */	addis r7, r6, 2
/* 8051DDFC  7C 7F 1B 78 */	mr r31, r3
/* 8051DE00  38 C0 00 00 */	li r6, 0
/* 8051DE04  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8051DE08  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8051DE0C  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8051DE10  7D 89 03 A6 */	mtctr r12
/* 8051DE14  4E 80 04 21 */	bctrl 
/* 8051DE18  38 60 00 4C */	li r3, 0x4c
/* 8051DE1C  38 80 00 00 */	li r4, 0
/* 8051DE20  4B E8 02 BD */	bl mEv_get_common_area
/* 8051DE24  28 03 00 00 */	cmplwi r3, 0
/* 8051DE28  40 82 00 18 */	bne lbl_8051DE40
/* 8051DE2C  38 60 00 4C */	li r3, 0x4c
/* 8051DE30  38 80 00 00 */	li r4, 0
/* 8051DE34  4B E8 01 C1 */	bl mEv_reserve_common_area
/* 8051DE38  38 00 00 02 */	li r0, 2
/* 8051DE3C  90 03 00 04 */	stw r0, 4(r3)
lbl_8051DE40:
/* 8051DE40  90 7F 09 AC */	stw r3, 0x9ac(r31)
/* 8051DE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051DE48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051DE4C  7C 08 03 A6 */	mtlr r0
/* 8051DE50  38 21 00 10 */	addi r1, r1, 0x10
/* 8051DE54  4E 80 00 20 */	blr 
