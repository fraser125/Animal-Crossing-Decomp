lbl_805BBE2C:
/* 805BBE2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BBE30  7C 08 02 A6 */	mflr r0
/* 805BBE34  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BBE38  39 61 00 20 */	addi r11, r1, 0x20
/* 805BBE3C  4B AD F0 95 */	bl func_8009AED0
/* 805BBE40  7C 7F 1B 78 */	mr r31, r3
/* 805BBE44  7C 9C 23 78 */	mr r28, r4
/* 805BBE48  4B E0 38 61 */	bl func_803BF6A8
/* 805BBE4C  7C 7E 1B 78 */	mr r30, r3
/* 805BBE50  4B E4 79 2D */	bl mCPk_get_pkinfo
/* 805BBE54  38 61 00 08 */	addi r3, r1, 8
/* 805BBE58  3B A0 FF FF */	li r29, -1
/* 805BBE5C  4B E4 52 AD */	bl mCD_CheckStation_bg
/* 805BBE60  28 03 00 19 */	cmplwi r3, 0x19
/* 805BBE64  98 7F 09 A9 */	stb r3, 0x9a9(r31)
/* 805BBE68  41 81 00 C4 */	bgt lbl_805BBF2C
/* 805BBE6C  3C 80 80 6C */	lis r4, lit_608@ha /* 0x806C69E0@ha */
/* 805BBE70  54 60 10 3A */	slwi r0, r3, 2
/* 805BBE74  38 84 69 E0 */	addi r4, r4, lit_608@l /* 0x806C69E0@l */
/* 805BBE78  7C 04 00 2E */	lwzx r0, r4, r0
/* 805BBE7C  7C 09 03 A6 */	mtctr r0
/* 805BBE80  4E 80 04 20 */	bctr 
lbl_805BBE84:
/* 805BBE84  7F E3 FB 78 */	mr r3, r31
/* 805BBE88  7F 84 E3 78 */	mr r4, r28
/* 805BBE8C  4B FF FE F9 */	bl aSTM_chk_train_local
/* 805BBE90  7C 7D 1B 78 */	mr r29, r3
/* 805BBE94  48 00 00 9C */	b lbl_805BBF30
lbl_805BBE98:
/* 805BBE98  7F E3 FB 78 */	mr r3, r31
/* 805BBE9C  7F 84 E3 78 */	mr r4, r28
/* 805BBEA0  4B FF FE E5 */	bl aSTM_chk_train_local
/* 805BBEA4  3B A3 00 02 */	addi r29, r3, 2
/* 805BBEA8  48 00 00 88 */	b lbl_805BBF30
lbl_805BBEAC:
/* 805BBEAC  3B A0 00 04 */	li r29, 4
/* 805BBEB0  48 00 00 80 */	b lbl_805BBF30
lbl_805BBEB4:
/* 805BBEB4  3B A0 00 05 */	li r29, 5
/* 805BBEB8  48 00 00 78 */	b lbl_805BBF30
lbl_805BBEBC:
/* 805BBEBC  3B A0 00 06 */	li r29, 6
/* 805BBEC0  48 00 00 70 */	b lbl_805BBF30
lbl_805BBEC4:
/* 805BBEC4  98 7F 09 AB */	stb r3, 0x9ab(r31)
/* 805BBEC8  3B A0 00 07 */	li r29, 7
/* 805BBECC  48 00 00 64 */	b lbl_805BBF30
lbl_805BBED0:
/* 805BBED0  3B A0 00 08 */	li r29, 8
/* 805BBED4  48 00 00 5C */	b lbl_805BBF30
lbl_805BBED8:
/* 805BBED8  3B A0 00 09 */	li r29, 9
/* 805BBEDC  48 00 00 54 */	b lbl_805BBF30
lbl_805BBEE0:
/* 805BBEE0  3B A0 00 0A */	li r29, 0xa
/* 805BBEE4  48 00 00 4C */	b lbl_805BBF30
lbl_805BBEE8:
/* 805BBEE8  3B A0 00 0B */	li r29, 0xb
/* 805BBEEC  48 00 00 44 */	b lbl_805BBF30
lbl_805BBEF0:
/* 805BBEF0  3B A0 00 0C */	li r29, 0xc
/* 805BBEF4  48 00 00 3C */	b lbl_805BBF30
lbl_805BBEF8:
/* 805BBEF8  3B A0 00 0D */	li r29, 0xd
/* 805BBEFC  48 00 00 34 */	b lbl_805BBF30
lbl_805BBF00:
/* 805BBF00  3B A0 00 0E */	li r29, 0xe
/* 805BBF04  48 00 00 2C */	b lbl_805BBF30
lbl_805BBF08:
/* 805BBF08  3B A0 00 0F */	li r29, 0xf
/* 805BBF0C  48 00 00 24 */	b lbl_805BBF30
lbl_805BBF10:
/* 805BBF10  3B A0 00 10 */	li r29, 0x10
/* 805BBF14  48 00 00 1C */	b lbl_805BBF30
lbl_805BBF18:
/* 805BBF18  98 7F 09 AB */	stb r3, 0x9ab(r31)
/* 805BBF1C  3B A0 00 11 */	li r29, 0x11
/* 805BBF20  48 00 00 10 */	b lbl_805BBF30
lbl_805BBF24:
/* 805BBF24  3B A0 00 12 */	li r29, 0x12
/* 805BBF28  48 00 00 08 */	b lbl_805BBF30
lbl_805BBF2C:
/* 805BBF2C  3B A0 00 09 */	li r29, 9
lbl_805BBF30:
/* 805BBF30  2C 1D FF FF */	cmpwi r29, -1
/* 805BBF34  41 82 00 7C */	beq lbl_805BBFB0
/* 805BBF38  80 01 00 08 */	lwz r0, 8(r1)
/* 805BBF3C  2C 00 00 00 */	cmpwi r0, 0
/* 805BBF40  41 82 00 0C */	beq lbl_805BBF4C
/* 805BBF44  2C 00 00 01 */	cmpwi r0, 1
/* 805BBF48  40 82 00 2C */	bne lbl_805BBF74
lbl_805BBF4C:
/* 805BBF4C  7C 00 00 34 */	cntlzw r0, r0
/* 805BBF50  38 80 00 03 */	li r4, 3
/* 805BBF54  54 03 D9 7E */	srwi r3, r0, 5
/* 805BBF58  4B FF FD DD */	bl aSTM_set_slot_name
/* 805BBF5C  80 61 00 08 */	lwz r3, 8(r1)
/* 805BBF60  38 80 00 05 */	li r4, 5
/* 805BBF64  4B FF FD D1 */	bl aSTM_set_slot_name
/* 805BBF68  80 61 00 08 */	lwz r3, 8(r1)
/* 805BBF6C  38 80 00 04 */	li r4, 4
/* 805BBF70  4B FF FD C5 */	bl aSTM_set_slot_name
lbl_805BBF74:
/* 805BBF74  80 01 00 08 */	lwz r0, 8(r1)
/* 805BBF78  98 1F 09 AA */	stb r0, 0x9aa(r31)
/* 805BBF7C  4B E0 37 2D */	bl func_803BF6A8
/* 805BBF80  4B E0 4D CD */	bl mMsg_Unset_LockContinue
/* 805BBF84  3C 80 80 6C */	lis r4, msg_no_580@ha /* 0x806C69CC@ha */
/* 805BBF88  7F C3 F3 78 */	mr r3, r30
/* 805BBF8C  38 84 69 CC */	addi r4, r4, msg_no_580@l /* 0x806C69CC@l */
/* 805BBF90  7C 84 E8 AE */	lbzx r4, r4, r29
/* 805BBF94  38 84 09 43 */	addi r4, r4, 0x943
/* 805BBF98  4B E0 40 2D */	bl mMsg_Set_continue_msg_num
/* 805BBF9C  3C 80 80 6C */	lis r4, next_talk_act_579@ha /* 0x806C69B8@ha */
/* 805BBFA0  7F E3 FB 78 */	mr r3, r31
/* 805BBFA4  38 84 69 B8 */	addi r4, r4, next_talk_act_579@l /* 0x806C69B8@l */
/* 805BBFA8  7C 84 E8 AE */	lbzx r4, r4, r29
/* 805BBFAC  48 00 09 51 */	bl aSTC_clip_change_talk_proc
lbl_805BBFB0:
/* 805BBFB0  39 61 00 20 */	addi r11, r1, 0x20
/* 805BBFB4  4B AD EF 69 */	bl func_8009AF1C
/* 805BBFB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BBFBC  7C 08 03 A6 */	mtlr r0
/* 805BBFC0  38 21 00 20 */	addi r1, r1, 0x20
/* 805BBFC4  4E 80 00 20 */	blr 
