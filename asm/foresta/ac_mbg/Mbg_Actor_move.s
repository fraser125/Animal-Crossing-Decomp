lbl_8042DD44:
/* 8042DD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042DD48  7C 08 02 A6 */	mflr r0
/* 8042DD4C  3C 80 80 64 */	lis r4, lit_460@ha /* 0x8064413C@ha */
/* 8042DD50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042DD54  C0 24 41 3C */	lfs f1, lit_460@l(r4)  /* 0x8064413C@l */
/* 8042DD58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042DD5C  7C 7F 1B 78 */	mr r31, r3
/* 8042DD60  C0 03 01 AC */	lfs f0, 0x1ac(r3)
/* 8042DD64  EC 21 00 32 */	fmuls f1, f1, f0
/* 8042DD68  4B FD AB 15 */	bl sinf_table
/* 8042DD6C  3C 60 80 64 */	lis r3, lit_461@ha /* 0x80644140@ha */
/* 8042DD70  3C A0 80 64 */	lis r5, lit_459@ha /* 0x80644138@ha */
/* 8042DD74  38 83 41 40 */	addi r4, r3, lit_461@l /* 0x80644140@l */
/* 8042DD78  C0 65 41 38 */	lfs f3, lit_459@l(r5)  /* 0x80644138@l */
/* 8042DD7C  C0 5F 01 AC */	lfs f2, 0x1ac(r31)
/* 8042DD80  3C 60 80 64 */	lis r3, lit_462@ha /* 0x80644144@ha */
/* 8042DD84  C0 04 00 00 */	lfs f0, 0(r4)
/* 8042DD88  EC 23 00 72 */	fmuls f1, f3, f1
/* 8042DD8C  EC 02 00 2A */	fadds f0, f2, f0
/* 8042DD90  C0 43 41 44 */	lfs f2, lit_462@l(r3)  /* 0x80644144@l */
/* 8042DD94  D0 1F 01 AC */	stfs f0, 0x1ac(r31)
/* 8042DD98  48 00 00 10 */	b lbl_8042DDA8
lbl_8042DD9C:
/* 8042DD9C  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 8042DDA0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042DDA4  D0 1F 01 AC */	stfs f0, 0x1ac(r31)
lbl_8042DDA8:
/* 8042DDA8  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 8042DDAC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8042DDB0  41 81 FF EC */	bgt lbl_8042DD9C
/* 8042DDB4  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 8042DDB8  EC 00 08 2A */	fadds f0, f0, f1
/* 8042DDBC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8042DDC0  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 8042DDC4  38 03 00 2F */	addi r0, r3, 0x2f
/* 8042DDC8  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8042DDCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042DDD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042DDD4  7C 08 03 A6 */	mtlr r0
/* 8042DDD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042DDDC  4E 80 00 20 */	blr 
