lbl_803C2A74:
/* 803C2A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2A78  7C 08 02 A6 */	mflr r0
/* 803C2A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2A80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C2A84  93 C1 00 08 */	stw r30, 8(r1)
/* 803C2A88  7C 7E 1B 78 */	mr r30, r3
/* 803C2A8C  4B FF FF 5D */	bl mMsg_MsgTimeEnd_dec
/* 803C2A90  2C 03 00 00 */	cmpwi r3, 0
/* 803C2A94  41 82 00 20 */	beq lbl_803C2AB4
/* 803C2A98  7F C3 F3 78 */	mr r3, r30
/* 803C2A9C  4B FF DA F9 */	bl mMsg_Check_NextIndex_MsgTimeEndCode
/* 803C2AA0  2C 03 00 00 */	cmpwi r3, 0
/* 803C2AA4  41 82 00 10 */	beq lbl_803C2AB4
/* 803C2AA8  7F C3 F3 78 */	mr r3, r30
/* 803C2AAC  4B FF FF 71 */	bl mMsg_end_to_disappear
/* 803C2AB0  48 00 01 88 */	b lbl_803C2C38
lbl_803C2AB4:
/* 803C2AB4  7F C3 F3 78 */	mr r3, r30
/* 803C2AB8  4B FF FE DD */	bl func_803C2994
/* 803C2ABC  2C 03 00 00 */	cmpwi r3, 0
/* 803C2AC0  40 82 00 10 */	bne lbl_803C2AD0
/* 803C2AC4  80 1E 04 4C */	lwz r0, 0x44c(r30)
/* 803C2AC8  2C 00 00 00 */	cmpwi r0, 0
/* 803C2ACC  41 82 01 6C */	beq lbl_803C2C38
lbl_803C2AD0:
/* 803C2AD0  80 1E 04 50 */	lwz r0, 0x450(r30)
/* 803C2AD4  2C 00 00 00 */	cmpwi r0, 0
/* 803C2AD8  40 82 01 60 */	bne lbl_803C2C38
/* 803C2ADC  7F C3 F3 78 */	mr r3, r30
/* 803C2AE0  3B E0 00 00 */	li r31, 0
/* 803C2AE4  4B FF D6 B1 */	bl mMsg_Check_NextIndex_ContinueCode
/* 803C2AE8  2C 03 00 00 */	cmpwi r3, 0
/* 803C2AEC  41 82 00 90 */	beq lbl_803C2B7C
/* 803C2AF0  80 1E 04 48 */	lwz r0, 0x448(r30)
/* 803C2AF4  2C 00 00 00 */	cmpwi r0, 0
/* 803C2AF8  40 82 00 84 */	bne lbl_803C2B7C
/* 803C2AFC  80 9E 04 44 */	lwz r4, 0x444(r30)
/* 803C2B00  2C 04 00 00 */	cmpwi r4, 0
/* 803C2B04  41 80 01 34 */	blt lbl_803C2C38
/* 803C2B08  2C 04 3F 91 */	cmpwi r4, 0x3f91
/* 803C2B0C  40 80 01 2C */	bge lbl_803C2C38
/* 803C2B10  7F C3 F3 78 */	mr r3, r30
/* 803C2B14  4B FF DE 85 */	bl mMsg_ChangeMsgData
/* 803C2B18  2C 03 00 00 */	cmpwi r3, 0
/* 803C2B1C  41 82 01 1C */	beq lbl_803C2C38
/* 803C2B20  7F C3 F3 78 */	mr r3, r30
/* 803C2B24  38 80 00 00 */	li r4, 0
/* 803C2B28  38 A0 00 05 */	li r5, 5
/* 803C2B2C  4B FF D0 D5 */	bl mMsg_request_main_cursol
/* 803C2B30  2C 03 00 00 */	cmpwi r3, 0
/* 803C2B34  41 82 00 30 */	beq lbl_803C2B64
/* 803C2B38  80 1E 04 4C */	lwz r0, 0x44c(r30)
/* 803C2B3C  2C 00 00 00 */	cmpwi r0, 0
/* 803C2B40  40 82 00 24 */	bne lbl_803C2B64
/* 803C2B44  7F C3 F3 78 */	mr r3, r30
/* 803C2B48  4B FF D6 A5 */	bl mMsg_Check_NextIndex_SetSelectWindowCode
/* 803C2B4C  2C 03 00 00 */	cmpwi r3, 0
/* 803C2B50  40 82 00 14 */	bne lbl_803C2B64
/* 803C2B54  80 1E 04 0C */	lwz r0, 0x40c(r30)
/* 803C2B58  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803C2B5C  40 82 00 08 */	bne lbl_803C2B64
/* 803C2B60  4B FF F5 F5 */	bl mMsg_sound_PAGE_OKURI
lbl_803C2B64:
/* 803C2B64  7F C3 F3 78 */	mr r3, r30
/* 803C2B68  4B FF E1 CD */	bl mMsg_Unset_ForceNext
/* 803C2B6C  7F C3 F3 78 */	mr r3, r30
/* 803C2B70  38 80 FF FF */	li r4, -1
/* 803C2B74  4B FF D4 51 */	bl mMsg_Set_continue_msg_num
/* 803C2B78  48 00 00 C0 */	b lbl_803C2C38
lbl_803C2B7C:
/* 803C2B7C  7F C3 F3 78 */	mr r3, r30
/* 803C2B80  4B FF D6 15 */	bl mMsg_Check_NextIndex_ContinueCode
/* 803C2B84  2C 03 00 00 */	cmpwi r3, 0
/* 803C2B88  41 82 00 10 */	beq lbl_803C2B98
/* 803C2B8C  80 1E 04 48 */	lwz r0, 0x448(r30)
/* 803C2B90  2C 00 00 00 */	cmpwi r0, 0
/* 803C2B94  40 82 00 24 */	bne lbl_803C2BB8
lbl_803C2B98:
/* 803C2B98  7F C3 F3 78 */	mr r3, r30
/* 803C2B9C  4B FF D6 25 */	bl mMsg_Check_NextIndex_LastCode
/* 803C2BA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803C2BA4  40 82 00 14 */	bne lbl_803C2BB8
/* 803C2BA8  7F C3 F3 78 */	mr r3, r30
/* 803C2BAC  4B FF D9 E9 */	bl mMsg_Check_NextIndex_MsgTimeEndCode
/* 803C2BB0  2C 03 00 00 */	cmpwi r3, 0
/* 803C2BB4  41 82 00 38 */	beq lbl_803C2BEC
lbl_803C2BB8:
/* 803C2BB8  80 7E 04 0C */	lwz r3, 0x40c(r30)
/* 803C2BBC  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 803C2BC0  40 82 00 78 */	bne lbl_803C2C38
/* 803C2BC4  2C 1F 00 00 */	cmpwi r31, 0
/* 803C2BC8  41 82 00 18 */	beq lbl_803C2BE0
/* 803C2BCC  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 803C2BD0  41 82 00 10 */	beq lbl_803C2BE0
/* 803C2BD4  60 60 00 80 */	ori r0, r3, 0x80
/* 803C2BD8  90 1E 04 0C */	stw r0, 0x40c(r30)
/* 803C2BDC  48 00 00 5C */	b lbl_803C2C38
lbl_803C2BE0:
/* 803C2BE0  7F C3 F3 78 */	mr r3, r30
/* 803C2BE4  4B FF FE 39 */	bl mMsg_end_to_disappear
/* 803C2BE8  48 00 00 50 */	b lbl_803C2C38
lbl_803C2BEC:
/* 803C2BEC  7F C3 F3 78 */	mr r3, r30
/* 803C2BF0  38 80 00 00 */	li r4, 0
/* 803C2BF4  38 A0 00 05 */	li r5, 5
/* 803C2BF8  4B FF D0 09 */	bl mMsg_request_main_cursol
/* 803C2BFC  2C 03 00 00 */	cmpwi r3, 0
/* 803C2C00  41 82 00 38 */	beq lbl_803C2C38
/* 803C2C04  80 1E 04 4C */	lwz r0, 0x44c(r30)
/* 803C2C08  2C 00 00 00 */	cmpwi r0, 0
/* 803C2C0C  40 82 00 24 */	bne lbl_803C2C30
/* 803C2C10  7F C3 F3 78 */	mr r3, r30
/* 803C2C14  4B FF D5 D9 */	bl mMsg_Check_NextIndex_SetSelectWindowCode
/* 803C2C18  2C 03 00 00 */	cmpwi r3, 0
/* 803C2C1C  40 82 00 14 */	bne lbl_803C2C30
/* 803C2C20  80 1E 04 0C */	lwz r0, 0x40c(r30)
/* 803C2C24  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803C2C28  40 82 00 08 */	bne lbl_803C2C30
/* 803C2C2C  4B FF F5 29 */	bl mMsg_sound_PAGE_OKURI
lbl_803C2C30:
/* 803C2C30  7F C3 F3 78 */	mr r3, r30
/* 803C2C34  4B FF E1 01 */	bl mMsg_Unset_ForceNext
lbl_803C2C38:
/* 803C2C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2C3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C2C40  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C2C44  7C 08 03 A6 */	mtlr r0
/* 803C2C48  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2C4C  4E 80 00 20 */	blr 
