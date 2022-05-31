lbl_80596C6C:
/* 80596C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80596C70  7C 08 02 A6 */	mflr r0
/* 80596C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80596C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80596C7C  7C 7F 1B 78 */	mr r31, r3
/* 80596C80  93 C1 00 08 */	stw r30, 8(r1)
/* 80596C84  7C 9E 23 78 */	mr r30, r4
/* 80596C88  4B FF F8 FD */	bl aIBT_anime_proc
/* 80596C8C  88 1F 00 9A */	lbz r0, 0x9a(r31)
/* 80596C90  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80596C94  41 82 00 18 */	beq lbl_80596CAC
/* 80596C98  7F E3 FB 78 */	mr r3, r31
/* 80596C9C  7F C5 F3 78 */	mr r5, r30
/* 80596CA0  38 80 00 05 */	li r4, 5
/* 80596CA4  48 00 08 21 */	bl aIBT_setupAction
/* 80596CA8  48 00 00 5C */	b lbl_80596D04
lbl_80596CAC:
/* 80596CAC  88 1F 00 98 */	lbz r0, 0x98(r31)
/* 80596CB0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80596CB4  41 82 00 48 */	beq lbl_80596CFC
/* 80596CB8  80 9F 02 28 */	lwz r4, 0x228(r31)
/* 80596CBC  2C 04 00 00 */	cmpwi r4, 0
/* 80596CC0  40 81 00 1C */	ble lbl_80596CDC
/* 80596CC4  3C 60 80 65 */	lis r3, lit_403@ha /* 0x80649DE4@ha */
/* 80596CC8  38 04 FF FF */	addi r0, r4, -1
/* 80596CCC  90 1F 02 28 */	stw r0, 0x228(r31)
/* 80596CD0  C0 03 9D E4 */	lfs f0, lit_403@l(r3)  /* 0x80649DE4@l */
/* 80596CD4  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80596CD8  48 00 00 2C */	b lbl_80596D04
lbl_80596CDC:
/* 80596CDC  38 00 00 08 */	li r0, 8
/* 80596CE0  7F E3 FB 78 */	mr r3, r31
/* 80596CE4  90 1F 02 28 */	stw r0, 0x228(r31)
/* 80596CE8  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 80596CEC  4B FF FC 2D */	bl aIBT_chk_avoid_jump_angle
/* 80596CF0  7F E3 FB 78 */	mr r3, r31
/* 80596CF4  4B FF FC A1 */	bl aIBT_set_avoid_jump_spd
/* 80596CF8  48 00 00 0C */	b lbl_80596D04
lbl_80596CFC:
/* 80596CFC  7F E3 FB 78 */	mr r3, r31
/* 80596D00  4B FF F9 35 */	bl aIBT_set_fly_se
lbl_80596D04:
/* 80596D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80596D08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80596D0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80596D10  7C 08 03 A6 */	mtlr r0
/* 80596D14  38 21 00 10 */	addi r1, r1, 0x10
/* 80596D18  4E 80 00 20 */	blr 
