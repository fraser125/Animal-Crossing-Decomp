lbl_8051C220:
/* 8051C220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051C224  7C 08 02 A6 */	mflr r0
/* 8051C228  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051C22C  39 61 00 20 */	addi r11, r1, 0x20
/* 8051C230  4B B7 EC A1 */	bl func_8009AED0
/* 8051C234  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051C238  3C C0 80 6A */	lis r6, data_806A01B0@ha /* 0x806A01B0@ha */
/* 8051C23C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051C240  7C 7E 1B 78 */	mr r30, r3
/* 8051C244  3C A5 00 02 */	addis r5, r5, 2
/* 8051C248  7C 9F 23 78 */	mr r31, r4
/* 8051C24C  80 65 60 94 */	lwz r3, 0x6094(r5)
/* 8051C250  3B A6 01 B0 */	addi r29, r6, data_806A01B0@l /* 0x806A01B0@l */
/* 8051C254  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8051C258  28 00 00 00 */	cmplwi r0, 0
/* 8051C25C  40 82 00 98 */	bne lbl_8051C2F4
/* 8051C260  A0 63 00 0E */	lhz r3, 0xe(r3)
/* 8051C264  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8051C268  2C 00 00 02 */	cmpwi r0, 2
/* 8051C26C  40 82 00 38 */	bne lbl_8051C2A4
/* 8051C270  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 8051C274  2C 00 00 06 */	cmpwi r0, 6
/* 8051C278  40 82 00 2C */	bne lbl_8051C2A4
/* 8051C27C  A0 1E 09 A8 */	lhz r0, 0x9a8(r30)
/* 8051C280  7F E3 FB 78 */	mr r3, r31
/* 8051C284  38 80 21 01 */	li r4, 0x2101
/* 8051C288  38 A0 00 07 */	li r5, 7
/* 8051C28C  B0 1E 08 7E */	sth r0, 0x87e(r30)
/* 8051C290  38 C0 00 00 */	li r6, 0
/* 8051C294  38 E0 00 00 */	li r7, 0
/* 8051C298  4B EB E1 C9 */	bl mPlib_request_main_give_type1
/* 8051C29C  38 80 00 00 */	li r4, 0
/* 8051C2A0  48 00 00 18 */	b lbl_8051C2B8
lbl_8051C2A4:
/* 8051C2A4  B0 7E 09 AA */	sth r3, 0x9aa(r30)
/* 8051C2A8  38 80 00 01 */	li r4, 1
/* 8051C2AC  80 65 60 94 */	lwz r3, 0x6094(r5)
/* 8051C2B0  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8051C2B4  98 1E 08 81 */	stb r0, 0x881(r30)
lbl_8051C2B8:
/* 8051C2B8  54 9C 10 3A */	slwi r28, r4, 2
/* 8051C2BC  38 7D 00 68 */	addi r3, r29, 0x68
/* 8051C2C0  7C 03 E0 2E */	lwzx r0, r3, r28
/* 8051C2C4  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 8051C2C8  4B EA 33 E1 */	bl func_803BF6A8
/* 8051C2CC  38 9D 00 70 */	addi r4, r29, 0x70
/* 8051C2D0  7C 84 E0 2E */	lwzx r4, r4, r28
/* 8051C2D4  4B EA 3C F1 */	bl mMsg_Set_continue_msg_num
/* 8051C2D8  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8051C2DC  38 BD 00 60 */	addi r5, r29, 0x60
/* 8051C2E0  7F C3 F3 78 */	mr r3, r30
/* 8051C2E4  7F E4 FB 78 */	mr r4, r31
/* 8051C2E8  7C A5 E0 2E */	lwzx r5, r5, r28
/* 8051C2EC  7D 89 03 A6 */	mtctr r12
/* 8051C2F0  4E 80 04 21 */	bctrl 
lbl_8051C2F4:
/* 8051C2F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8051C2F8  4B B7 EC 25 */	bl func_8009AF1C
/* 8051C2FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051C300  7C 08 03 A6 */	mtlr r0
/* 8051C304  38 21 00 20 */	addi r1, r1, 0x20
/* 8051C308  4E 80 00 20 */	blr 
