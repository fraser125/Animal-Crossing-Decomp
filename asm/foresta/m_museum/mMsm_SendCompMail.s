lbl_803C7308:
/* 803C7308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C730C  7C 08 02 A6 */	mflr r0
/* 803C7310  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C7314  39 61 00 20 */	addi r11, r1, 0x20
/* 803C7318  4B CD 3B B9 */	bl func_8009AED0
/* 803C731C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C7320  3B 80 00 00 */	li r28, 0
/* 803C7324  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803C7328  3F E3 00 01 */	addis r31, r3, 1
/* 803C732C  3B C3 00 20 */	addi r30, r3, 0x20
/* 803C7330  3B FF 91 20 */	addi r31, r31, -28384
lbl_803C7334:
/* 803C7334  83 BE 23 48 */	lwz r29, 0x2348(r30)
/* 803C7338  7F C3 F3 78 */	mr r3, r30
/* 803C733C  48 01 8D 09 */	bl mPr_NullCheckPersonalID
/* 803C7340  2C 03 00 00 */	cmpwi r3, 0
/* 803C7344  40 82 00 6C */	bne lbl_803C73B0
/* 803C7348  57 A0 06 73 */	rlwinm. r0, r29, 0, 0x19, 0x19
/* 803C734C  41 82 00 64 */	beq lbl_803C73B0
/* 803C7350  57 A0 06 31 */	rlwinm. r0, r29, 0, 0x18, 0x18
/* 803C7354  40 82 00 5C */	bne lbl_803C73B0
/* 803C7358  7F E3 FB 78 */	mr r3, r31
/* 803C735C  38 80 00 08 */	li r4, 8
/* 803C7360  4B FF 99 05 */	bl mMsg_Get_Length_String
/* 803C7364  7C 65 1B 78 */	mr r5, r3
/* 803C7368  7F E4 FB 78 */	mr r4, r31
/* 803C736C  38 60 00 00 */	li r3, 0
/* 803C7370  4B FE A5 E9 */	bl mHandbill_Set_free_str
/* 803C7374  3C 80 80 66 */	lis r4, data_8065A180@ha /* 0x8065A180@ha */
/* 803C7378  7F C3 F3 78 */	mr r3, r30
/* 803C737C  39 04 A1 80 */	addi r8, r4, data_8065A180@l /* 0x8065A180@l */
/* 803C7380  38 A0 30 30 */	li r5, 0x3030
/* 803C7384  7F 84 E3 78 */	mr r4, r28
/* 803C7388  38 C0 20 18 */	li r6, 0x2018
/* 803C738C  38 E0 02 2F */	li r7, 0x22f
/* 803C7390  39 20 00 01 */	li r9, 1
/* 803C7394  39 40 00 00 */	li r10, 0
/* 803C7398  4B FF 5B 49 */	bl mMl_send_mail_postoffice
/* 803C739C  2C 03 00 01 */	cmpwi r3, 1
/* 803C73A0  40 82 00 10 */	bne lbl_803C73B0
/* 803C73A4  7F C3 F3 78 */	mr r3, r30
/* 803C73A8  38 80 00 80 */	li r4, 0x80
/* 803C73AC  4B FF FE 09 */	bl mMsm_SetPrivateCompMail
lbl_803C73B0:
/* 803C73B0  3B 9C 00 01 */	addi r28, r28, 1
/* 803C73B4  3B DE 24 40 */	addi r30, r30, 0x2440
/* 803C73B8  2C 1C 00 04 */	cmpwi r28, 4
/* 803C73BC  41 80 FF 78 */	blt lbl_803C7334
/* 803C73C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803C73C4  4B CD 3B 59 */	bl func_8009AF1C
/* 803C73C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C73CC  7C 08 03 A6 */	mtlr r0
/* 803C73D0  38 21 00 20 */	addi r1, r1, 0x20
/* 803C73D4  4E 80 00 20 */	blr 
