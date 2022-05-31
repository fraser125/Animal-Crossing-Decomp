lbl_80380D44:
/* 80380D44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80380D48  7C 08 02 A6 */	mflr r0
/* 80380D4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80380D50  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80380D54  7C 7F 1B 78 */	mr r31, r3
/* 80380D58  48 05 88 E9 */	bl get_player_actor_withoutCheck
/* 80380D5C  80 BF 1C 00 */	lwz r5, 0x1c00(r31)
/* 80380D60  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80380D64  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80380D68  2C 05 00 00 */	cmpwi r5, 0
/* 80380D6C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80380D70  90 01 00 18 */	stw r0, 0x18(r1)
/* 80380D74  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80380D78  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80380D7C  40 82 00 4C */	bne lbl_80380DC8
/* 80380D80  3C 80 80 64 */	lis r4, offset@ha /* 0x80641518@ha */
/* 80380D84  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80380D88  38 84 15 18 */	addi r4, r4, offset@l /* 0x80641518@l */
/* 80380D8C  C0 81 00 14 */	lfs f4, 0x14(r1)
/* 80380D90  C0 04 00 04 */	lfs f0, 4(r4)
/* 80380D94  3C 60 80 64 */	lis r3, lit_475@ha /* 0x80641358@ha */
/* 80380D98  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80380D9C  EC 61 00 2A */	fadds f3, f1, f0
/* 80380DA0  C0 24 00 00 */	lfs f1, 0(r4)
/* 80380DA4  C0 03 13 58 */	lfs f0, lit_475@l(r3)  /* 0x80641358@l */
/* 80380DA8  EC 84 08 2A */	fadds f4, f4, f1
/* 80380DAC  C0 24 00 08 */	lfs f1, 8(r4)
/* 80380DB0  EC 03 00 2A */	fadds f0, f3, f0
/* 80380DB4  EC 22 08 2A */	fadds f1, f2, f1
/* 80380DB8  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80380DBC  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80380DC0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80380DC4  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80380DC8:
/* 80380DC8  7F E3 FB 78 */	mr r3, r31
/* 80380DCC  38 81 00 14 */	addi r4, r1, 0x14
/* 80380DD0  38 A0 00 00 */	li r5, 0
/* 80380DD4  4B FF D5 5D */	bl Camera2_MoveCenterPosAndSpeed_fromEndCenterPos
/* 80380DD8  7F E3 FB 78 */	mr r3, r31
/* 80380DDC  38 81 00 08 */	addi r4, r1, 8
/* 80380DE0  38 A1 00 0C */	addi r5, r1, 0xc
/* 80380DE4  4B FF D9 C5 */	bl Camera2_Get_GoalDistanceAndDirection
/* 80380DE8  3C 80 80 64 */	lis r4, lit_1421@ha /* 0x80641524@ha */
/* 80380DEC  A8 61 00 0C */	lha r3, 0xc(r1)
/* 80380DF0  C0 04 15 24 */	lfs f0, lit_1421@l(r4)  /* 0x80641524@l */
/* 80380DF4  38 80 00 00 */	li r4, 0
/* 80380DF8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80380DFC  38 03 FA 88 */	addi r0, r3, -1400
/* 80380E00  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80380E04  7F E3 FB 78 */	mr r3, r31
/* 80380E08  EC 21 00 2A */	fadds f1, f1, f0
/* 80380E0C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80380E10  4B FF D6 D9 */	bl Camera2_MoveDistancePosAndSpeed
/* 80380E14  7F E3 FB 78 */	mr r3, r31
/* 80380E18  38 81 00 0C */	addi r4, r1, 0xc
/* 80380E1C  38 A0 00 00 */	li r5, 0
/* 80380E20  4B FF CF B5 */	bl Camera2_MoveDirectionAngleXYZ
/* 80380E24  7F E3 FB 78 */	mr r3, r31
/* 80380E28  4B FF CE 6D */	bl Camera2_SetEyePos_fromCenterPos
/* 80380E2C  7F E3 FB 78 */	mr r3, r31
/* 80380E30  4B FF D1 0D */	bl Camera2_SetView
/* 80380E34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80380E38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80380E3C  7C 08 03 A6 */	mtlr r0
/* 80380E40  38 21 00 30 */	addi r1, r1, 0x30
/* 80380E44  4E 80 00 20 */	blr 
