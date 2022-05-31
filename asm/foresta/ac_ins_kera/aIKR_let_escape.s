lbl_8059D6D8:
/* 8059D6D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D6DC  7C 08 02 A6 */	mflr r0
/* 8059D6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D6E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059D6E8  7C 7F 1B 78 */	mr r31, r3
/* 8059D6EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8059D6F0  7C 9E 23 78 */	mr r30, r4
/* 8059D6F4  4B FF FB A1 */	bl aIKR_calc_move_scale
/* 8059D6F8  7F E3 FB 78 */	mr r3, r31
/* 8059D6FC  4B FF FC FD */	bl aIKR_chk_water_attr
/* 8059D700  2C 03 00 01 */	cmpwi r3, 1
/* 8059D704  40 82 00 18 */	bne lbl_8059D71C
/* 8059D708  7F E3 FB 78 */	mr r3, r31
/* 8059D70C  7F C5 F3 78 */	mr r5, r30
/* 8059D710  38 80 00 04 */	li r4, 4
/* 8059D714  48 00 06 61 */	bl aIKR_setupAction
/* 8059D718  48 00 00 1C */	b lbl_8059D734
lbl_8059D71C:
/* 8059D71C  7F E3 FB 78 */	mr r3, r31
/* 8059D720  4B FF FD B1 */	bl aIKR_calc_direction_angl
/* 8059D724  7F E3 FB 78 */	mr r3, r31
/* 8059D728  38 BF 00 28 */	addi r5, r31, 0x28
/* 8059D72C  38 80 00 45 */	li r4, 0x45
/* 8059D730  48 09 08 15 */	bl sAdo_OngenPos
lbl_8059D734:
/* 8059D734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059D73C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059D740  7C 08 03 A6 */	mtlr r0
/* 8059D744  38 21 00 10 */	addi r1, r1, 0x10
/* 8059D748  4E 80 00 20 */	blr 
