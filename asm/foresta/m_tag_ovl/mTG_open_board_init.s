lbl_805F3064:
/* 805F3064  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F3068  7C 08 02 A6 */	mflr r0
/* 805F306C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F3070  39 61 00 30 */	addi r11, r1, 0x30
/* 805F3074  4B AA 7E 51 */	bl func_8009AEC4
/* 805F3078  7C 79 1B 78 */	mr r25, r3
/* 805F307C  2C 05 FF FF */	cmpwi r5, -1
/* 805F3080  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 805F3084  7C 9A 23 78 */	mr r26, r4
/* 805F3088  7C DB 33 78 */	mr r27, r6
/* 805F308C  7C FC 3B 78 */	mr r28, r7
/* 805F3090  83 C8 09 7C */	lwz r30, 0x97c(r8)
/* 805F3094  3B BE 00 08 */	addi r29, r30, 8
/* 805F3098  40 82 00 14 */	bne lbl_805F30AC
/* 805F309C  38 80 00 00 */	li r4, 0
/* 805F30A0  4B FF CF 21 */	bl mTG_get_mail_pointer
/* 805F30A4  7C 7F 1B 78 */	mr r31, r3
/* 805F30A8  48 00 00 20 */	b lbl_805F30C8
lbl_805F30AC:
/* 805F30AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F30B0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805F30B4  1C 65 01 2A */	mulli r3, r5, 0x12a
/* 805F30B8  3C 84 00 02 */	addis r4, r4, 2
/* 805F30BC  80 04 61 3C */	lwz r0, 0x613c(r4)
/* 805F30C0  3B E3 04 E0 */	addi r31, r3, 0x4e0
/* 805F30C4  7F E0 FA 14 */	add r31, r0, r31
lbl_805F30C8:
/* 805F30C8  38 00 00 00 */	li r0, 0
/* 805F30CC  7F A3 EB 78 */	mr r3, r29
/* 805F30D0  90 1E 00 00 */	stw r0, 0(r30)
/* 805F30D4  90 1E 00 04 */	stw r0, 4(r30)
/* 805F30D8  4B FF C7 95 */	bl mTG_get_item_name_wait_time
/* 805F30DC  B0 7E 02 F0 */	sth r3, 0x2f0(r30)
/* 805F30E0  7F 23 CB 78 */	mr r3, r25
/* 805F30E4  7F 65 DB 78 */	mr r5, r27
/* 805F30E8  7F 86 E3 78 */	mr r6, r28
/* 805F30EC  7F E7 FB 78 */	mr r7, r31
/* 805F30F0  38 80 00 0C */	li r4, 0xc
/* 805F30F4  4B DF C6 11 */	bl mSM_open_submenu_new
/* 805F30F8  38 60 00 00 */	li r3, 0
/* 805F30FC  38 00 00 02 */	li r0, 2
/* 805F3100  90 7A 00 04 */	stw r3, 4(r26)
/* 805F3104  38 60 00 5F */	li r3, 0x5f
/* 805F3108  90 1A 00 30 */	stw r0, 0x30(r26)
/* 805F310C  B0 1A 00 34 */	sth r0, 0x34(r26)
/* 805F3110  48 03 AB F5 */	bl sAdo_SysTrgStart
/* 805F3114  39 61 00 30 */	addi r11, r1, 0x30
/* 805F3118  4B AA 7D F9 */	bl func_8009AF10
/* 805F311C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F3120  7C 08 03 A6 */	mtlr r0
/* 805F3124  38 21 00 30 */	addi r1, r1, 0x30
/* 805F3128  4E 80 00 20 */	blr 
