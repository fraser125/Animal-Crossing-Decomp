lbl_804D7288:
/* 804D7288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D728C  7C 08 02 A6 */	mflr r0
/* 804D7290  38 60 00 00 */	li r3, 0
/* 804D7294  38 80 00 00 */	li r4, 0
/* 804D7298  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D729C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D72A0  4B EC 11 DD */	bl mDemo_Get_OrderValue
/* 804D72A4  54 7F 04 3F */	clrlwi. r31, r3, 0x10
/* 804D72A8  40 81 00 14 */	ble lbl_804D72BC
/* 804D72AC  38 60 00 00 */	li r3, 0
/* 804D72B0  38 80 00 00 */	li r4, 0
/* 804D72B4  38 A0 00 00 */	li r5, 0
/* 804D72B8  4B EC 11 81 */	bl mDemo_Set_OrderValue
lbl_804D72BC:
/* 804D72BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D72C0  7F E3 FB 78 */	mr r3, r31
/* 804D72C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D72C8  7C 08 03 A6 */	mtlr r0
/* 804D72CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804D72D0  4E 80 00 20 */	blr 
