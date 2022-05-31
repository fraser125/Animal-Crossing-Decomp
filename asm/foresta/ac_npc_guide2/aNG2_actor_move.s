lbl_80556584:
/* 80556584  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80556588  7C 08 02 A6 */	mflr r0
/* 8055658C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80556590  39 61 00 20 */	addi r11, r1, 0x20
/* 80556594  4B B4 49 41 */	bl func_8009AED4
/* 80556598  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055659C  7C 7E 1B 78 */	mr r30, r3
/* 805565A0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805565A4  7C 9D 23 78 */	mr r29, r4
/* 805565A8  3F E5 00 02 */	addis r31, r5, 2
/* 805565AC  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 805565B0  81 85 00 E4 */	lwz r12, 0xe4(r5)
/* 805565B4  7D 89 03 A6 */	mtctr r12
/* 805565B8  4E 80 04 21 */	bctrl 
/* 805565BC  7F C3 F3 78 */	mr r3, r30
/* 805565C0  4B FF EC 01 */	bl aNG2_talk_demo_proc
/* 805565C4  7F C3 F3 78 */	mr r3, r30
/* 805565C8  4B FF ED 8D */	bl aNG2_check_talk_msg_no
/* 805565CC  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 805565D0  7F C3 F3 78 */	mr r3, r30
/* 805565D4  7F A4 EB 78 */	mr r4, r29
/* 805565D8  7D 89 03 A6 */	mtctr r12
/* 805565DC  4E 80 04 21 */	bctrl 
/* 805565E0  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 805565E4  7F C3 F3 78 */	mr r3, r30
/* 805565E8  7F A4 EB 78 */	mr r4, r29
/* 805565EC  81 85 00 E8 */	lwz r12, 0xe8(r5)
/* 805565F0  7D 89 03 A6 */	mtctr r12
/* 805565F4  4E 80 04 21 */	bctrl 
/* 805565F8  7F C3 F3 78 */	mr r3, r30
/* 805565FC  7F A4 EB 78 */	mr r4, r29
/* 80556600  4B FF E6 55 */	bl func_80554C54
/* 80556604  7F C3 F3 78 */	mr r3, r30
/* 80556608  4B FF EA 05 */	bl aNG2_set_camera_eyes
/* 8055660C  7F A3 EB 78 */	mr r3, r29
/* 80556610  4B E9 77 61 */	bl mSC_change_player_freeze
/* 80556614  39 61 00 20 */	addi r11, r1, 0x20
/* 80556618  4B B4 49 09 */	bl func_8009AF20
/* 8055661C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80556620  7C 08 03 A6 */	mtlr r0
/* 80556624  38 21 00 20 */	addi r1, r1, 0x20
/* 80556628  4E 80 00 20 */	blr 
