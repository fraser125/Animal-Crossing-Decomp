lbl_803CDECC:
/* 803CDECC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CDED0  7C 08 02 A6 */	mflr r0
/* 803CDED4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CDED8  39 61 00 30 */	addi r11, r1, 0x30
/* 803CDEDC  4B CC CF E5 */	bl func_8009AEC0
/* 803CDEE0  7C B9 2B 78 */	mr r25, r5
/* 803CDEE4  3C A0 81 17 */	lis r5, l_npc_mail@ha /* 0x8116B428@ha */
/* 803CDEE8  38 05 B4 28 */	addi r0, r5, l_npc_mail@l /* 0x8116B428@l */
/* 803CDEEC  8B 99 00 0D */	lbz r28, 0xd(r25)
/* 803CDEF0  7C 78 1B 78 */	mr r24, r3
/* 803CDEF4  7C DA 33 78 */	mr r26, r6
/* 803CDEF8  7C 1E 03 78 */	mr r30, r0
/* 803CDEFC  7C 83 23 78 */	mr r3, r4
/* 803CDF00  3B 60 00 00 */	li r27, 0
/* 803CDF04  4B FE 56 B5 */	bl mHS_get_arrange_idx
/* 803CDF08  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803CDF0C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CDF10  7F 03 C3 78 */	mr r3, r24
/* 803CDF14  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803CDF18  7C 80 2A 14 */	add r4, r0, r5
/* 803CDF1C  3F A4 00 01 */	addis r29, r4, 1
/* 803CDF20  3B BD 9C E8 */	addi r29, r29, -25368
/* 803CDF24  7F A4 EB 78 */	mr r4, r29
/* 803CDF28  48 01 22 1D */	bl mPr_CheckCmpPersonalID
/* 803CDF2C  2C 03 00 01 */	cmpwi r3, 1
/* 803CDF30  40 82 00 8C */	bne lbl_803CDFBC
/* 803CDF34  7F C3 F3 78 */	mr r3, r30
/* 803CDF38  4B FE E7 C9 */	bl mMl_clear_mail
/* 803CDF3C  38 7D 1A 30 */	addi r3, r29, 0x1a30
/* 803CDF40  38 80 00 0A */	li r4, 0xa
/* 803CDF44  4B FE E9 61 */	bl mMl_chk_mail_free_space
/* 803CDF48  7C 7F 1B 78 */	mr r31, r3
/* 803CDF4C  2C 1F FF FF */	cmpwi r31, -1
/* 803CDF50  41 82 00 38 */	beq lbl_803CDF88
/* 803CDF54  7F C3 F3 78 */	mr r3, r30
/* 803CDF58  7F 04 C3 78 */	mr r4, r24
/* 803CDF5C  7F 25 CB 78 */	mr r5, r25
/* 803CDF60  7F 46 D3 78 */	mr r6, r26
/* 803CDF64  7F 87 E3 78 */	mr r7, r28
/* 803CDF68  4B FF FE C1 */	bl mNpc_GetEventMail
/* 803CDF6C  1C 7F 01 2A */	mulli r3, r31, 0x12a
/* 803CDF70  7F C4 F3 78 */	mr r4, r30
/* 803CDF74  38 63 1A 30 */	addi r3, r3, 0x1a30
/* 803CDF78  7C 7D 1A 14 */	add r3, r29, r3
/* 803CDF7C  4B FE E9 F9 */	bl mMl_copy_mail
/* 803CDF80  3B 60 00 01 */	li r27, 1
/* 803CDF84  48 00 00 38 */	b lbl_803CDFBC
lbl_803CDF88:
/* 803CDF88  48 01 0E DD */	bl mPO_get_keep_mail_sum
/* 803CDF8C  2C 03 00 05 */	cmpwi r3, 5
/* 803CDF90  40 80 00 2C */	bge lbl_803CDFBC
/* 803CDF94  7F C3 F3 78 */	mr r3, r30
/* 803CDF98  7F 04 C3 78 */	mr r4, r24
/* 803CDF9C  7F 25 CB 78 */	mr r5, r25
/* 803CDFA0  7F 46 D3 78 */	mr r6, r26
/* 803CDFA4  7F 87 E3 78 */	mr r7, r28
/* 803CDFA8  4B FF FE 81 */	bl mNpc_GetEventMail
/* 803CDFAC  7F C3 F3 78 */	mr r3, r30
/* 803CDFB0  38 80 00 00 */	li r4, 0
/* 803CDFB4  48 01 10 AD */	bl mPO_receipt_proc
/* 803CDFB8  7C 7B 1B 78 */	mr r27, r3
lbl_803CDFBC:
/* 803CDFBC  7F 63 DB 78 */	mr r3, r27
/* 803CDFC0  39 61 00 30 */	addi r11, r1, 0x30
/* 803CDFC4  4B CC CF 49 */	bl func_8009AF0C
/* 803CDFC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CDFCC  7C 08 03 A6 */	mtlr r0
/* 803CDFD0  38 21 00 30 */	addi r1, r1, 0x30
/* 803CDFD4  4E 80 00 20 */	blr 
