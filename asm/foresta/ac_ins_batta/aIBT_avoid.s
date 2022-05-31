lbl_80596B0C:
/* 80596B0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80596B10  7C 08 02 A6 */	mflr r0
/* 80596B14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80596B18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80596B1C  7C 7F 1B 78 */	mr r31, r3
/* 80596B20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80596B24  7C 9E 23 78 */	mr r30, r4
/* 80596B28  4B FF FA 5D */	bl aIBT_anime_proc
/* 80596B2C  88 1F 00 9A */	lbz r0, 0x9a(r31)
/* 80596B30  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80596B34  41 82 00 18 */	beq lbl_80596B4C
/* 80596B38  7F E3 FB 78 */	mr r3, r31
/* 80596B3C  7F C5 F3 78 */	mr r5, r30
/* 80596B40  38 80 00 05 */	li r4, 5
/* 80596B44  48 00 09 81 */	bl aIBT_setupAction
/* 80596B48  48 00 01 0C */	b lbl_80596C54
lbl_80596B4C:
/* 80596B4C  7F E3 FB 78 */	mr r3, r31
/* 80596B50  4B FF FB 8D */	bl aIBT_check_player_net
/* 80596B54  2C 03 00 00 */	cmpwi r3, 0
/* 80596B58  40 82 00 FC */	bne lbl_80596C54
/* 80596B5C  88 1F 00 98 */	lbz r0, 0x98(r31)
/* 80596B60  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80596B64  41 82 00 F0 */	beq lbl_80596C54
/* 80596B68  80 9F 02 28 */	lwz r4, 0x228(r31)
/* 80596B6C  2C 04 00 00 */	cmpwi r4, 0
/* 80596B70  40 81 00 1C */	ble lbl_80596B8C
/* 80596B74  3C 60 80 65 */	lis r3, lit_403@ha /* 0x80649DE4@ha */
/* 80596B78  38 04 FF FF */	addi r0, r4, -1
/* 80596B7C  90 1F 02 28 */	stw r0, 0x228(r31)
/* 80596B80  C0 03 9D E4 */	lfs f0, lit_403@l(r3)  /* 0x80649DE4@l */
/* 80596B84  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80596B88  48 00 00 CC */	b lbl_80596C54
lbl_80596B8C:
/* 80596B8C  38 00 00 08 */	li r0, 8
/* 80596B90  3C 60 80 65 */	lis r3, lit_580@ha /* 0x80649E24@ha */
/* 80596B94  90 1F 02 28 */	stw r0, 0x228(r31)
/* 80596B98  C0 03 9E 24 */	lfs f0, lit_580@l(r3)  /* 0x80649E24@l */
/* 80596B9C  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 80596BA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80596BA4  40 80 00 54 */	bge lbl_80596BF8
/* 80596BA8  4B AC 61 4D */	bl fqrand
/* 80596BAC  3C 60 80 65 */	lis r3, lit_581@ha /* 0x80649E28@ha */
/* 80596BB0  3C 80 80 65 */	lis r4, lit_548@ha /* 0x80649E1C@ha */
/* 80596BB4  38 A3 9E 28 */	addi r5, r3, lit_581@l /* 0x80649E28@l */
/* 80596BB8  C0 44 9E 1C */	lfs f2, lit_548@l(r4)  /* 0x80649E1C@l */
/* 80596BBC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80596BC0  3C 60 80 65 */	lis r3, lit_450@ha /* 0x80649DF8@ha */
/* 80596BC4  7F C5 F3 78 */	mr r5, r30
/* 80596BC8  38 80 00 02 */	li r4, 2
/* 80596BCC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80596BD0  C0 03 9D F8 */	lfs f0, lit_450@l(r3)  /* 0x80649DF8@l */
/* 80596BD4  7F E3 FB 78 */	mr r3, r31
/* 80596BD8  EC 22 08 2A */	fadds f1, f2, f1
/* 80596BDC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80596BE0  FC 00 00 1E */	fctiwz f0, f0
/* 80596BE4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80596BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80596BEC  90 1F 02 28 */	stw r0, 0x228(r31)
/* 80596BF0  48 00 08 D5 */	bl aIBT_setupAction
/* 80596BF4  48 00 00 60 */	b lbl_80596C54
lbl_80596BF8:
/* 80596BF8  7F E4 FB 78 */	mr r4, r31
/* 80596BFC  38 61 00 08 */	addi r3, r1, 8
/* 80596C00  4B FF FE 95 */	bl aIBT_chk_active_range
/* 80596C04  2C 03 00 01 */	cmpwi r3, 1
/* 80596C08  40 82 00 38 */	bne lbl_80596C40
/* 80596C0C  7F C3 F3 78 */	mr r3, r30
/* 80596C10  4B E4 2A 31 */	bl get_player_actor_withoutCheck
/* 80596C14  7C 64 1B 79 */	or. r4, r3, r3
/* 80596C18  41 82 00 20 */	beq lbl_80596C38
/* 80596C1C  38 7F 00 28 */	addi r3, r31, 0x28
/* 80596C20  38 84 00 28 */	addi r4, r4, 0x28
/* 80596C24  4B E2 45 0D */	bl search_position_angleY
/* 80596C28  3C 63 00 01 */	addis r3, r3, 1
/* 80596C2C  38 03 80 00 */	addi r0, r3, -32768
/* 80596C30  B0 01 00 08 */	sth r0, 8(r1)
/* 80596C34  48 00 00 0C */	b lbl_80596C40
lbl_80596C38:
/* 80596C38  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80596C3C  B0 01 00 08 */	sth r0, 8(r1)
lbl_80596C40:
/* 80596C40  A8 81 00 08 */	lha r4, 8(r1)
/* 80596C44  7F E3 FB 78 */	mr r3, r31
/* 80596C48  4B FF FC D1 */	bl aIBT_chk_avoid_jump_angle
/* 80596C4C  7F E3 FB 78 */	mr r3, r31
/* 80596C50  4B FF FD 45 */	bl aIBT_set_avoid_jump_spd
lbl_80596C54:
/* 80596C54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80596C58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80596C5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80596C60  7C 08 03 A6 */	mtlr r0
/* 80596C64  38 21 00 20 */	addi r1, r1, 0x20
/* 80596C68  4E 80 00 20 */	blr 
