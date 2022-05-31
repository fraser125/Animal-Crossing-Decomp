lbl_8040F920:
/* 8040F920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040F924  7C 08 02 A6 */	mflr r0
/* 8040F928  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040F92C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040F930  7C 7F 1B 78 */	mr r31, r3
/* 8040F934  93 C1 00 08 */	stw r30, 8(r1)
/* 8040F938  7C 9E 23 78 */	mr r30, r4
/* 8040F93C  A8 03 01 76 */	lha r0, 0x176(r3)
/* 8040F940  2C 00 00 01 */	cmpwi r0, 1
/* 8040F944  41 82 00 78 */	beq lbl_8040F9BC
/* 8040F948  40 80 00 F4 */	bge lbl_8040FA3C
/* 8040F94C  2C 00 00 00 */	cmpwi r0, 0
/* 8040F950  40 80 00 08 */	bge lbl_8040F958
/* 8040F954  48 00 00 E8 */	b lbl_8040FA3C
lbl_8040F958:
/* 8040F958  3C 60 80 64 */	lis r3, lit_516@ha /* 0x806437C4@ha */
/* 8040F95C  3C 80 80 64 */	lis r4, lit_517@ha /* 0x806437C8@ha */
/* 8040F960  38 A3 37 C4 */	addi r5, r3, lit_516@l /* 0x806437C4@l */
/* 8040F964  C0 44 37 C8 */	lfs f2, lit_517@l(r4)  /* 0x806437C8@l */
/* 8040F968  C0 25 00 00 */	lfs f1, 0(r5)
/* 8040F96C  38 7F 01 8C */	addi r3, r31, 0x18c
/* 8040F970  4B FF FD F1 */	bl func_8040F760
/* 8040F974  3C 60 80 64 */	lis r3, lit_518@ha /* 0x806437CC@ha */
/* 8040F978  3C 80 80 64 */	lis r4, lit_519@ha /* 0x806437D0@ha */
/* 8040F97C  38 A3 37 CC */	addi r5, r3, lit_518@l /* 0x806437CC@l */
/* 8040F980  C0 44 37 D0 */	lfs f2, lit_519@l(r4)  /* 0x806437D0@l */
/* 8040F984  C0 25 00 00 */	lfs f1, 0(r5)
/* 8040F988  38 7F 01 78 */	addi r3, r31, 0x178
/* 8040F98C  4B FF FD D5 */	bl func_8040F760
/* 8040F990  3C 60 80 64 */	lis r3, lit_520@ha /* 0x806437D4@ha */
/* 8040F994  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 8040F998  C0 03 37 D4 */	lfs f0, lit_520@l(r3)  /* 0x806437D4@l */
/* 8040F99C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040F9A0  40 80 00 9C */	bge lbl_8040FA3C
/* 8040F9A4  3C 60 80 64 */	lis r3, lit_521@ha /* 0x806437D8@ha */
/* 8040F9A8  38 00 00 01 */	li r0, 1
/* 8040F9AC  B0 1F 01 76 */	sth r0, 0x176(r31)
/* 8040F9B0  C0 03 37 D8 */	lfs f0, lit_521@l(r3)  /* 0x806437D8@l */
/* 8040F9B4  D0 1F 01 8C */	stfs f0, 0x18c(r31)
/* 8040F9B8  48 00 00 84 */	b lbl_8040FA3C
lbl_8040F9BC:
/* 8040F9BC  3C 60 80 64 */	lis r3, data_8064377C@ha /* 0x8064377C@ha */
/* 8040F9C0  3C 80 80 64 */	lis r4, lit_522@ha /* 0x806437DC@ha */
/* 8040F9C4  38 A3 37 7C */	addi r5, r3, data_8064377C@l /* 0x8064377C@l */
/* 8040F9C8  C0 44 37 DC */	lfs f2, lit_522@l(r4)  /* 0x806437DC@l */
/* 8040F9CC  C0 25 00 00 */	lfs f1, 0(r5)
/* 8040F9D0  38 7F 01 8C */	addi r3, r31, 0x18c
/* 8040F9D4  4B FF FD 8D */	bl func_8040F760
/* 8040F9D8  3C 60 80 64 */	lis r3, lit_523@ha /* 0x806437E0@ha */
/* 8040F9DC  3C 80 80 64 */	lis r4, lit_519@ha /* 0x806437D0@ha */
/* 8040F9E0  38 A3 37 E0 */	addi r5, r3, lit_523@l /* 0x806437E0@l */
/* 8040F9E4  C0 44 37 D0 */	lfs f2, lit_519@l(r4)  /* 0x806437D0@l */
/* 8040F9E8  C0 25 00 00 */	lfs f1, 0(r5)
/* 8040F9EC  38 7F 01 78 */	addi r3, r31, 0x178
/* 8040F9F0  4B FF FD 71 */	bl func_8040F760
/* 8040F9F4  3C 60 80 64 */	lis r3, data_8064377C@ha /* 0x8064377C@ha */
/* 8040F9F8  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 8040F9FC  C0 03 37 7C */	lfs f0, data_8064377C@l(r3)  /* 0x8064377C@l */
/* 8040FA00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040FA04  4C 41 13 82 */	cror 2, 1, 2
/* 8040FA08  40 82 00 08 */	bne lbl_8040FA10
/* 8040FA0C  48 00 00 08 */	b lbl_8040FA14
lbl_8040FA10:
/* 8040FA10  FC 20 08 50 */	fneg f1, f1
lbl_8040FA14:
/* 8040FA14  3C 60 80 64 */	lis r3, lit_496@ha /* 0x806437B0@ha */
/* 8040FA18  C0 03 37 B0 */	lfs f0, lit_496@l(r3)  /* 0x806437B0@l */
/* 8040FA1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040FA20  40 80 00 10 */	bge lbl_8040FA30
/* 8040FA24  38 00 00 00 */	li r0, 0
/* 8040FA28  B0 1F 01 74 */	sth r0, 0x174(r31)
/* 8040FA2C  B0 1F 01 76 */	sth r0, 0x176(r31)
lbl_8040FA30:
/* 8040FA30  7F E3 FB 78 */	mr r3, r31
/* 8040FA34  7F C4 F3 78 */	mr r4, r30
/* 8040FA38  4B FF FD 59 */	bl aAp_GroundFriction
lbl_8040FA3C:
/* 8040FA3C  7F E3 FB 78 */	mr r3, r31
/* 8040FA40  4B FF FD 39 */	bl aAp_FallByWall
/* 8040FA44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040FA48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040FA4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040FA50  7C 08 03 A6 */	mtlr r0
/* 8040FA54  38 21 00 10 */	addi r1, r1, 0x10
/* 8040FA58  4E 80 00 20 */	blr 
