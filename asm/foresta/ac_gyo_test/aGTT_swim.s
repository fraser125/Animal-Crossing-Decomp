lbl_805A3E6C:
/* 805A3E6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A3E70  7C 08 02 A6 */	mflr r0
/* 805A3E74  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A3E78  39 61 00 20 */	addi r11, r1, 0x20
/* 805A3E7C  4B AF 70 59 */	bl func_8009AED4
/* 805A3E80  7C 7F 1B 78 */	mr r31, r3
/* 805A3E84  7C 9E 23 78 */	mr r30, r4
/* 805A3E88  3B A0 00 00 */	li r29, 0
/* 805A3E8C  4B FF FD 05 */	bl aGYO_check_wall
/* 805A3E90  2C 03 00 01 */	cmpwi r3, 1
/* 805A3E94  40 82 00 14 */	bne lbl_805A3EA8
/* 805A3E98  7F E3 FB 78 */	mr r3, r31
/* 805A3E9C  38 80 00 02 */	li r4, 2
/* 805A3EA0  48 00 0D A5 */	bl aGTT_setupAction
/* 805A3EA4  48 00 01 1C */	b lbl_805A3FC0
lbl_805A3EA8:
/* 805A3EA8  88 1F 02 42 */	lbz r0, 0x242(r31)
/* 805A3EAC  2C 00 00 01 */	cmpwi r0, 1
/* 805A3EB0  41 82 00 48 */	beq lbl_805A3EF8
/* 805A3EB4  40 80 00 10 */	bge lbl_805A3EC4
/* 805A3EB8  2C 00 00 00 */	cmpwi r0, 0
/* 805A3EBC  40 80 00 14 */	bge lbl_805A3ED0
/* 805A3EC0  48 00 00 B4 */	b lbl_805A3F74
lbl_805A3EC4:
/* 805A3EC4  2C 00 00 03 */	cmpwi r0, 3
/* 805A3EC8  40 80 00 AC */	bge lbl_805A3F74
/* 805A3ECC  48 00 00 64 */	b lbl_805A3F30
lbl_805A3ED0:
/* 805A3ED0  3C C0 80 65 */	lis r6, lit_755@ha /* 0x8064A400@ha */
/* 805A3ED4  3C A0 80 65 */	lis r5, lit_756@ha /* 0x8064A404@ha */
/* 805A3ED8  3C 80 80 65 */	lis r4, lit_554@ha /* 0x8064A3D8@ha */
/* 805A3EDC  C0 26 A4 00 */	lfs f1, lit_755@l(r6)  /* 0x8064A400@l */
/* 805A3EE0  C0 45 A4 04 */	lfs f2, lit_756@l(r5)  /* 0x8064A404@l */
/* 805A3EE4  7F E3 FB 78 */	mr r3, r31
/* 805A3EE8  C0 64 A3 D8 */	lfs f3, lit_554@l(r4)  /* 0x8064A3D8@l */
/* 805A3EEC  4B FF F6 AD */	bl aGTT_swim_speed_check
/* 805A3EF0  7C 7D 1B 78 */	mr r29, r3
/* 805A3EF4  48 00 00 80 */	b lbl_805A3F74
lbl_805A3EF8:
/* 805A3EF8  3C C0 80 65 */	lis r6, lit_757@ha /* 0x8064A408@ha */
/* 805A3EFC  3C A0 80 65 */	lis r5, lit_756@ha /* 0x8064A404@ha */
/* 805A3F00  3C 80 80 65 */	lis r4, lit_554@ha /* 0x8064A3D8@ha */
/* 805A3F04  C0 26 A4 08 */	lfs f1, lit_757@l(r6)  /* 0x8064A408@l */
/* 805A3F08  C0 45 A4 04 */	lfs f2, lit_756@l(r5)  /* 0x8064A404@l */
/* 805A3F0C  7F E3 FB 78 */	mr r3, r31
/* 805A3F10  C0 64 A3 D8 */	lfs f3, lit_554@l(r4)  /* 0x8064A3D8@l */
/* 805A3F14  4B FF F6 85 */	bl aGTT_swim_speed_check
/* 805A3F18  7C 7D 1B 78 */	mr r29, r3
/* 805A3F1C  2C 1D 00 01 */	cmpwi r29, 1
/* 805A3F20  40 82 00 54 */	bne lbl_805A3F74
/* 805A3F24  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805A3F28  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805A3F2C  48 00 00 48 */	b lbl_805A3F74
lbl_805A3F30:
/* 805A3F30  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A3F34  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 805A3F38  41 82 00 18 */	beq lbl_805A3F50
/* 805A3F3C  A8 9F 02 32 */	lha r4, 0x232(r31)
/* 805A3F40  7F E3 FB 78 */	mr r3, r31
/* 805A3F44  38 A0 04 00 */	li r5, 0x400
/* 805A3F48  4B FF F4 B1 */	bl aGTT_chase_s_angle
/* 805A3F4C  48 00 00 28 */	b lbl_805A3F74
lbl_805A3F50:
/* 805A3F50  3C C0 80 65 */	lis r6, lit_757@ha /* 0x8064A408@ha */
/* 805A3F54  3C A0 80 65 */	lis r5, lit_756@ha /* 0x8064A404@ha */
/* 805A3F58  3C 80 80 65 */	lis r4, lit_524@ha /* 0x8064A3D4@ha */
/* 805A3F5C  C0 26 A4 08 */	lfs f1, lit_757@l(r6)  /* 0x8064A408@l */
/* 805A3F60  C0 45 A4 04 */	lfs f2, lit_756@l(r5)  /* 0x8064A404@l */
/* 805A3F64  7F E3 FB 78 */	mr r3, r31
/* 805A3F68  C0 64 A3 D4 */	lfs f3, lit_524@l(r4)  /* 0x8064A3D4@l */
/* 805A3F6C  4B FF F6 B9 */	bl aGTT_swim_speed_change
/* 805A3F70  7C 7D 1B 78 */	mr r29, r3
lbl_805A3F74:
/* 805A3F74  2C 1D 00 01 */	cmpwi r29, 1
/* 805A3F78  40 82 00 14 */	bne lbl_805A3F8C
/* 805A3F7C  7F E3 FB 78 */	mr r3, r31
/* 805A3F80  38 80 00 01 */	li r4, 1
/* 805A3F84  48 00 0C C1 */	bl aGTT_setupAction
/* 805A3F88  48 00 00 38 */	b lbl_805A3FC0
lbl_805A3F8C:
/* 805A3F8C  7F E3 FB 78 */	mr r3, r31
/* 805A3F90  7F C4 F3 78 */	mr r4, r30
/* 805A3F94  4B FF FA A9 */	bl aGTT_player_near
/* 805A3F98  2C 03 00 00 */	cmpwi r3, 0
/* 805A3F9C  40 82 00 24 */	bne lbl_805A3FC0
/* 805A3FA0  7F E3 FB 78 */	mr r3, r31
/* 805A3FA4  7F C4 F3 78 */	mr r4, r30
/* 805A3FA8  4B FF F8 D5 */	bl aGTT_search_Uki
/* 805A3FAC  2C 03 00 01 */	cmpwi r3, 1
/* 805A3FB0  40 82 00 10 */	bne lbl_805A3FC0
/* 805A3FB4  7F E3 FB 78 */	mr r3, r31
/* 805A3FB8  38 80 00 03 */	li r4, 3
/* 805A3FBC  48 00 0C 89 */	bl aGTT_setupAction
lbl_805A3FC0:
/* 805A3FC0  39 61 00 20 */	addi r11, r1, 0x20
/* 805A3FC4  4B AF 6F 5D */	bl func_8009AF20
/* 805A3FC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A3FCC  7C 08 03 A6 */	mtlr r0
/* 805A3FD0  38 21 00 20 */	addi r1, r1, 0x20
/* 805A3FD4  4E 80 00 20 */	blr 
