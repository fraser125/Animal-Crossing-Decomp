lbl_803CDA98:
/* 803CDA98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CDA9C  7C 08 02 A6 */	mflr r0
/* 803CDAA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CDAA4  39 61 00 30 */	addi r11, r1, 0x30
/* 803CDAA8  4B CC D4 1D */	bl func_8009AEC4
/* 803CDAAC  3D 00 81 17 */	lis r8, l_npc_mail@ha /* 0x8116B428@ha */
/* 803CDAB0  7C 79 1B 78 */	mr r25, r3
/* 803CDAB4  38 08 B4 28 */	addi r0, r8, l_npc_mail@l /* 0x8116B428@l */
/* 803CDAB8  7C 9A 23 78 */	mr r26, r4
/* 803CDABC  7C BB 2B 78 */	mr r27, r5
/* 803CDAC0  7C DC 33 78 */	mr r28, r6
/* 803CDAC4  7C FD 3B 78 */	mr r29, r7
/* 803CDAC8  7C 1F 03 78 */	mr r31, r0
/* 803CDACC  3B C0 00 00 */	li r30, 0
/* 803CDAD0  48 01 13 95 */	bl mPO_get_keep_mail_sum
/* 803CDAD4  2C 03 00 05 */	cmpwi r3, 5
/* 803CDAD8  40 80 00 38 */	bge lbl_803CDB10
/* 803CDADC  7F E3 FB 78 */	mr r3, r31
/* 803CDAE0  4B FE EC 21 */	bl mMl_clear_mail
/* 803CDAE4  7F E3 FB 78 */	mr r3, r31
/* 803CDAE8  7F 24 CB 78 */	mr r4, r25
/* 803CDAEC  7F 45 D3 78 */	mr r5, r26
/* 803CDAF0  7F 66 DB 78 */	mr r6, r27
/* 803CDAF4  7F 87 E3 78 */	mr r7, r28
/* 803CDAF8  7F A8 EB 78 */	mr r8, r29
/* 803CDAFC  4B FF FE A9 */	bl mNpc_GetRemailData
/* 803CDB00  7F E3 FB 78 */	mr r3, r31
/* 803CDB04  38 80 00 00 */	li r4, 0
/* 803CDB08  48 01 15 59 */	bl mPO_receipt_proc
/* 803CDB0C  7C 7E 1B 78 */	mr r30, r3
lbl_803CDB10:
/* 803CDB10  7F C3 F3 78 */	mr r3, r30
/* 803CDB14  39 61 00 30 */	addi r11, r1, 0x30
/* 803CDB18  4B CC D3 F9 */	bl func_8009AF10
/* 803CDB1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CDB20  7C 08 03 A6 */	mtlr r0
/* 803CDB24  38 21 00 30 */	addi r1, r1, 0x30
/* 803CDB28  4E 80 00 20 */	blr 
