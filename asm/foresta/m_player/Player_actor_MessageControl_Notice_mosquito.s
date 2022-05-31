lbl_80505E04:
/* 80505E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505E08  7C 08 02 A6 */	mflr r0
/* 80505E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80505E14  93 C1 00 08 */	stw r30, 8(r1)
/* 80505E18  7C 7E 1B 78 */	mr r30, r3
/* 80505E1C  3B FE 0D 20 */	addi r31, r30, 0xd20
/* 80505E20  80 03 0D 20 */	lwz r0, 0xd20(r3)
/* 80505E24  2C 00 00 01 */	cmpwi r0, 1
/* 80505E28  41 82 00 58 */	beq lbl_80505E80
/* 80505E2C  40 80 00 10 */	bge lbl_80505E3C
/* 80505E30  2C 00 00 00 */	cmpwi r0, 0
/* 80505E34  40 80 00 14 */	bge lbl_80505E48
/* 80505E38  48 00 00 A0 */	b lbl_80505ED8
lbl_80505E3C:
/* 80505E3C  2C 00 00 03 */	cmpwi r0, 3
/* 80505E40  40 80 00 98 */	bge lbl_80505ED8
/* 80505E44  48 00 00 74 */	b lbl_80505EB8
lbl_80505E48:
/* 80505E48  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 80505E4C  C0 3E 0D 1C */	lfs f1, 0xd1c(r30)
/* 80505E50  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 80505E54  38 9E 0D 1C */	addi r4, r30, 0xd1c
/* 80505E58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80505E5C  40 80 00 18 */	bge lbl_80505E74
/* 80505E60  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80505E64  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 80505E68  EC 01 00 2A */	fadds f0, f1, f0
/* 80505E6C  D0 04 00 00 */	stfs f0, 0(r4)
/* 80505E70  48 00 00 70 */	b lbl_80505EE0
lbl_80505E74:
/* 80505E74  38 00 00 01 */	li r0, 1
/* 80505E78  90 1F 00 00 */	stw r0, 0(r31)
/* 80505E7C  48 00 00 64 */	b lbl_80505EE0
lbl_80505E80:
/* 80505E80  7F C4 F3 78 */	mr r4, r30
/* 80505E84  38 60 00 09 */	li r3, 9
/* 80505E88  4B E9 43 DD */	bl mDemo_Check
/* 80505E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80505E90  40 82 00 1C */	bne lbl_80505EAC
/* 80505E94  3C 60 80 50 */	lis r3, Player_actor_Notice_mosquito_demo_ct@ha /* 0x80505D80@ha */
/* 80505E98  7F C4 F3 78 */	mr r4, r30
/* 80505E9C  38 A3 5D 80 */	addi r5, r3, Player_actor_Notice_mosquito_demo_ct@l /* 0x80505D80@l */
/* 80505EA0  38 60 00 09 */	li r3, 9
/* 80505EA4  4B E9 42 B9 */	bl mDemo_Request
/* 80505EA8  48 00 00 38 */	b lbl_80505EE0
lbl_80505EAC:
/* 80505EAC  38 00 00 02 */	li r0, 2
/* 80505EB0  90 1F 00 00 */	stw r0, 0(r31)
/* 80505EB4  48 00 00 2C */	b lbl_80505EE0
lbl_80505EB8:
/* 80505EB8  7F C4 F3 78 */	mr r4, r30
/* 80505EBC  38 60 00 09 */	li r3, 9
/* 80505EC0  4B E9 43 A5 */	bl mDemo_Check
/* 80505EC4  2C 03 00 00 */	cmpwi r3, 0
/* 80505EC8  40 82 00 18 */	bne lbl_80505EE0
/* 80505ECC  38 00 00 03 */	li r0, 3
/* 80505ED0  90 1F 00 00 */	stw r0, 0(r31)
/* 80505ED4  48 00 00 0C */	b lbl_80505EE0
lbl_80505ED8:
/* 80505ED8  38 60 00 01 */	li r3, 1
/* 80505EDC  48 00 00 08 */	b lbl_80505EE4
lbl_80505EE0:
/* 80505EE0  38 60 00 00 */	li r3, 0
lbl_80505EE4:
/* 80505EE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80505EEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80505EF0  7C 08 03 A6 */	mtlr r0
/* 80505EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80505EF8  4E 80 00 20 */	blr 
