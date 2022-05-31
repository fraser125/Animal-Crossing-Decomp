lbl_805B2F28:
/* 805B2F28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B2F2C  7C 08 02 A6 */	mflr r0
/* 805B2F30  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B2F34  39 61 00 20 */	addi r11, r1, 0x20
/* 805B2F38  4B AE 7F 99 */	bl func_8009AED0
/* 805B2F3C  3F 80 80 5B */	lis r28, func_805B3014@ha /* 0x805B3014@ha */
/* 805B2F40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B2F44  3B 9C 30 14 */	addi r28, r28, func_805B3014@l /* 0x805B3014@l */
/* 805B2F48  3F A0 81 20 */	lis r29, data_811FA0A0@ha /* 0x811FA0A0@ha */
/* 805B2F4C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B2F50  3F C0 80 5B */	lis r30, aMKBC_clip_roll_draw@ha /* 0x805B30A8@ha */
/* 805B2F54  3F E0 80 5B */	lis r31, aMKBC_clip_think_init@ha /* 0x805B36D8@ha */
/* 805B2F58  3D 80 80 5B */	lis r12, aMKBC_clip_sound_proc@ha /* 0x805B37DC@ha */
/* 805B2F5C  3D 60 80 5B */	lis r11, aMKBC_clip_section_chk@ha /* 0x805B3964@ha */
/* 805B2F60  3D 40 80 5B */	lis r10, aMKBC_clip_bgm_no@ha /* 0x805B397C@ha */
/* 805B2F64  3D 20 80 5B */	lis r9, aMKBC_clip_roll_proc@ha /* 0x805B398C@ha */
/* 805B2F68  3D 00 80 5B */	lis r8, aMKBC_clip_head_up@ha /* 0x805B375C@ha */
/* 805B2F6C  3C E0 80 5B */	lis r7, aMKBC_clip_set_itemstr@ha /* 0x805B3AE8@ha */
/* 805B2F70  3C C0 80 5B */	lis r6, aMKBC_clip_set_itemstr3@ha /* 0x805B3B5C@ha */
/* 805B2F74  3C A0 80 5B */	lis r5, aMKBC_clip_search_merody@ha /* 0x805B3C10@ha */
/* 805B2F78  3C 80 80 5B */	lis r4, aMKBC_clip_check_merody@ha /* 0x805B3D1C@ha */
/* 805B2F7C  97 9D A0 A0 */	stwu r28, data_811FA0A0@l(r29)  /* 0x811FA0A0@l */
/* 805B2F80  3B DE 30 A8 */	addi r30, r30, aMKBC_clip_roll_draw@l /* 0x805B30A8@l */
/* 805B2F84  3B FF 36 D8 */	addi r31, r31, aMKBC_clip_think_init@l /* 0x805B36D8@l */
/* 805B2F88  39 8C 37 DC */	addi r12, r12, aMKBC_clip_sound_proc@l /* 0x805B37DC@l */
/* 805B2F8C  39 6B 39 64 */	addi r11, r11, aMKBC_clip_section_chk@l /* 0x805B3964@l */
/* 805B2F90  39 4A 39 7C */	addi r10, r10, aMKBC_clip_bgm_no@l /* 0x805B397C@l */
/* 805B2F94  39 29 39 8C */	addi r9, r9, aMKBC_clip_roll_proc@l /* 0x805B398C@l */
/* 805B2F98  39 08 37 5C */	addi r8, r8, aMKBC_clip_head_up@l /* 0x805B375C@l */
/* 805B2F9C  38 E7 3A E8 */	addi r7, r7, aMKBC_clip_set_itemstr@l /* 0x805B3AE8@l */
/* 805B2FA0  38 C6 3B 5C */	addi r6, r6, aMKBC_clip_set_itemstr3@l /* 0x805B3B5C@l */
/* 805B2FA4  38 A5 3C 10 */	addi r5, r5, aMKBC_clip_search_merody@l /* 0x805B3C10@l */
/* 805B2FA8  38 04 3D 1C */	addi r0, r4, aMKBC_clip_check_merody@l /* 0x805B3D1C@l */
/* 805B2FAC  3C 63 00 02 */	addis r3, r3, 2
/* 805B2FB0  91 7D 00 10 */	stw r11, 0x10(r29)
/* 805B2FB4  39 61 00 20 */	addi r11, r1, 0x20
/* 805B2FB8  93 DD 00 04 */	stw r30, 4(r29)
/* 805B2FBC  93 FD 00 08 */	stw r31, 8(r29)
/* 805B2FC0  91 9D 00 0C */	stw r12, 0xc(r29)
/* 805B2FC4  91 5D 00 14 */	stw r10, 0x14(r29)
/* 805B2FC8  91 3D 00 18 */	stw r9, 0x18(r29)
/* 805B2FCC  91 1D 00 1C */	stw r8, 0x1c(r29)
/* 805B2FD0  90 FD 00 20 */	stw r7, 0x20(r29)
/* 805B2FD4  90 DD 00 24 */	stw r6, 0x24(r29)
/* 805B2FD8  90 BD 00 28 */	stw r5, 0x28(r29)
/* 805B2FDC  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 805B2FE0  93 A3 60 E4 */	stw r29, 0x60e4(r3)
/* 805B2FE4  4B AE 7F 39 */	bl func_8009AF1C
/* 805B2FE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B2FEC  7C 08 03 A6 */	mtlr r0
/* 805B2FF0  38 21 00 20 */	addi r1, r1, 0x20
/* 805B2FF4  4E 80 00 20 */	blr 
