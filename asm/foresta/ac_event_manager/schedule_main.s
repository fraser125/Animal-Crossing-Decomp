lbl_80422968:
/* 80422968  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8042296C  7C 08 02 A6 */	mflr r0
/* 80422970  90 01 00 54 */	stw r0, 0x54(r1)
/* 80422974  39 61 00 50 */	addi r11, r1, 0x50
/* 80422978  4B C7 85 3D */	bl func_8009AEB4
/* 8042297C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80422980  3C A0 81 1D */	lis r5, data_811CB830@ha /* 0x811CB830@ha */
/* 80422984  7C 75 1B 78 */	mr r21, r3
/* 80422988  80 64 52 F0 */	lwz r3, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 8042298C  3B C5 B8 30 */	addi r30, r5, data_811CB830@l /* 0x811CB830@l */
/* 80422990  4B FB 6C B1 */	bl get_player_actor_withoutCheck
/* 80422994  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80422998  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8042299C  83 A5 52 F0 */	lwz r29, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 804229A0  7C 7F 1B 78 */	mr r31, r3
/* 804229A4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804229A8  7E BC AB 78 */	mr r28, r21
/* 804229AC  3B 5D 20 AC */	addi r26, r29, 0x20ac
/* 804229B0  3F 63 00 02 */	addis r27, r3, 2
/* 804229B4  7F 43 D3 78 */	mr r3, r26
/* 804229B8  4B F7 BF 61 */	bl mEv_GetMonth
/* 804229BC  7C 75 1B 78 */	mr r21, r3
/* 804229C0  7F 43 D3 78 */	mr r3, r26
/* 804229C4  4B F7 BF 5D */	bl mEv_GetDay
/* 804229C8  7C 76 1B 78 */	mr r22, r3
/* 804229CC  7F 43 D3 78 */	mr r3, r26
/* 804229D0  4B F7 BF 59 */	bl mEv_GetHour
/* 804229D4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804229D8  7C 78 1B 78 */	mr r24, r3
/* 804229DC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804229E0  3E E3 00 02 */	addis r23, r3, 2
/* 804229E4  88 17 05 55 */	lbz r0, 0x555(r23)
/* 804229E8  8B 37 60 03 */	lbz r25, 0x6003(r23)
/* 804229EC  28 00 00 01 */	cmplwi r0, 1
/* 804229F0  40 82 00 10 */	bne lbl_80422A00
/* 804229F4  4B FF 7E 15 */	bl set_special_event_save
/* 804229F8  38 00 00 00 */	li r0, 0
/* 804229FC  98 17 05 55 */	stb r0, 0x555(r23)
lbl_80422A00:
/* 80422A00  4B F7 79 39 */	bl mDemo_CheckDemo
/* 80422A04  2C 03 00 00 */	cmpwi r3, 0
/* 80422A08  40 82 01 10 */	bne lbl_80422B18
/* 80422A0C  56 A3 40 2E */	slwi r3, r21, 8
/* 80422A10  80 1C 02 00 */	lwz r0, 0x200(r28)
/* 80422A14  7E A3 B2 14 */	add r21, r3, r22
/* 80422A18  7C 15 00 00 */	cmpw r21, r0
/* 80422A1C  41 82 00 3C */	beq lbl_80422A58
/* 80422A20  7F 23 CB 78 */	mr r3, r25
/* 80422A24  4B F7 BD 51 */	bl mEv_ArbeitPlayer_kari
/* 80422A28  2C 03 00 00 */	cmpwi r3, 0
/* 80422A2C  40 82 00 24 */	bne lbl_80422A50
/* 80422A30  7F 23 CB 78 */	mr r3, r25
/* 80422A34  4B F7 BC 7D */	bl mEv_LivePlayer
/* 80422A38  2C 03 00 00 */	cmpwi r3, 0
/* 80422A3C  41 82 00 14 */	beq lbl_80422A50
/* 80422A40  4B F7 BC 25 */	bl mEv_LiveSonchoPresent
/* 80422A44  2C 03 00 00 */	cmpwi r3, 0
/* 80422A48  40 82 00 08 */	bne lbl_80422A50
/* 80422A4C  4B FF F9 9D */	bl set_today_event
lbl_80422A50:
/* 80422A50  92 BC 02 00 */	stw r21, 0x200(r28)
/* 80422A54  4B FF FA 39 */	bl mail_event_check
lbl_80422A58:
/* 80422A58  56 C3 40 2E */	slwi r3, r22, 8
/* 80422A5C  80 1C 02 04 */	lwz r0, 0x204(r28)
/* 80422A60  7E A3 C2 14 */	add r21, r3, r24
/* 80422A64  7C 15 00 00 */	cmpw r21, r0
/* 80422A68  41 82 00 0C */	beq lbl_80422A74
/* 80422A6C  4B FF FC E9 */	bl vt_wt_mail_check
/* 80422A70  92 BC 02 04 */	stw r21, 0x204(r28)
lbl_80422A74:
/* 80422A74  7F 23 CB 78 */	mr r3, r25
/* 80422A78  4B F7 BC FD */	bl mEv_ArbeitPlayer_kari
/* 80422A7C  2C 03 00 00 */	cmpwi r3, 0
/* 80422A80  40 82 00 98 */	bne lbl_80422B18
/* 80422A84  7F 23 CB 78 */	mr r3, r25
/* 80422A88  4B F7 BC 29 */	bl mEv_LivePlayer
/* 80422A8C  2C 03 00 00 */	cmpwi r3, 0
/* 80422A90  41 82 00 88 */	beq lbl_80422B18
/* 80422A94  4B F7 BB D1 */	bl mEv_LiveSonchoPresent
/* 80422A98  2C 03 00 00 */	cmpwi r3, 0
/* 80422A9C  40 82 00 7C */	bne lbl_80422B18
/* 80422AA0  7F 43 D3 78 */	mr r3, r26
/* 80422AA4  4B F7 C1 75 */	bl mEv_change
/* 80422AA8  80 1C 02 08 */	lwz r0, 0x208(r28)
/* 80422AAC  7C 77 1B 78 */	mr r23, r3
/* 80422AB0  7C 17 00 00 */	cmpw r23, r0
/* 80422AB4  41 82 00 64 */	beq lbl_80422B18
/* 80422AB8  3B 1E 01 44 */	addi r24, r30, 0x144
/* 80422ABC  3A C0 00 00 */	li r22, 0
/* 80422AC0  3A A0 00 00 */	li r21, 0
/* 80422AC4  3B 40 00 00 */	li r26, 0
/* 80422AC8  48 00 00 24 */	b lbl_80422AEC
lbl_80422ACC:
/* 80422ACC  7C 98 D0 2E */	lwzx r4, r24, r26
/* 80422AD0  7F 83 E3 78 */	mr r3, r28
/* 80422AD4  4B FF F6 4D */	bl event_at_oclock
/* 80422AD8  2C 03 00 00 */	cmpwi r3, 0
/* 80422ADC  40 82 00 08 */	bne lbl_80422AE4
/* 80422AE0  3A D6 00 01 */	addi r22, r22, 1
lbl_80422AE4:
/* 80422AE4  3A B5 00 01 */	addi r21, r21, 1
/* 80422AE8  3B 5A 00 04 */	addi r26, r26, 4
lbl_80422AEC:
/* 80422AEC  80 1E 01 40 */	lwz r0, 0x140(r30)
/* 80422AF0  7C 15 00 00 */	cmpw r21, r0
/* 80422AF4  41 80 FF D8 */	blt lbl_80422ACC
/* 80422AF8  2C 16 00 00 */	cmpwi r22, 0
/* 80422AFC  40 82 00 1C */	bne lbl_80422B18
/* 80422B00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80422B04  92 FC 02 08 */	stw r23, 0x208(r28)
/* 80422B08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80422B0C  38 00 00 00 */	li r0, 0
/* 80422B10  3C 63 00 02 */	addis r3, r3, 2
/* 80422B14  90 03 06 74 */	stw r0, 0x674(r3)
lbl_80422B18:
/* 80422B18  7F 23 CB 78 */	mr r3, r25
/* 80422B1C  4B F7 BC 59 */	bl mEv_ArbeitPlayer_kari
/* 80422B20  2C 03 00 00 */	cmpwi r3, 0
/* 80422B24  40 82 01 84 */	bne lbl_80422CA8
/* 80422B28  7F 23 CB 78 */	mr r3, r25
/* 80422B2C  4B F7 BB 85 */	bl mEv_LivePlayer
/* 80422B30  2C 03 00 00 */	cmpwi r3, 0
/* 80422B34  41 82 01 74 */	beq lbl_80422CA8
/* 80422B38  4B F7 BB 2D */	bl mEv_LiveSonchoPresent
/* 80422B3C  2C 03 00 00 */	cmpwi r3, 0
/* 80422B40  41 82 00 08 */	beq lbl_80422B48
/* 80422B44  48 00 01 64 */	b lbl_80422CA8
lbl_80422B48:
/* 80422B48  4B F8 21 85 */	bl mFI_GetFieldId
/* 80422B4C  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 80422B50  40 82 01 2C */	bne lbl_80422C7C
/* 80422B54  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 80422B58  3A A1 00 0C */	addi r21, r1, 0xc
/* 80422B5C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80422B60  7E A3 AB 78 */	mr r3, r21
/* 80422B64  38 81 00 08 */	addi r4, r1, 8
/* 80422B68  38 A1 00 10 */	addi r5, r1, 0x10
/* 80422B6C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80422B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80422B74  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80422B78  90 01 00 18 */	stw r0, 0x18(r1)
/* 80422B7C  4B F8 2B E5 */	bl mFI_Wpos2BlockNum
/* 80422B80  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80422B84  80 1C 02 10 */	lwz r0, 0x210(r28)
/* 80422B88  7C 03 00 00 */	cmpw r3, r0
/* 80422B8C  40 82 00 5C */	bne lbl_80422BE8
/* 80422B90  80 61 00 08 */	lwz r3, 8(r1)
/* 80422B94  80 1C 02 0C */	lwz r0, 0x20c(r28)
/* 80422B98  7C 03 00 00 */	cmpw r3, r0
/* 80422B9C  40 82 00 4C */	bne lbl_80422BE8
/* 80422BA0  38 60 00 01 */	li r3, 1
/* 80422BA4  4B F8 5F 99 */	bl mFI_CheckPlayerWade
/* 80422BA8  2C 03 00 01 */	cmpwi r3, 1
/* 80422BAC  41 82 00 3C */	beq lbl_80422BE8
/* 80422BB0  38 60 00 02 */	li r3, 2
/* 80422BB4  4B F8 5F 89 */	bl mFI_CheckPlayerWade
/* 80422BB8  2C 03 00 01 */	cmpwi r3, 1
/* 80422BBC  41 82 00 2C */	beq lbl_80422BE8
/* 80422BC0  38 60 00 03 */	li r3, 3
/* 80422BC4  4B F8 5F 79 */	bl mFI_CheckPlayerWade
/* 80422BC8  2C 03 00 01 */	cmpwi r3, 1
/* 80422BCC  41 82 00 1C */	beq lbl_80422BE8
/* 80422BD0  88 1D 20 D0 */	lbz r0, 0x20d0(r29)
/* 80422BD4  28 00 00 00 */	cmplwi r0, 0
/* 80422BD8  40 82 00 10 */	bne lbl_80422BE8
/* 80422BDC  4B F7 C2 B1 */	bl mEv_someone_died
/* 80422BE0  2C 03 00 00 */	cmpwi r3, 0
/* 80422BE4  41 82 00 A4 */	beq lbl_80422C88
lbl_80422BE8:
/* 80422BE8  3A C0 00 00 */	li r22, 0
/* 80422BEC  3B 5E 01 44 */	addi r26, r30, 0x144
/* 80422BF0  7E D7 B3 78 */	mr r23, r22
/* 80422BF4  3B 20 00 00 */	li r25, 0
/* 80422BF8  48 00 00 24 */	b lbl_80422C1C
lbl_80422BFC:
/* 80422BFC  7C 9A C8 2E */	lwzx r4, r26, r25
/* 80422C00  7F 83 E3 78 */	mr r3, r28
/* 80422C04  4B FF F6 31 */	bl event_at_wade
/* 80422C08  2C 03 00 00 */	cmpwi r3, 0
/* 80422C0C  40 82 00 08 */	bne lbl_80422C14
/* 80422C10  3A D6 00 01 */	addi r22, r22, 1
lbl_80422C14:
/* 80422C14  3A F7 00 01 */	addi r23, r23, 1
/* 80422C18  3B 39 00 04 */	addi r25, r25, 4
lbl_80422C1C:
/* 80422C1C  80 1E 01 40 */	lwz r0, 0x140(r30)
/* 80422C20  7C 17 00 00 */	cmpw r23, r0
/* 80422C24  41 80 FF D8 */	blt lbl_80422BFC
/* 80422C28  2C 16 00 00 */	cmpwi r22, 0
/* 80422C2C  40 82 00 20 */	bne lbl_80422C4C
/* 80422C30  7E A3 AB 78 */	mr r3, r21
/* 80422C34  38 81 00 08 */	addi r4, r1, 8
/* 80422C38  4B F8 5F 35 */	bl mFI_GetNextBlockNum
/* 80422C3C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80422C40  90 1C 02 10 */	stw r0, 0x210(r28)
/* 80422C44  80 01 00 08 */	lwz r0, 8(r1)
/* 80422C48  90 1C 02 0C */	stw r0, 0x20c(r28)
lbl_80422C4C:
/* 80422C4C  80 9E 01 3C */	lwz r4, 0x13c(r30)
/* 80422C50  3C 60 D5 FE */	lis r3, 0xD5FE /* 0xD5FE46CF@ha */
/* 80422C54  88 1B 61 20 */	lbz r0, 0x6120(r27)
/* 80422C58  38 63 46 CF */	addi r3, r3, 0x46CF /* 0xD5FE46CF@l */
/* 80422C5C  7C 83 18 38 */	and r3, r4, r3
/* 80422C60  54 84 08 3C */	slwi r4, r4, 1
/* 80422C64  60 00 00 01 */	ori r0, r0, 1
/* 80422C68  7C 03 02 14 */	add r0, r3, r0
/* 80422C6C  1C 00 00 09 */	mulli r0, r0, 9
/* 80422C70  7C 04 02 14 */	add r0, r4, r0
/* 80422C74  90 1E 01 3C */	stw r0, 0x13c(r30)
/* 80422C78  48 00 00 10 */	b lbl_80422C88
lbl_80422C7C:
/* 80422C7C  38 00 FF FF */	li r0, -1
/* 80422C80  90 1C 02 10 */	stw r0, 0x210(r28)
/* 80422C84  90 1C 02 0C */	stw r0, 0x20c(r28)
lbl_80422C88:
/* 80422C88  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 80422C8C  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 80422C90  2C 00 00 02 */	cmpwi r0, 2
/* 80422C94  41 80 00 14 */	blt lbl_80422CA8
/* 80422C98  4B FF 6D F9 */	bl w_guide_arrow
/* 80422C9C  4B FF 6F B1 */	bl sp_guide_arrow
/* 80422CA0  4B FF 71 69 */	bl day_guide_arrow
/* 80422CA4  4B FF 73 21 */	bl turkey_guide_arrow
lbl_80422CA8:
/* 80422CA8  39 61 00 50 */	addi r11, r1, 0x50
/* 80422CAC  4B C7 82 55 */	bl func_8009AF00
/* 80422CB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80422CB4  7C 08 03 A6 */	mtlr r0
/* 80422CB8  38 21 00 50 */	addi r1, r1, 0x50
/* 80422CBC  4E 80 00 20 */	blr 
