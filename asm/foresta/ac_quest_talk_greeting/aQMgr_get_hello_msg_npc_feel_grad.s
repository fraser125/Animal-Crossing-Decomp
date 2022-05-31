lbl_80488B70:
/* 80488B70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80488B74  7C 08 02 A6 */	mflr r0
/* 80488B78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80488B7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80488B80  4B C1 23 4D */	bl func_8009AECC
/* 80488B84  7C 7B 1B 78 */	mr r27, r3
/* 80488B88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80488B8C  2C 1B 00 02 */	cmpwi r27, 2
/* 80488B90  7C 9C 23 78 */	mr r28, r4
/* 80488B94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80488B98  7C BD 2B 78 */	mr r29, r5
/* 80488B9C  3F E3 00 02 */	addis r31, r3, 2
/* 80488BA0  3B C0 FF FF */	li r30, -1
/* 80488BA4  40 82 00 58 */	bne lbl_80488BFC
/* 80488BA8  38 60 00 16 */	li r3, 0x16
/* 80488BAC  38 80 00 01 */	li r4, 1
/* 80488BB0  4B F1 4F 51 */	bl mEv_check_status
/* 80488BB4  2C 03 00 01 */	cmpwi r3, 1
/* 80488BB8  40 82 00 1C */	bne lbl_80488BD4
/* 80488BBC  7F 84 E3 78 */	mr r4, r28
/* 80488BC0  38 60 3B C1 */	li r3, 0x3bc1
/* 80488BC4  38 A0 00 03 */	li r5, 3
/* 80488BC8  4B FF F8 8D */	bl aQMgr_get_random_msg_no
/* 80488BCC  7C 7E 1B 78 */	mr r30, r3
/* 80488BD0  48 00 00 2C */	b lbl_80488BFC
lbl_80488BD4:
/* 80488BD4  38 60 00 11 */	li r3, 0x11
/* 80488BD8  38 80 00 01 */	li r4, 1
/* 80488BDC  4B F1 4F 25 */	bl mEv_check_status
/* 80488BE0  2C 03 00 01 */	cmpwi r3, 1
/* 80488BE4  40 82 00 18 */	bne lbl_80488BFC
/* 80488BE8  7F 84 E3 78 */	mr r4, r28
/* 80488BEC  38 60 3B 84 */	li r3, 0x3b84
/* 80488BF0  38 A0 00 03 */	li r5, 3
/* 80488BF4  4B FF F8 61 */	bl aQMgr_get_random_msg_no
/* 80488BF8  7C 7E 1B 78 */	mr r30, r3
lbl_80488BFC:
/* 80488BFC  2C 1E FF FF */	cmpwi r30, -1
/* 80488C00  40 82 00 2C */	bne lbl_80488C2C
/* 80488C04  3C 60 80 69 */	lis r3, l_grad_hello_msg_tbl@ha /* 0x8068ADC0@ha */
/* 80488C08  57 60 10 3A */	slwi r0, r27, 2
/* 80488C0C  38 63 AD C0 */	addi r3, r3, l_grad_hello_msg_tbl@l /* 0x8068ADC0@l */
/* 80488C10  88 DF 61 22 */	lbz r6, 0x6122(r31)
/* 80488C14  7C 83 00 2E */	lwzx r4, r3, r0
/* 80488C18  7F A3 EB 78 */	mr r3, r29
/* 80488C1C  7F 85 E3 78 */	mr r5, r28
/* 80488C20  38 E0 00 03 */	li r7, 3
/* 80488C24  4B FF F7 CD */	bl aQMgr_actor_get_my_hello_msg_com
/* 80488C28  7C 7E 1B 78 */	mr r30, r3
lbl_80488C2C:
/* 80488C2C  7F C3 F3 78 */	mr r3, r30
/* 80488C30  39 61 00 20 */	addi r11, r1, 0x20
/* 80488C34  4B C1 22 E5 */	bl func_8009AF18
/* 80488C38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80488C3C  7C 08 03 A6 */	mtlr r0
/* 80488C40  38 21 00 20 */	addi r1, r1, 0x20
/* 80488C44  4E 80 00 20 */	blr 
