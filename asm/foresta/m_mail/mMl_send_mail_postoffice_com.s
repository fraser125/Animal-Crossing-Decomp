lbl_803BCE4C:
/* 803BCE4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BCE50  7C 08 02 A6 */	mflr r0
/* 803BCE54  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BCE58  39 61 00 30 */	addi r11, r1, 0x30
/* 803BCE5C  4B CD E0 61 */	bl func_8009AEBC
/* 803BCE60  8B C1 00 3B */	lbz r30, 0x3b(r1)
/* 803BCE64  7C 77 1B 78 */	mr r23, r3
/* 803BCE68  7C 98 23 78 */	mr r24, r4
/* 803BCE6C  7C D9 33 78 */	mr r25, r6
/* 803BCE70  7C FA 3B 78 */	mr r26, r7
/* 803BCE74  7D 1B 43 78 */	mr r27, r8
/* 803BCE78  7D 3C 4B 78 */	mr r28, r9
/* 803BCE7C  7D 5D 53 78 */	mr r29, r10
/* 803BCE80  3B E0 00 00 */	li r31, 0
/* 803BCE84  48 02 1F E1 */	bl mPO_get_keep_mail_sum
/* 803BCE88  2C 03 00 05 */	cmpwi r3, 5
/* 803BCE8C  40 80 00 38 */	bge lbl_803BCEC4
/* 803BCE90  7E E3 BB 78 */	mr r3, r23
/* 803BCE94  7F 04 C3 78 */	mr r4, r24
/* 803BCE98  7F 25 CB 78 */	mr r5, r25
/* 803BCE9C  7F 46 D3 78 */	mr r6, r26
/* 803BCEA0  7F 87 E3 78 */	mr r7, r28
/* 803BCEA4  7F 68 DB 78 */	mr r8, r27
/* 803BCEA8  7F A9 EB 78 */	mr r9, r29
/* 803BCEAC  7F CA F3 78 */	mr r10, r30
/* 803BCEB0  4B FF FD C9 */	bl mMl_get_mail_to_player_com
/* 803BCEB4  7E E3 BB 78 */	mr r3, r23
/* 803BCEB8  38 80 00 00 */	li r4, 0
/* 803BCEBC  48 02 21 A5 */	bl mPO_receipt_proc
/* 803BCEC0  7C 7F 1B 78 */	mr r31, r3
lbl_803BCEC4:
/* 803BCEC4  7F E3 FB 78 */	mr r3, r31
/* 803BCEC8  39 61 00 30 */	addi r11, r1, 0x30
/* 803BCECC  4B CD E0 3D */	bl func_8009AF08
/* 803BCED0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BCED4  7C 08 03 A6 */	mtlr r0
/* 803BCED8  38 21 00 30 */	addi r1, r1, 0x30
/* 803BCEDC  4E 80 00 20 */	blr 
