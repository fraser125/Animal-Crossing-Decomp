lbl_8051BFAC:
/* 8051BFAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051BFB0  7C 08 02 A6 */	mflr r0
/* 8051BFB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051BFB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8051BFBC  4B B7 EF 15 */	bl func_8009AED0
/* 8051BFC0  7C 7C 1B 78 */	mr r28, r3
/* 8051BFC4  7C 9D 23 78 */	mr r29, r4
/* 8051BFC8  4B EA 36 E1 */	bl func_803BF6A8
/* 8051BFCC  7C 7E 1B 78 */	mr r30, r3
/* 8051BFD0  4B EA 4C C9 */	bl mMsg_Check_MainNormalContinue
/* 8051BFD4  2C 03 00 01 */	cmpwi r3, 1
/* 8051BFD8  40 82 00 A8 */	bne lbl_8051C080
/* 8051BFDC  3B E0 FF FF */	li r31, -1
/* 8051BFE0  4B E6 75 61 */	bl func_80383540
/* 8051BFE4  4B E6 7B 89 */	bl mChoice_Get_ChoseNum
/* 8051BFE8  2C 03 00 01 */	cmpwi r3, 1
/* 8051BFEC  41 82 00 48 */	beq lbl_8051C034
/* 8051BFF0  40 80 00 48 */	bge lbl_8051C038
/* 8051BFF4  2C 03 00 00 */	cmpwi r3, 0
/* 8051BFF8  40 80 00 08 */	bge lbl_8051C000
/* 8051BFFC  48 00 00 3C */	b lbl_8051C038
lbl_8051C000:
/* 8051C000  4B FF FD F5 */	bl func_8051BDF4
/* 8051C004  2C 03 00 00 */	cmpwi r3, 0
/* 8051C008  40 82 00 0C */	bne lbl_8051C014
/* 8051C00C  3B E0 00 01 */	li r31, 1
/* 8051C010  48 00 00 28 */	b lbl_8051C038
lbl_8051C014:
/* 8051C014  80 7C 09 A4 */	lwz r3, 0x9a4(r28)
/* 8051C018  4B EC EF 79 */	bl mSP_money_check
/* 8051C01C  2C 03 00 00 */	cmpwi r3, 0
/* 8051C020  40 82 00 0C */	bne lbl_8051C02C
/* 8051C024  3B E0 00 02 */	li r31, 2
/* 8051C028  48 00 00 10 */	b lbl_8051C038
lbl_8051C02C:
/* 8051C02C  3B E0 00 03 */	li r31, 3
/* 8051C030  48 00 00 08 */	b lbl_8051C038
lbl_8051C034:
/* 8051C034  3B E0 00 00 */	li r31, 0
lbl_8051C038:
/* 8051C038  2C 1F FF FF */	cmpwi r31, -1
/* 8051C03C  41 82 00 44 */	beq lbl_8051C080
/* 8051C040  3C 60 80 6A */	lis r3, next_msg@ha /* 0x806A01F0@ha */
/* 8051C044  57 FF 10 3A */	slwi r31, r31, 2
/* 8051C048  38 83 01 F0 */	addi r4, r3, next_msg@l /* 0x806A01F0@l */
/* 8051C04C  7F C3 F3 78 */	mr r3, r30
/* 8051C050  7C 84 F8 2E */	lwzx r4, r4, r31
/* 8051C054  4B EA 3F 71 */	bl mMsg_Set_continue_msg_num
/* 8051C058  7F C3 F3 78 */	mr r3, r30
/* 8051C05C  4B EA 4C CD */	bl mMsg_Set_ForceNext
/* 8051C060  3C 60 80 6A */	lis r3, next_act@ha /* 0x806A0200@ha */
/* 8051C064  81 9C 09 A0 */	lwz r12, 0x9a0(r28)
/* 8051C068  38 A3 02 00 */	addi r5, r3, next_act@l /* 0x806A0200@l */
/* 8051C06C  7F 83 E3 78 */	mr r3, r28
/* 8051C070  7F A4 EB 78 */	mr r4, r29
/* 8051C074  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8051C078  7D 89 03 A6 */	mtctr r12
/* 8051C07C  4E 80 04 21 */	bctrl 
lbl_8051C080:
/* 8051C080  39 61 00 20 */	addi r11, r1, 0x20
/* 8051C084  4B B7 EE 99 */	bl func_8009AF1C
/* 8051C088  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051C08C  7C 08 03 A6 */	mtlr r0
/* 8051C090  38 21 00 20 */	addi r1, r1, 0x20
/* 8051C094  4E 80 00 20 */	blr 
