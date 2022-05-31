lbl_80428E7C:
/* 80428E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80428E80  7C 08 02 A6 */	mflr r0
/* 80428E84  3C C0 80 43 */	lis r6, aHTMD_clip_player_move@ha /* 0x80429984@ha */
/* 80428E88  3C 80 80 43 */	lis r4, aHTC_clip_talk_info@ha /* 0x8042975C@ha */
/* 80428E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80428E90  38 04 97 5C */	addi r0, r4, aHTC_clip_talk_info@l /* 0x8042975C@l */
/* 80428E94  3C A0 80 43 */	lis r5, aHTMD_clip_think_init@ha /* 0x8042A134@ha */
/* 80428E98  3C 80 80 43 */	lis r4, aHTMD_clip_set_start@ha /* 0x8042984C@ha */
/* 80428E9C  90 03 01 74 */	stw r0, 0x174(r3)
/* 80428EA0  38 05 A1 34 */	addi r0, r5, aHTMD_clip_think_init@l /* 0x8042A134@l */
/* 80428EA4  38 E6 99 84 */	addi r7, r6, aHTMD_clip_player_move@l /* 0x80429984@l */
/* 80428EA8  3C A0 80 43 */	lis r5, aHTMD_clip_look_player@ha /* 0x80429A60@ha */
/* 80428EAC  90 03 01 78 */	stw r0, 0x178(r3)
/* 80428EB0  38 04 98 4C */	addi r0, r4, aHTMD_clip_set_start@l /* 0x8042984C@l */
/* 80428EB4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80428EB8  38 C5 9A 60 */	addi r6, r5, aHTMD_clip_look_player@l /* 0x80429A60@l */
/* 80428EBC  90 03 01 7C */	stw r0, 0x17c(r3)
/* 80428EC0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80428EC4  3C A4 00 02 */	addis r5, r4, 2
/* 80428EC8  38 03 01 74 */	addi r0, r3, 0x174
/* 80428ECC  90 E3 01 80 */	stw r7, 0x180(r3)
/* 80428ED0  38 80 00 00 */	li r4, 0
/* 80428ED4  90 C3 01 84 */	stw r6, 0x184(r3)
/* 80428ED8  90 05 60 D0 */	stw r0, 0x60d0(r5)
/* 80428EDC  48 00 05 A1 */	bl aHTC_setup_move_proc
/* 80428EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80428EE4  7C 08 03 A6 */	mtlr r0
/* 80428EE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80428EEC  4E 80 00 20 */	blr 
