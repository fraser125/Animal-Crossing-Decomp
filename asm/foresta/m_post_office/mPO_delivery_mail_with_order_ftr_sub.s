lbl_803DF214:
/* 803DF214  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 803DF218  7C 08 02 A6 */	mflr r0
/* 803DF21C  90 01 01 64 */	stw r0, 0x164(r1)
/* 803DF220  39 61 01 60 */	addi r11, r1, 0x160
/* 803DF224  4B CB BC B1 */	bl func_8009AED4
/* 803DF228  7C 7D 1B 78 */	mr r29, r3
/* 803DF22C  7C 9E 23 78 */	mr r30, r4
/* 803DF230  7C BF 2B 78 */	mr r31, r5
/* 803DF234  38 61 00 18 */	addi r3, r1, 0x18
/* 803DF238  4B FD D4 C9 */	bl mMl_clear_mail
/* 803DF23C  A0 9F 00 00 */	lhz r4, 0(r31)
/* 803DF240  38 61 00 08 */	addi r3, r1, 8
/* 803DF244  4B FD 67 61 */	bl mIN_copy_name_str
/* 803DF248  38 81 00 08 */	addi r4, r1, 8
/* 803DF24C  38 60 00 00 */	li r3, 0
/* 803DF250  38 A0 00 10 */	li r5, 0x10
/* 803DF254  4B FD 27 05 */	bl mHandbill_Set_free_str
/* 803DF258  88 9F 00 02 */	lbz r4, 2(r31)
/* 803DF25C  7F C6 F3 78 */	mr r6, r30
/* 803DF260  A0 BF 00 00 */	lhz r5, 0(r31)
/* 803DF264  38 61 00 18 */	addi r3, r1, 0x18
/* 803DF268  38 84 00 49 */	addi r4, r4, 0x49
/* 803DF26C  4B FF FF 29 */	bl mPO_delivery_mail_with_item
/* 803DF270  7F A3 EB 78 */	mr r3, r29
/* 803DF274  38 81 00 18 */	addi r4, r1, 0x18
/* 803DF278  4B FF FE A1 */	bl mPO_copy_contents
/* 803DF27C  39 61 01 60 */	addi r11, r1, 0x160
/* 803DF280  4B CB BC A1 */	bl func_8009AF20
/* 803DF284  80 01 01 64 */	lwz r0, 0x164(r1)
/* 803DF288  7C 08 03 A6 */	mtlr r0
/* 803DF28C  38 21 01 60 */	addi r1, r1, 0x160
/* 803DF290  4E 80 00 20 */	blr 
