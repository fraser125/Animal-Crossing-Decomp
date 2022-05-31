lbl_803D6100:
/* 803D6100  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D6104  7C 08 02 A6 */	mflr r0
/* 803D6108  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D610C  39 61 00 30 */	addi r11, r1, 0x30
/* 803D6110  4B CC 4D A9 */	bl func_8009AEB8
/* 803D6114  3C C0 81 17 */	lis r6, data_8116B378@ha /* 0x8116B378@ha */
/* 803D6118  7C 78 1B 78 */	mr r24, r3
/* 803D611C  3B E6 B3 78 */	addi r31, r6, data_8116B378@l /* 0x8116B378@l */
/* 803D6120  7C 99 23 78 */	mr r25, r4
/* 803D6124  7C BA 2B 78 */	mr r26, r5
/* 803D6128  3B 80 00 00 */	li r28, 0
/* 803D612C  3B DF 38 3C */	addi r30, r31, 0x383c
/* 803D6130  3A C0 00 00 */	li r22, 0
/* 803D6134  3A E0 00 00 */	li r23, 0
/* 803D6138  3B 60 00 00 */	li r27, 0
/* 803D613C  48 00 8D 29 */	bl mPO_get_keep_mail_sum
/* 803D6140  2C 03 00 05 */	cmpwi r3, 5
/* 803D6144  40 80 02 7C */	bge lbl_803D63C0
/* 803D6148  7F C3 F3 78 */	mr r3, r30
/* 803D614C  4B FE 65 B5 */	bl mMl_clear_mail
/* 803D6150  7F 43 D3 78 */	mr r3, r26
/* 803D6154  4B FE 81 4D */	bl mMpswd_password_zuru_check
/* 803D6158  2C 03 00 00 */	cmpwi r3, 0
/* 803D615C  40 82 01 54 */	bne lbl_803D62B0
/* 803D6160  7F 43 D3 78 */	mr r3, r26
/* 803D6164  4B FE 89 A1 */	bl mMpswd_check_npc_code
/* 803D6168  2C 03 00 01 */	cmpwi r3, 1
/* 803D616C  40 82 01 44 */	bne lbl_803D62B0
/* 803D6170  7F 43 D3 78 */	mr r3, r26
/* 803D6174  4B FE 88 FD */	bl mMpswd_check_present
/* 803D6178  2C 03 00 01 */	cmpwi r3, 1
/* 803D617C  40 82 01 34 */	bne lbl_803D62B0
/* 803D6180  7F 43 D3 78 */	mr r3, r26
/* 803D6184  4B FE 89 BD */	bl mMpswd_check_name
/* 803D6188  2C 03 00 01 */	cmpwi r3, 1
/* 803D618C  40 82 01 24 */	bne lbl_803D62B0
/* 803D6190  38 7F 39 78 */	addi r3, r31, 0x3978
/* 803D6194  38 80 00 08 */	li r4, 8
/* 803D6198  4B FF 51 99 */	bl mNpc_ClearBufSpace1
/* 803D619C  38 7F 39 88 */	addi r3, r31, 0x3988
/* 803D61A0  38 80 00 08 */	li r4, 8
/* 803D61A4  4B FF 51 8D */	bl mNpc_ClearBufSpace1
/* 803D61A8  88 1A 00 02 */	lbz r0, 2(r26)
/* 803D61AC  28 00 00 00 */	cmplwi r0, 0
/* 803D61B0  40 82 00 90 */	bne lbl_803D6240
/* 803D61B4  88 1A 00 03 */	lbz r0, 3(r26)
/* 803D61B8  A0 79 00 00 */	lhz r3, 0(r25)
/* 803D61BC  60 00 E0 00 */	ori r0, r0, 0xe000
/* 803D61C0  54 17 04 3E */	clrlwi r23, r0, 0x10
/* 803D61C4  54 7D 05 3E */	clrlwi r29, r3, 0x14
/* 803D61C8  7E E3 BB 78 */	mr r3, r23
/* 803D61CC  4B FF 8C 91 */	bl mNpc_GetLooks
/* 803D61D0  88 1A 00 03 */	lbz r0, 3(r26)
/* 803D61D4  54 76 06 3E */	clrlwi r22, r3, 0x18
/* 803D61D8  7C 1D 00 00 */	cmpw r29, r0
/* 803D61DC  40 82 00 0C */	bne lbl_803D61E8
/* 803D61E0  3B B6 02 56 */	addi r29, r22, 0x256
/* 803D61E4  48 00 00 2C */	b lbl_803D6210
lbl_803D61E8:
/* 803D61E8  7E E3 BB 78 */	mr r3, r23
/* 803D61EC  4B FF FA 7D */	bl mNpc_CheckIslandAnimalTableNo
/* 803D61F0  2C 03 00 01 */	cmpwi r3, 1
/* 803D61F4  40 82 00 0C */	bne lbl_803D6200
/* 803D61F8  3B B6 02 62 */	addi r29, r22, 0x262
/* 803D61FC  48 00 00 14 */	b lbl_803D6210
lbl_803D6200:
/* 803D6200  7E E3 BB 78 */	mr r3, r23
/* 803D6204  4B FF 8C 59 */	bl mNpc_GetLooks
/* 803D6208  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803D620C  3B A3 02 5C */	addi r29, r3, 0x25c
lbl_803D6210:
/* 803D6210  88 1A 00 03 */	lbz r0, 3(r26)
/* 803D6214  38 7F 39 78 */	addi r3, r31, 0x3978
/* 803D6218  60 00 E0 00 */	ori r0, r0, 0xe000
/* 803D621C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803D6220  4B FF B5 ED */	bl mNpc_GetNpcWorldNameTableNo
/* 803D6224  88 1A 00 03 */	lbz r0, 3(r26)
/* 803D6228  38 7F 39 88 */	addi r3, r31, 0x3988
/* 803D622C  60 00 E0 00 */	ori r0, r0, 0xe000
/* 803D6230  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803D6234  4B FF B5 D9 */	bl mNpc_GetNpcWorldNameTableNo
/* 803D6238  3A E0 00 01 */	li r23, 1
/* 803D623C  48 00 00 60 */	b lbl_803D629C
lbl_803D6240:
/* 803D6240  88 7A 00 03 */	lbz r3, 3(r26)
/* 803D6244  3B A3 02 68 */	addi r29, r3, 0x268
/* 803D6248  4B FE 88 95 */	bl mMpswd_get_sp_npc_num
/* 803D624C  7C 60 1B 78 */	mr r0, r3
/* 803D6250  38 7F 39 78 */	addi r3, r31, 0x3978
/* 803D6254  7C 1B 03 78 */	mr r27, r0
/* 803D6258  7F 64 DB 78 */	mr r4, r27
/* 803D625C  4B FF B8 9D */	bl mNpc_GetActorWorldName
/* 803D6260  7F 64 DB 78 */	mr r4, r27
/* 803D6264  38 7F 39 88 */	addi r3, r31, 0x3988
/* 803D6268  4B FF B8 91 */	bl mNpc_GetActorWorldName
/* 803D626C  38 7F 39 88 */	addi r3, r31, 0x3988
/* 803D6270  88 03 00 04 */	lbz r0, 4(r3)
/* 803D6274  28 00 00 0A */	cmplwi r0, 0xa
/* 803D6278  40 82 00 1C */	bne lbl_803D6294
/* 803D627C  88 03 00 05 */	lbz r0, 5(r3)
/* 803D6280  28 00 00 C3 */	cmplwi r0, 0xc3
/* 803D6284  40 82 00 10 */	bne lbl_803D6294
/* 803D6288  38 00 00 20 */	li r0, 0x20
/* 803D628C  98 03 00 04 */	stb r0, 4(r3)
/* 803D6290  98 03 00 05 */	stb r0, 5(r3)
lbl_803D6294:
/* 803D6294  3A E0 00 01 */	li r23, 1
/* 803D6298  3B 60 00 01 */	li r27, 1
lbl_803D629C:
/* 803D629C  A0 1A 00 00 */	lhz r0, 0(r26)
/* 803D62A0  28 00 FF FF */	cmplwi r0, 0xffff
/* 803D62A4  41 82 00 14 */	beq lbl_803D62B8
/* 803D62A8  7C 1C 03 78 */	mr r28, r0
/* 803D62AC  48 00 00 0C */	b lbl_803D62B8
lbl_803D62B0:
/* 803D62B0  88 79 00 0D */	lbz r3, 0xd(r25)
/* 803D62B4  3B A3 02 88 */	addi r29, r3, 0x288
lbl_803D62B8:
/* 803D62B8  7F 04 C3 78 */	mr r4, r24
/* 803D62BC  38 60 00 00 */	li r3, 0
/* 803D62C0  38 A0 00 08 */	li r5, 8
/* 803D62C4  4B FD B6 95 */	bl mHandbill_Set_free_str
/* 803D62C8  38 9F 39 78 */	addi r4, r31, 0x3978
/* 803D62CC  38 60 00 01 */	li r3, 1
/* 803D62D0  38 A0 00 08 */	li r5, 8
/* 803D62D4  4B FD B6 85 */	bl mHandbill_Set_free_str
/* 803D62D8  38 9A 00 0F */	addi r4, r26, 0xf
/* 803D62DC  38 60 00 02 */	li r3, 2
/* 803D62E0  38 A0 00 08 */	li r5, 8
/* 803D62E4  4B FD B6 75 */	bl mHandbill_Set_free_str
/* 803D62E8  38 9A 00 07 */	addi r4, r26, 7
/* 803D62EC  38 60 00 03 */	li r3, 3
/* 803D62F0  38 A0 00 08 */	li r5, 8
/* 803D62F4  4B FD B6 65 */	bl mHandbill_Set_free_str
/* 803D62F8  57 80 04 3F */	clrlwi. r0, r28, 0x10
/* 803D62FC  41 82 00 2C */	beq lbl_803D6328
/* 803D6300  38 7F 39 78 */	addi r3, r31, 0x3978
/* 803D6304  38 80 00 10 */	li r4, 0x10
/* 803D6308  4B FF 50 29 */	bl mNpc_ClearBufSpace1
/* 803D630C  7F 84 E3 78 */	mr r4, r28
/* 803D6310  38 7F 39 78 */	addi r3, r31, 0x3978
/* 803D6314  4B FD F6 91 */	bl mIN_copy_name_str
/* 803D6318  38 9F 39 78 */	addi r4, r31, 0x3978
/* 803D631C  38 60 00 04 */	li r3, 4
/* 803D6320  38 A0 00 10 */	li r5, 0x10
/* 803D6324  4B FD B6 35 */	bl mHandbill_Set_free_str
lbl_803D6328:
/* 803D6328  38 7F 39 78 */	addi r3, r31, 0x3978
/* 803D632C  38 80 00 08 */	li r4, 8
/* 803D6330  4B FF 50 01 */	bl mNpc_ClearBufSpace1
/* 803D6334  7F 24 CB 78 */	mr r4, r25
/* 803D6338  38 7F 39 78 */	addi r3, r31, 0x3978
/* 803D633C  4B FF B6 15 */	bl mNpc_GetNpcWorldNameAnm
/* 803D6340  38 9F 39 78 */	addi r4, r31, 0x3978
/* 803D6344  38 60 00 06 */	li r3, 6
/* 803D6348  38 A0 00 08 */	li r5, 8
/* 803D634C  4B FD B6 0D */	bl mHandbill_Set_free_str
/* 803D6350  4B FF 79 61 */	bl mNpc_GetPaperType
/* 803D6354  7C 67 1B 78 */	mr r7, r3
/* 803D6358  7F C3 F3 78 */	mr r3, r30
/* 803D635C  7F 04 C3 78 */	mr r4, r24
/* 803D6360  7F 25 CB 78 */	mr r5, r25
/* 803D6364  7F 86 E3 78 */	mr r6, r28
/* 803D6368  7F A8 EB 78 */	mr r8, r29
/* 803D636C  4B FF 79 A5 */	bl mNpc_LoadMailDataCommon2
/* 803D6370  56 E0 06 3E */	clrlwi r0, r23, 0x18
/* 803D6374  28 00 00 01 */	cmplwi r0, 1
/* 803D6378  40 82 00 38 */	bne lbl_803D63B0
/* 803D637C  38 7F 39 88 */	addi r3, r31, 0x3988
/* 803D6380  38 9E 00 16 */	addi r4, r30, 0x16
/* 803D6384  38 A0 00 08 */	li r5, 8
/* 803D6388  4B C8 6C 95 */	bl func_8005D01C
/* 803D638C  7F 03 C3 78 */	mr r3, r24
/* 803D6390  7F C4 F3 78 */	mr r4, r30
/* 803D6394  38 A0 00 08 */	li r5, 8
/* 803D6398  4B C8 6C 85 */	bl func_8005D01C
/* 803D639C  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 803D63A0  28 00 00 01 */	cmplwi r0, 1
/* 803D63A4  40 82 00 0C */	bne lbl_803D63B0
/* 803D63A8  38 00 00 0B */	li r0, 0xb
/* 803D63AC  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_803D63B0:
/* 803D63B0  7F C3 F3 78 */	mr r3, r30
/* 803D63B4  38 80 00 00 */	li r4, 0
/* 803D63B8  48 00 8C A9 */	bl mPO_receipt_proc
/* 803D63BC  7C 76 1B 78 */	mr r22, r3
lbl_803D63C0:
/* 803D63C0  7E C3 B3 78 */	mr r3, r22
/* 803D63C4  39 61 00 30 */	addi r11, r1, 0x30
/* 803D63C8  4B CC 4B 3D */	bl func_8009AF04
/* 803D63CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D63D0  7C 08 03 A6 */	mtlr r0
/* 803D63D4  38 21 00 30 */	addi r1, r1, 0x30
/* 803D63D8  4E 80 00 20 */	blr 
