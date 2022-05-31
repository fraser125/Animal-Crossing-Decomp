lbl_80554970:
/* 80554970  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80554974  7C 08 02 A6 */	mflr r0
/* 80554978  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055497C  39 61 00 20 */	addi r11, r1, 0x20
/* 80554980  4B B4 65 55 */	bl func_8009AED4
/* 80554984  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80554988  7C 7E 1B 78 */	mr r30, r3
/* 8055498C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80554990  7C 9D 23 78 */	mr r29, r4
/* 80554994  3F E5 00 02 */	addis r31, r5, 2
/* 80554998  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8055499C  81 85 00 E4 */	lwz r12, 0xe4(r5)
/* 805549A0  7D 89 03 A6 */	mtctr r12
/* 805549A4  4E 80 04 21 */	bctrl 
/* 805549A8  7F C3 F3 78 */	mr r3, r30
/* 805549AC  4B FF E9 05 */	bl aNGD_talk_demo_proc
/* 805549B0  7F C3 F3 78 */	mr r3, r30
/* 805549B4  4B FF E9 59 */	bl aNGD_check_talk_msg_no
/* 805549B8  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 805549BC  7F C3 F3 78 */	mr r3, r30
/* 805549C0  7F A4 EB 78 */	mr r4, r29
/* 805549C4  7D 89 03 A6 */	mtctr r12
/* 805549C8  4E 80 04 21 */	bctrl 
/* 805549CC  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 805549D0  7F C3 F3 78 */	mr r3, r30
/* 805549D4  7F A4 EB 78 */	mr r4, r29
/* 805549D8  81 85 00 E8 */	lwz r12, 0xe8(r5)
/* 805549DC  7D 89 03 A6 */	mtctr r12
/* 805549E0  4E 80 04 21 */	bctrl 
/* 805549E4  7F C3 F3 78 */	mr r3, r30
/* 805549E8  7F A4 EB 78 */	mr r4, r29
/* 805549EC  4B FF E3 59 */	bl func_80552D44
/* 805549F0  7F C3 F3 78 */	mr r3, r30
/* 805549F4  4B FF E7 09 */	bl aNGD_set_camera_eyes
/* 805549F8  7F A3 EB 78 */	mr r3, r29
/* 805549FC  4B E9 93 75 */	bl mSC_change_player_freeze
/* 80554A00  39 61 00 20 */	addi r11, r1, 0x20
/* 80554A04  4B B4 65 1D */	bl func_8009AF20
/* 80554A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80554A0C  7C 08 03 A6 */	mtlr r0
/* 80554A10  38 21 00 20 */	addi r1, r1, 0x20
/* 80554A14  4E 80 00 20 */	blr 
