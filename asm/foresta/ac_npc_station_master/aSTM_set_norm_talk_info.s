lbl_8057F3D8:
/* 8057F3D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057F3DC  7C 08 02 A6 */	mflr r0
/* 8057F3E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057F3E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8057F3E8  4B B1 BA ED */	bl func_8009AED4
/* 8057F3EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057F3F0  7C 7F 1B 78 */	mr r31, r3
/* 8057F3F4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8057F3F8  88 1F 09 A2 */	lbz r0, 0x9a2(r31)
/* 8057F3FC  3F C3 00 02 */	addis r30, r3, 2
/* 8057F400  3C 60 80 6C */	lis r3, dt_tbl_532@ha /* 0x806C0AE8@ha */
/* 8057F404  80 BE 60 F8 */	lwz r5, 0x60f8(r30)
/* 8057F408  54 04 18 38 */	slwi r4, r0, 3
/* 8057F40C  38 03 0A E8 */	addi r0, r3, dt_tbl_532@l /* 0x806C0AE8@l */
/* 8057F410  28 05 00 00 */	cmplwi r5, 0
/* 8057F414  7F A0 22 14 */	add r29, r0, r4
/* 8057F418  41 82 00 68 */	beq lbl_8057F480
/* 8057F41C  81 85 00 00 */	lwz r12, 0(r5)
/* 8057F420  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D00E@ha */
/* 8057F424  38 63 D0 0E */	addi r3, r3, 0xD00E /* 0x0000D00E@l */
/* 8057F428  7D 89 03 A6 */	mtctr r12
/* 8057F42C  4E 80 04 21 */	bctrl 
/* 8057F430  2C 03 00 00 */	cmpwi r3, 0
/* 8057F434  40 82 00 4C */	bne lbl_8057F480
/* 8057F438  80 BE 60 F8 */	lwz r5, 0x60f8(r30)
/* 8057F43C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D00E@ha */
/* 8057F440  38 63 D0 0E */	addi r3, r3, 0xD00E /* 0x0000D00E@l */
/* 8057F444  38 80 00 01 */	li r4, 1
/* 8057F448  81 85 00 08 */	lwz r12, 8(r5)
/* 8057F44C  7D 89 03 A6 */	mtctr r12
/* 8057F450  4E 80 04 21 */	bctrl 
/* 8057F454  4B E1 90 C1 */	bl mDemo_Set_msg_num
/* 8057F458  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057F45C  7F E3 FB 78 */	mr r3, r31
/* 8057F460  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8057F464  38 80 00 0F */	li r4, 0xf
/* 8057F468  3C A5 00 02 */	addis r5, r5, 2
/* 8057F46C  80 A5 60 EC */	lwz r5, 0x60ec(r5)
/* 8057F470  81 85 00 00 */	lwz r12, 0(r5)
/* 8057F474  7D 89 03 A6 */	mtctr r12
/* 8057F478  4E 80 04 21 */	bctrl 
/* 8057F47C  48 00 00 84 */	b lbl_8057F500
lbl_8057F480:
/* 8057F480  88 1F 09 A2 */	lbz r0, 0x9a2(r31)
/* 8057F484  28 00 00 02 */	cmplwi r0, 2
/* 8057F488  40 82 00 34 */	bne lbl_8057F4BC
/* 8057F48C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057F490  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057F494  3C 63 00 02 */	addis r3, r3, 2
/* 8057F498  88 03 0F 1A */	lbz r0, 0xf1a(r3)
/* 8057F49C  28 00 00 00 */	cmplwi r0, 0
/* 8057F4A0  40 82 00 1C */	bne lbl_8057F4BC
/* 8057F4A4  38 60 09 45 */	li r3, 0x945
/* 8057F4A8  4B E1 90 6D */	bl mDemo_Set_msg_num
/* 8057F4AC  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 8057F4B0  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 8057F4B4  90 1F 09 94 */	stw r0, 0x994(r31)
/* 8057F4B8  48 00 00 48 */	b lbl_8057F500
lbl_8057F4BC:
/* 8057F4BC  80 7D 00 00 */	lwz r3, 0(r29)
/* 8057F4C0  4B E1 90 55 */	bl mDemo_Set_msg_num
/* 8057F4C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057F4C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057F4CC  3C 63 00 02 */	addis r3, r3, 2
/* 8057F4D0  80 63 60 EC */	lwz r3, 0x60ec(r3)
/* 8057F4D4  28 03 00 00 */	cmplwi r3, 0
/* 8057F4D8  41 82 00 1C */	beq lbl_8057F4F4
/* 8057F4DC  81 83 00 00 */	lwz r12, 0(r3)
/* 8057F4E0  7F E3 FB 78 */	mr r3, r31
/* 8057F4E4  88 9D 00 04 */	lbz r4, 4(r29)
/* 8057F4E8  7D 89 03 A6 */	mtctr r12
/* 8057F4EC  4E 80 04 21 */	bctrl 
/* 8057F4F0  48 00 00 10 */	b lbl_8057F500
lbl_8057F4F4:
/* 8057F4F4  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 8057F4F8  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 8057F4FC  90 1F 09 94 */	stw r0, 0x994(r31)
lbl_8057F500:
/* 8057F500  38 60 00 01 */	li r3, 1
/* 8057F504  4B E1 93 45 */	bl mDemo_Set_talk_turn
/* 8057F508  38 60 00 03 */	li r3, 3
/* 8057F50C  4B E1 94 15 */	bl mDemo_Set_camera
/* 8057F510  39 61 00 20 */	addi r11, r1, 0x20
/* 8057F514  4B B1 BA 0D */	bl func_8009AF20
/* 8057F518  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057F51C  7C 08 03 A6 */	mtlr r0
/* 8057F520  38 21 00 20 */	addi r1, r1, 0x20
/* 8057F524  4E 80 00 20 */	blr 
