lbl_80527D50:
/* 80527D50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80527D54  7C 08 02 A6 */	mflr r0
/* 80527D58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80527D5C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80527D60  7C 7F 1B 78 */	mr r31, r3
/* 80527D64  7C 83 23 78 */	mr r3, r4
/* 80527D68  4B EB 18 D9 */	bl get_player_actor_withoutCheck
/* 80527D6C  28 03 00 00 */	cmplwi r3, 0
/* 80527D70  41 82 00 44 */	beq lbl_80527DB4
/* 80527D74  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 80527D78  38 81 00 08 */	addi r4, r1, 8
/* 80527D7C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80527D80  38 A1 00 10 */	addi r5, r1, 0x10
/* 80527D84  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80527D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80527D8C  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80527D90  38 61 00 0C */	addi r3, r1, 0xc
/* 80527D94  90 01 00 18 */	stw r0, 0x18(r1)
/* 80527D98  4B E7 D9 C9 */	bl mFI_Wpos2BlockNum
/* 80527D9C  2C 03 00 00 */	cmpwi r3, 0
/* 80527DA0  40 82 00 20 */	bne lbl_80527DC0
/* 80527DA4  38 00 00 00 */	li r0, 0
/* 80527DA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80527DAC  90 01 00 08 */	stw r0, 8(r1)
/* 80527DB0  48 00 00 10 */	b lbl_80527DC0
lbl_80527DB4:
/* 80527DB4  38 00 00 00 */	li r0, 0
/* 80527DB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80527DBC  90 01 00 08 */	stw r0, 8(r1)
lbl_80527DC0:
/* 80527DC0  3C 60 80 65 */	lis r3, lit_668@ha /* 0x806491E4@ha */
/* 80527DC4  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80527DC8  C0 03 91 E4 */	lfs f0, lit_668@l(r3)  /* 0x806491E4@l */
/* 80527DCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80527DD0  40 80 00 70 */	bge lbl_80527E40
/* 80527DD4  3C 60 80 65 */	lis r3, lit_669@ha /* 0x806491E8@ha */
/* 80527DD8  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80527DDC  C0 03 91 E8 */	lfs f0, lit_669@l(r3)  /* 0x806491E8@l */
/* 80527DE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80527DE4  4C 41 13 82 */	cror 2, 1, 2
/* 80527DE8  40 82 00 08 */	bne lbl_80527DF0
/* 80527DEC  48 00 00 08 */	b lbl_80527DF4
lbl_80527DF0:
/* 80527DF0  FC 20 08 50 */	fneg f1, f1
lbl_80527DF4:
/* 80527DF4  3C 60 80 65 */	lis r3, lit_670@ha /* 0x806491EC@ha */
/* 80527DF8  C0 03 91 EC */	lfs f0, lit_670@l(r3)  /* 0x806491EC@l */
/* 80527DFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80527E00  40 80 00 40 */	bge lbl_80527E40
/* 80527E04  88 7F 00 08 */	lbz r3, 8(r31)
/* 80527E08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80527E0C  7C 63 07 74 */	extsb r3, r3
/* 80527E10  7C 03 00 00 */	cmpw r3, r0
/* 80527E14  40 82 00 2C */	bne lbl_80527E40
/* 80527E18  88 7F 00 09 */	lbz r3, 9(r31)
/* 80527E1C  80 01 00 08 */	lwz r0, 8(r1)
/* 80527E20  7C 63 07 74 */	extsb r3, r3
/* 80527E24  7C 03 00 00 */	cmpw r3, r0
/* 80527E28  40 82 00 18 */	bne lbl_80527E40
/* 80527E2C  3C 60 80 52 */	lis r3, aHWN_set_force_talk_info@ha /* 0x80527D0C@ha */
/* 80527E30  7F E4 FB 78 */	mr r4, r31
/* 80527E34  38 A3 7D 0C */	addi r5, r3, aHWN_set_force_talk_info@l /* 0x80527D0C@l */
/* 80527E38  38 60 00 08 */	li r3, 8
/* 80527E3C  4B E7 23 21 */	bl mDemo_Request
lbl_80527E40:
/* 80527E40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80527E44  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80527E48  7C 08 03 A6 */	mtlr r0
/* 80527E4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80527E50  4E 80 00 20 */	blr 
