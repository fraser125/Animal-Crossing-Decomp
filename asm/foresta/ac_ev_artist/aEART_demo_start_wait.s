lbl_805197A4:
/* 805197A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805197A8  7C 08 02 A6 */	mflr r0
/* 805197AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805197B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805197B4  7C 9F 23 78 */	mr r31, r4
/* 805197B8  38 80 00 01 */	li r4, 1
/* 805197BC  93 C1 00 08 */	stw r30, 8(r1)
/* 805197C0  7C 7E 1B 78 */	mr r30, r3
/* 805197C4  38 60 00 04 */	li r3, 4
/* 805197C8  4B E7 EC B5 */	bl mDemo_Get_OrderValue
/* 805197CC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805197D0  2C 00 00 02 */	cmpwi r0, 2
/* 805197D4  40 82 00 58 */	bne lbl_8051982C
/* 805197D8  A0 BE 09 A0 */	lhz r5, 0x9a0(r30)
/* 805197DC  38 60 00 05 */	li r3, 5
/* 805197E0  38 80 00 00 */	li r4, 0
/* 805197E4  4B E7 EC 55 */	bl mDemo_Set_OrderValue
/* 805197E8  38 60 00 05 */	li r3, 5
/* 805197EC  38 80 00 01 */	li r4, 1
/* 805197F0  38 A0 00 07 */	li r5, 7
/* 805197F4  4B E7 EC 45 */	bl mDemo_Set_OrderValue
/* 805197F8  38 60 00 05 */	li r3, 5
/* 805197FC  38 80 00 02 */	li r4, 2
/* 80519800  38 A0 00 01 */	li r5, 1
/* 80519804  4B E7 EC 35 */	bl mDemo_Set_OrderValue
/* 80519808  4B EA 5E A1 */	bl func_803BF6A8
/* 8051980C  38 80 02 FA */	li r4, 0x2fa
/* 80519810  4B EA 67 B5 */	bl mMsg_Set_continue_msg_num
/* 80519814  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 80519818  7F C3 F3 78 */	mr r3, r30
/* 8051981C  7F E4 FB 78 */	mr r4, r31
/* 80519820  38 A0 00 01 */	li r5, 1
/* 80519824  7D 89 03 A6 */	mtctr r12
/* 80519828  4E 80 04 21 */	bctrl 
lbl_8051982C:
/* 8051982C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80519834  83 C1 00 08 */	lwz r30, 8(r1)
/* 80519838  7C 08 03 A6 */	mtlr r0
/* 8051983C  38 21 00 10 */	addi r1, r1, 0x10
/* 80519840  4E 80 00 20 */	blr 
