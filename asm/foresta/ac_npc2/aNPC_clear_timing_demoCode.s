lbl_8053CF30:
/* 8053CF30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053CF34  7C 08 02 A6 */	mflr r0
/* 8053CF38  2C 03 00 00 */	cmpwi r3, 0
/* 8053CF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053CF40  40 82 00 18 */	bne lbl_8053CF58
/* 8053CF44  38 60 00 04 */	li r3, 4
/* 8053CF48  38 80 00 01 */	li r4, 1
/* 8053CF4C  38 A0 00 00 */	li r5, 0
/* 8053CF50  4B E5 B4 E9 */	bl mDemo_Set_OrderValue
/* 8053CF54  48 00 00 14 */	b lbl_8053CF68
lbl_8053CF58:
/* 8053CF58  38 60 00 04 */	li r3, 4
/* 8053CF5C  38 80 00 03 */	li r4, 3
/* 8053CF60  38 A0 00 00 */	li r5, 0
/* 8053CF64  4B E5 B4 D5 */	bl mDemo_Set_OrderValue
lbl_8053CF68:
/* 8053CF68  38 60 00 05 */	li r3, 5
/* 8053CF6C  38 80 00 00 */	li r4, 0
/* 8053CF70  38 A0 00 00 */	li r5, 0
/* 8053CF74  4B E5 B4 C5 */	bl mDemo_Set_OrderValue
/* 8053CF78  38 60 00 05 */	li r3, 5
/* 8053CF7C  38 80 00 01 */	li r4, 1
/* 8053CF80  38 A0 00 00 */	li r5, 0
/* 8053CF84  4B E5 B4 B5 */	bl mDemo_Set_OrderValue
/* 8053CF88  38 60 00 05 */	li r3, 5
/* 8053CF8C  38 80 00 02 */	li r4, 2
/* 8053CF90  38 A0 00 00 */	li r5, 0
/* 8053CF94  4B E5 B4 A5 */	bl mDemo_Set_OrderValue
/* 8053CF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053CF9C  7C 08 03 A6 */	mtlr r0
/* 8053CFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053CFA4  4E 80 00 20 */	blr 
