lbl_8052E678:
/* 8052E678  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052E67C  7C 08 02 A6 */	mflr r0
/* 8052E680  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052E684  39 61 00 20 */	addi r11, r1, 0x20
/* 8052E688  4B B6 C8 4D */	bl func_8009AED4
/* 8052E68C  7C 7E 1B 78 */	mr r30, r3
/* 8052E690  38 60 00 04 */	li r3, 4
/* 8052E694  38 80 00 02 */	li r4, 2
/* 8052E698  4B E6 9D E5 */	bl mDemo_Get_OrderValue
/* 8052E69C  54 7F 04 3F */	clrlwi. r31, r3, 0x10
/* 8052E6A0  41 82 00 B4 */	beq lbl_8052E754
/* 8052E6A4  38 60 00 04 */	li r3, 4
/* 8052E6A8  38 80 00 08 */	li r4, 8
/* 8052E6AC  4B E6 9D D1 */	bl mDemo_Get_OrderValue
/* 8052E6B0  2C 1F 00 09 */	cmpwi r31, 9
/* 8052E6B4  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 8052E6B8  41 80 00 28 */	blt lbl_8052E6E0
/* 8052E6BC  38 60 00 04 */	li r3, 4
/* 8052E6C0  38 80 00 02 */	li r4, 2
/* 8052E6C4  38 A0 00 00 */	li r5, 0
/* 8052E6C8  4B E6 9D 71 */	bl mDemo_Set_OrderValue
/* 8052E6CC  38 60 00 04 */	li r3, 4
/* 8052E6D0  38 80 00 08 */	li r4, 8
/* 8052E6D4  38 A0 00 00 */	li r5, 0
/* 8052E6D8  4B E6 9D 61 */	bl mDemo_Set_OrderValue
/* 8052E6DC  48 00 00 78 */	b lbl_8052E754
lbl_8052E6E0:
/* 8052E6E0  2C 1F 00 06 */	cmpwi r31, 6
/* 8052E6E4  41 82 00 40 */	beq lbl_8052E724
/* 8052E6E8  40 80 00 10 */	bge lbl_8052E6F8
/* 8052E6EC  2C 1F 00 05 */	cmpwi r31, 5
/* 8052E6F0  40 80 00 14 */	bge lbl_8052E704
/* 8052E6F4  48 00 00 30 */	b lbl_8052E724
lbl_8052E6F8:
/* 8052E6F8  2C 1F 00 08 */	cmpwi r31, 8
/* 8052E6FC  40 80 00 28 */	bge lbl_8052E724
/* 8052E700  48 00 00 0C */	b lbl_8052E70C
lbl_8052E704:
/* 8052E704  3B E0 00 00 */	li r31, 0
/* 8052E708  48 00 00 1C */	b lbl_8052E724
lbl_8052E70C:
/* 8052E70C  7F C3 F3 78 */	mr r3, r30
/* 8052E710  4B EA 37 F1 */	bl mNpc_GetNpcLooks
/* 8052E714  3C 80 80 6A */	lis r4, aNPC_uzai_feel@ha /* 0x806A1D1C@ha */
/* 8052E718  54 60 10 3A */	slwi r0, r3, 2
/* 8052E71C  38 64 1D 1C */	addi r3, r4, aNPC_uzai_feel@l /* 0x806A1D1C@l */
/* 8052E720  7F E3 00 2E */	lwzx r31, r3, r0
lbl_8052E724:
/* 8052E724  7F C3 F3 78 */	mr r3, r30
/* 8052E728  7F E4 FB 78 */	mr r4, r31
/* 8052E72C  7F A5 EB 78 */	mr r5, r29
/* 8052E730  48 00 25 9D */	bl aNPC_set_feel_info
/* 8052E734  38 60 00 04 */	li r3, 4
/* 8052E738  38 80 00 02 */	li r4, 2
/* 8052E73C  38 A0 00 00 */	li r5, 0
/* 8052E740  4B E6 9C F9 */	bl mDemo_Set_OrderValue
/* 8052E744  38 60 00 04 */	li r3, 4
/* 8052E748  38 80 00 08 */	li r4, 8
/* 8052E74C  38 A0 00 00 */	li r5, 0
/* 8052E750  4B E6 9C E9 */	bl mDemo_Set_OrderValue
lbl_8052E754:
/* 8052E754  39 61 00 20 */	addi r11, r1, 0x20
/* 8052E758  4B B6 C7 C9 */	bl func_8009AF20
/* 8052E75C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052E760  7C 08 03 A6 */	mtlr r0
/* 8052E764  38 21 00 20 */	addi r1, r1, 0x20
/* 8052E768  4E 80 00 20 */	blr 
