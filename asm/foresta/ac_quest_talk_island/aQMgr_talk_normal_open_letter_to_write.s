lbl_804910D4:
/* 804910D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804910D8  7C 08 02 A6 */	mflr r0
/* 804910DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804910E0  39 61 00 30 */	addi r11, r1, 0x30
/* 804910E4  4B C0 9D E9 */	bl func_8009AECC
/* 804910E8  7C 7B 1B 78 */	mr r27, r3
/* 804910EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804910F0  80 9B 01 78 */	lwz r4, 0x178(r27)
/* 804910F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804910F8  3C 63 00 02 */	addis r3, r3, 2
/* 804910FC  83 FB 01 74 */	lwz r31, 0x174(r27)
/* 80491100  80 A4 00 00 */	lwz r5, 0(r4)
/* 80491104  3B BB 09 62 */	addi r29, r27, 0x962
/* 80491108  83 83 61 3C */	lwz r28, 0x613c(r3)
/* 8049110C  38 81 00 08 */	addi r4, r1, 8
/* 80491110  83 C5 01 7C */	lwz r30, 0x17c(r5)
/* 80491114  38 60 00 00 */	li r3, 0
/* 80491118  38 A0 00 01 */	li r5, 1
/* 8049111C  38 C0 00 00 */	li r6, 0
/* 80491120  38 E0 00 00 */	li r7, 0
/* 80491124  39 00 00 01 */	li r8, 1
/* 80491128  39 20 00 08 */	li r9, 8
/* 8049112C  39 40 00 00 */	li r10, 0
/* 80491130  4B F5 72 AD */	bl mSP_SelectRandomItem_New
/* 80491134  7F A3 EB 78 */	mr r3, r29
/* 80491138  4B F2 B5 C9 */	bl mMl_clear_mail
/* 8049113C  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CEBF0@ha */
/* 80491140  7F 84 E3 78 */	mr r4, r28
/* 80491144  38 A3 EB F0 */	addi r5, r3, l_normal_info@l /* 0x811CEBF0@l */
/* 80491148  80 05 00 00 */	lwz r0, 0(r5)
/* 8049114C  38 7D 00 16 */	addi r3, r29, 0x16
/* 80491150  90 1B 0A 8C */	stw r0, 0xa8c(r27)
/* 80491154  A0 A1 00 08 */	lhz r5, 8(r1)
/* 80491158  38 A5 E0 00 */	addi r5, r5, -8192
/* 8049115C  54 A0 D0 0A */	slwi r0, r5, 0x1a
/* 80491160  54 A5 0F FE */	srwi r5, r5, 0x1f
/* 80491164  7C 05 00 50 */	subf r0, r5, r0
/* 80491168  54 00 30 3E */	rotlwi r0, r0, 6
/* 8049116C  7C 00 2A 14 */	add r0, r0, r5
/* 80491170  98 1D 00 31 */	stb r0, 0x31(r29)
/* 80491174  4B F4 EF AD */	bl mPr_CopyPersonalID
/* 80491178  38 00 00 00 */	li r0, 0
/* 8049117C  7F 83 E3 78 */	mr r3, r28
/* 80491180  98 1D 00 2A */	stb r0, 0x2a(r29)
/* 80491184  38 80 00 08 */	li r4, 8
/* 80491188  4B F2 FA DD */	bl mMsg_Get_Length_String
/* 8049118C  7C 60 1B 78 */	mr r0, r3
/* 80491190  7F 83 E3 78 */	mr r3, r28
/* 80491194  7C 05 03 78 */	mr r5, r0
/* 80491198  38 9D 01 0A */	addi r4, r29, 0x10a
/* 8049119C  4B BC BE 81 */	bl func_8005D01C
/* 804911A0  3C 60 80 69 */	lis r3, l_aqmgr_sakubunn@ha /* 0x8068B438@ha */
/* 804911A4  38 9D 00 32 */	addi r4, r29, 0x32
/* 804911A8  38 63 B4 38 */	addi r3, r3, l_aqmgr_sakubunn@l /* 0x8068B438@l */
/* 804911AC  38 A0 00 04 */	li r5, 4
/* 804911B0  4B BC BE 6D */	bl func_8005D01C
/* 804911B4  38 60 00 01 */	li r3, 1
/* 804911B8  4B F4 31 E5 */	bl mNpc_SetIslandGetLetter
/* 804911BC  7F A3 EB 78 */	mr r3, r29
/* 804911C0  7F C4 F3 78 */	mr r4, r30
/* 804911C4  4B F2 B8 2D */	bl mMl_set_mail_name_npcinfo
/* 804911C8  38 00 00 00 */	li r0, 0
/* 804911CC  7F E3 FB 78 */	mr r3, r31
/* 804911D0  98 1D 00 2F */	stb r0, 0x2f(r29)
/* 804911D4  7F A7 EB 78 */	mr r7, r29
/* 804911D8  38 80 00 0C */	li r4, 0xc
/* 804911DC  38 A0 00 03 */	li r5, 3
/* 804911E0  98 1D 00 2E */	stb r0, 0x2e(r29)
/* 804911E4  38 C0 FF FF */	li r6, -1
/* 804911E8  98 1D 00 30 */	stb r0, 0x30(r29)
/* 804911EC  4B F5 E5 19 */	bl mSM_open_submenu_new
/* 804911F0  38 60 00 04 */	li r3, 4
/* 804911F4  38 00 00 03 */	li r0, 3
/* 804911F8  98 7B 01 85 */	stb r3, 0x185(r27)
/* 804911FC  98 1B 01 86 */	stb r0, 0x186(r27)
/* 80491200  4B F2 E4 A9 */	bl func_803BF6A8
/* 80491204  4B F2 FB 3D */	bl mMsg_Set_LockContinue
/* 80491208  39 61 00 30 */	addi r11, r1, 0x30
/* 8049120C  4B C0 9D 0D */	bl func_8009AF18
/* 80491210  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80491214  7C 08 03 A6 */	mtlr r0
/* 80491218  38 21 00 30 */	addi r1, r1, 0x30
/* 8049121C  4E 80 00 20 */	blr 
