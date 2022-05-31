lbl_8056EDE8:
/* 8056EDE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056EDEC  7C 08 02 A6 */	mflr r0
/* 8056EDF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056EDF4  39 61 00 20 */	addi r11, r1, 0x20
/* 8056EDF8  4B B2 C0 DD */	bl func_8009AED4
/* 8056EDFC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056EE00  7C 7F 1B 78 */	mr r31, r3
/* 8056EE04  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056EE08  7C 9D 23 78 */	mr r29, r4
/* 8056EE0C  3F C5 00 02 */	addis r30, r5, 2
/* 8056EE10  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 8056EE14  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8056EE18  7D 89 03 A6 */	mtctr r12
/* 8056EE1C  4E 80 04 21 */	bctrl 
/* 8056EE20  2C 03 00 01 */	cmpwi r3, 1
/* 8056EE24  40 82 00 94 */	bne lbl_8056EEB8
/* 8056EE28  3C 60 80 57 */	lis r3, aNRG_schedule_proc@ha /* 0x8056FED4@ha */
/* 8056EE2C  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806BED44@ha */
/* 8056EE30  38 03 FE D4 */	addi r0, r3, aNRG_schedule_proc@l /* 0x8056FED4@l */
/* 8056EE34  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 8056EE38  38 A4 ED 44 */	addi r5, r4, ct_data@l /* 0x806BED44@l */
/* 8056EE3C  7F E3 FB 78 */	mr r3, r31
/* 8056EE40  7F A4 EB 78 */	mr r4, r29
/* 8056EE44  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 8056EE48  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8056EE4C  7D 89 03 A6 */	mtctr r12
/* 8056EE50  4E 80 04 21 */	bctrl 
/* 8056EE54  38 00 00 02 */	li r0, 2
/* 8056EE58  38 7F 09 AC */	addi r3, r31, 0x9ac
/* 8056EE5C  98 1F 09 59 */	stb r0, 0x959(r31)
/* 8056EE60  38 9F 09 B0 */	addi r4, r31, 0x9b0
/* 8056EE64  38 A0 00 02 */	li r5, 2
/* 8056EE68  A8 1F 09 78 */	lha r0, 0x978(r31)
/* 8056EE6C  98 1F 09 AA */	stb r0, 0x9aa(r31)
/* 8056EE70  4B E3 75 91 */	bl mFI_BlockKind2BkNum
/* 8056EE74  3C 60 80 65 */	lis r3, data_806498D4@ha /* 0x806498D4@ha */
/* 8056EE78  38 00 00 FF */	li r0, 0xff
/* 8056EE7C  38 83 98 D4 */	addi r4, r3, data_806498D4@l /* 0x806498D4@l */
/* 8056EE80  7F A3 EB 78 */	mr r3, r29
/* 8056EE84  C0 04 00 00 */	lfs f0, 0(r4)
/* 8056EE88  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
/* 8056EE8C  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 8056EE90  4B E6 A7 B1 */	bl get_player_actor_withoutCheck
/* 8056EE94  7C 64 1B 79 */	or. r4, r3, r3
/* 8056EE98  41 82 00 14 */	beq lbl_8056EEAC
/* 8056EE9C  38 7F 00 28 */	addi r3, r31, 0x28
/* 8056EEA0  38 84 00 28 */	addi r4, r4, 0x28
/* 8056EEA4  4B E4 C2 8D */	bl search_position_angleY
/* 8056EEA8  48 00 00 08 */	b lbl_8056EEB0
lbl_8056EEAC:
/* 8056EEAC  38 60 00 00 */	li r3, 0
lbl_8056EEB0:
/* 8056EEB0  B0 7F 00 DE */	sth r3, 0xde(r31)
/* 8056EEB4  B0 7F 00 36 */	sth r3, 0x36(r31)
lbl_8056EEB8:
/* 8056EEB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8056EEBC  4B B2 C0 65 */	bl func_8009AF20
/* 8056EEC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056EEC4  7C 08 03 A6 */	mtlr r0
/* 8056EEC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8056EECC  4E 80 00 20 */	blr 
