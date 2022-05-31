lbl_804FFEB0:
/* 804FFEB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FFEB4  7C 08 02 A6 */	mflr r0
/* 804FFEB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FFEBC  39 61 00 30 */	addi r11, r1, 0x30
/* 804FFEC0  4B B9 B0 01 */	bl func_8009AEC0
/* 804FFEC4  7D 3E 4B 78 */	mr r30, r9
/* 804FFEC8  7C 99 23 78 */	mr r25, r4
/* 804FFECC  7C BA 2B 78 */	mr r26, r5
/* 804FFED0  7C 78 1B 78 */	mr r24, r3
/* 804FFED4  7C DB 33 78 */	mr r27, r6
/* 804FFED8  7C FC 3B 78 */	mr r28, r7
/* 804FFEDC  7D 1D 43 78 */	mr r29, r8
/* 804FFEE0  7F C5 F3 78 */	mr r5, r30
/* 804FFEE4  38 80 00 56 */	li r4, 0x56
/* 804FFEE8  4B FD A5 71 */	bl Player_actor_check_request_main_able
/* 804FFEEC  2C 03 00 00 */	cmpwi r3, 0
/* 804FFEF0  41 82 00 50 */	beq lbl_804FFF40
/* 804FFEF4  7F 03 C3 78 */	mr r3, r24
/* 804FFEF8  4B ED 97 49 */	bl get_player_actor_withoutCheck
/* 804FFEFC  7C 7F 1B 78 */	mr r31, r3
/* 804FFF00  7F 03 C3 78 */	mr r3, r24
/* 804FFF04  7F C5 F3 78 */	mr r5, r30
/* 804FFF08  38 80 00 56 */	li r4, 0x56
/* 804FFF0C  4B FD 51 09 */	bl Player_actor_request_main_index
/* 804FFF10  93 3F 0D 60 */	stw r25, 0xd60(r31)
/* 804FFF14  38 60 00 01 */	li r3, 1
/* 804FFF18  93 5F 0D 64 */	stw r26, 0xd64(r31)
/* 804FFF1C  93 7F 0D 68 */	stw r27, 0xd68(r31)
/* 804FFF20  80 9C 00 00 */	lwz r4, 0(r28)
/* 804FFF24  80 1C 00 04 */	lwz r0, 4(r28)
/* 804FFF28  90 9F 0D 6C */	stw r4, 0xd6c(r31)
/* 804FFF2C  90 1F 0D 70 */	stw r0, 0xd70(r31)
/* 804FFF30  80 1C 00 08 */	lwz r0, 8(r28)
/* 804FFF34  90 1F 0D 74 */	stw r0, 0xd74(r31)
/* 804FFF38  B3 BF 0D 78 */	sth r29, 0xd78(r31)
/* 804FFF3C  48 00 00 08 */	b lbl_804FFF44
lbl_804FFF40:
/* 804FFF40  38 60 00 00 */	li r3, 0
lbl_804FFF44:
/* 804FFF44  39 61 00 30 */	addi r11, r1, 0x30
/* 804FFF48  4B B9 AF C5 */	bl func_8009AF0C
/* 804FFF4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FFF50  7C 08 03 A6 */	mtlr r0
/* 804FFF54  38 21 00 30 */	addi r1, r1, 0x30
/* 804FFF58  4E 80 00 20 */	blr 
