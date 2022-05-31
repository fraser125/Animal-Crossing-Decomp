lbl_805E53A4:
/* 805E53A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E53A8  7C 08 02 A6 */	mflr r0
/* 805E53AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E53B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E53B4  4B AB 5B 1D */	bl func_8009AED0
/* 805E53B8  7C 7E 1B 78 */	mr r30, r3
/* 805E53BC  38 00 00 00 */	li r0, 0
/* 805E53C0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E53C4  90 1F 09 3C */	stw r0, 0x93c(r31)
/* 805E53C8  80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 805E53CC  2C 00 00 00 */	cmpwi r0, 0
/* 805E53D0  40 82 00 18 */	bne lbl_805E53E8
/* 805E53D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E53D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E53DC  3C 63 00 02 */	addis r3, r3, 2
/* 805E53E0  83 83 61 3C */	lwz r28, 0x613c(r3)
/* 805E53E4  48 00 00 5C */	b lbl_805E5440
lbl_805E53E8:
/* 805E53E8  2C 00 00 01 */	cmpwi r0, 1
/* 805E53EC  40 82 00 18 */	bne lbl_805E5404
/* 805E53F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E53F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E53F8  3F 83 00 01 */	addis r28, r3, 1
/* 805E53FC  3B 9C 91 20 */	addi r28, r28, -28384
/* 805E5400  48 00 00 40 */	b lbl_805E5440
lbl_805E5404:
/* 805E5404  2C 00 00 02 */	cmpwi r0, 2
/* 805E5408  40 82 00 14 */	bne lbl_805E541C
/* 805E540C  3C 60 81 21 */	lis r3, mLE_npc_end_word_edit@ha /* 0x81212578@ha */
/* 805E5410  38 03 25 78 */	addi r0, r3, mLE_npc_end_word_edit@l /* 0x81212578@l */
/* 805E5414  7C 1C 03 78 */	mr r28, r0
/* 805E5418  48 00 00 28 */	b lbl_805E5440
lbl_805E541C:
/* 805E541C  2C 00 00 04 */	cmpwi r0, 4
/* 805E5420  83 9F 01 B4 */	lwz r28, 0x1b4(r31)
/* 805E5424  40 82 00 1C */	bne lbl_805E5440
/* 805E5428  3C 60 81 21 */	lis r3, data_81212208@ha /* 0x81212208@ha */
/* 805E542C  3C 80 80 8C */	lis r4, itemName_minidisk@ha /* 0x808C2A70@ha */
/* 805E5430  38 63 22 08 */	addi r3, r3, data_81212208@l /* 0x81212208@l */
/* 805E5434  38 A0 03 70 */	li r5, 0x370
/* 805E5438  38 84 2A 70 */	addi r4, r4, itemName_minidisk@l /* 0x808C2A70@l */
/* 805E543C  4B DD 55 E9 */	bl func_803BAA24
lbl_805E5440:
/* 805E5440  80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 805E5444  3C 60 80 6D */	lis r3, mLE_win_data@ha /* 0x806CD728@ha */
/* 805E5448  38 83 D7 28 */	addi r4, r3, mLE_win_data@l /* 0x806CD728@l */
/* 805E544C  7F 83 E3 78 */	mr r3, r28
/* 805E5450  1C 00 00 34 */	mulli r0, r0, 0x34
/* 805E5454  38 A0 00 20 */	li r5, 0x20
/* 805E5458  7C 84 02 14 */	add r4, r4, r0
/* 805E545C  83 A4 00 20 */	lwz r29, 0x20(r4)
/* 805E5460  7F A4 EB 78 */	mr r4, r29
/* 805E5464  4B DD 55 E5 */	bl mem_clear
/* 805E5468  38 00 00 00 */	li r0, 0
/* 805E546C  3C 60 80 6D */	lis r3, mLE_win_data@ha /* 0x806CD728@ha */
/* 805E5470  90 1F 01 78 */	stw r0, 0x178(r31)
/* 805E5474  38 80 00 02 */	li r4, 2
/* 805E5478  38 00 00 05 */	li r0, 5
/* 805E547C  39 03 D7 28 */	addi r8, r3, mLE_win_data@l /* 0x806CD728@l */
/* 805E5480  90 9F 01 A4 */	stw r4, 0x1a4(r31)
/* 805E5484  7F C3 F3 78 */	mr r3, r30
/* 805E5488  7F A6 EB 78 */	mr r6, r29
/* 805E548C  7F 87 E3 78 */	mr r7, r28
/* 805E5490  B0 1F 01 A8 */	sth r0, 0x1a8(r31)
/* 805E5494  38 80 00 0A */	li r4, 0xa
/* 805E5498  38 A0 00 03 */	li r5, 3
/* 805E549C  80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 805E54A0  1C 00 00 34 */	mulli r0, r0, 0x34
/* 805E54A4  7D 08 02 14 */	add r8, r8, r0
/* 805E54A8  81 08 00 24 */	lwz r8, 0x24(r8)
/* 805E54AC  4B E0 A2 7D */	bl mSM_open_submenu_new2
/* 805E54B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E54B4  4B AB 5A 69 */	bl func_8009AF1C
/* 805E54B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E54BC  7C 08 03 A6 */	mtlr r0
/* 805E54C0  38 21 00 20 */	addi r1, r1, 0x20
/* 805E54C4  4E 80 00 20 */	blr 
