lbl_80488190:
/* 80488190  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80488194  7C 08 02 A6 */	mflr r0
/* 80488198  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048819C  39 61 00 20 */	addi r11, r1, 0x20
/* 804881A0  4B C1 2D 35 */	bl func_8009AED4
/* 804881A4  7C 7D 1B 78 */	mr r29, r3
/* 804881A8  3C 60 81 1D */	lis r3, show_mail@ha /* 0x811CEA70@ha */
/* 804881AC  80 9D 01 78 */	lwz r4, 0x178(r29)
/* 804881B0  38 63 EA 70 */	addi r3, r3, show_mail@l /* 0x811CEA70@l */
/* 804881B4  83 FD 01 74 */	lwz r31, 0x174(r29)
/* 804881B8  80 84 00 00 */	lwz r4, 0(r4)
/* 804881BC  83 C4 01 7C */	lwz r30, 0x17c(r4)
/* 804881C0  4B F3 45 41 */	bl mMl_clear_mail
/* 804881C4  80 9D 01 7C */	lwz r4, 0x17c(r29)
/* 804881C8  3C 60 81 1D */	lis r3, show_mail@ha /* 0x811CEA70@ha */
/* 804881CC  38 63 EA 70 */	addi r3, r3, show_mail@l /* 0x811CEA70@l */
/* 804881D0  7F C6 F3 78 */	mr r6, r30
/* 804881D4  80 A4 00 00 */	lwz r5, 0(r4)
/* 804881D8  38 85 00 32 */	addi r4, r5, 0x32
/* 804881DC  4B F4 4A DD */	bl mNpc_AnimalMail2Mail
/* 804881E0  3C 80 81 1D */	lis r4, show_mail@ha /* 0x811CEA70@ha */
/* 804881E4  7F E3 FB 78 */	mr r3, r31
/* 804881E8  38 E4 EA 70 */	addi r7, r4, show_mail@l /* 0x811CEA70@l */
/* 804881EC  38 A0 00 01 */	li r5, 1
/* 804881F0  38 80 00 0C */	li r4, 0xc
/* 804881F4  38 C0 00 00 */	li r6, 0
/* 804881F8  4B F6 75 0D */	bl mSM_open_submenu_new
/* 804881FC  38 60 00 04 */	li r3, 4
/* 80488200  38 00 00 0A */	li r0, 0xa
/* 80488204  98 7D 01 85 */	stb r3, 0x185(r29)
/* 80488208  98 1D 01 86 */	stb r0, 0x186(r29)
/* 8048820C  4B F3 74 9D */	bl func_803BF6A8
/* 80488210  80 9D 01 A8 */	lwz r4, 0x1a8(r29)
/* 80488214  4B F3 7D B1 */	bl mMsg_Set_continue_msg_num
/* 80488218  39 61 00 20 */	addi r11, r1, 0x20
/* 8048821C  4B C1 2D 05 */	bl func_8009AF20
/* 80488220  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80488224  7C 08 03 A6 */	mtlr r0
/* 80488228  38 21 00 20 */	addi r1, r1, 0x20
/* 8048822C  4E 80 00 20 */	blr 
