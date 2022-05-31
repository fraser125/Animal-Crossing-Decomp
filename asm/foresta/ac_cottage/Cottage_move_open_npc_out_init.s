lbl_80416F3C:
/* 80416F3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416F40  7C 08 02 A6 */	mflr r0
/* 80416F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416F48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416F4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80416F50  7C 7E 1B 78 */	mr r30, r3
/* 80416F54  3B FE 01 78 */	addi r31, r30, 0x178
/* 80416F58  4B FF EE C5 */	bl func_80415E1C
/* 80416F5C  3C 80 80 64 */	lis r4, lit_461@ha /* 0x80643BA4@ha */
/* 80416F60  3C C0 80 64 */	lis r6, lit_681@ha /* 0x80643CA8@ha */
/* 80416F64  C0 24 3B A4 */	lfs f1, lit_461@l(r4)  /* 0x80643BA4@l */
/* 80416F68  3C 80 80 64 */	lis r4, lit_462@ha /* 0x80643BA8@ha */
/* 80416F6C  3C A0 80 64 */	lis r5, lit_682@ha /* 0x80643CAC@ha */
/* 80416F70  39 06 3C A8 */	addi r8, r6, lit_681@l /* 0x80643CA8@l */
/* 80416F74  38 C5 3C AC */	addi r6, r5, lit_682@l /* 0x80643CAC@l */
/* 80416F78  38 E4 3B A8 */	addi r7, r4, lit_462@l /* 0x80643BA8@l */
/* 80416F7C  80 A3 00 08 */	lwz r5, 8(r3)
/* 80416F80  FC 60 08 90 */	fmr f3, f1
/* 80416F84  C0 86 00 00 */	lfs f4, 0(r6)
/* 80416F88  7F E3 FB 78 */	mr r3, r31
/* 80416F8C  C0 A7 00 00 */	lfs f5, 0(r7)
/* 80416F90  38 C0 00 00 */	li r6, 0
/* 80416F94  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80416F98  C0 48 00 00 */	lfs f2, 0(r8)
/* 80416F9C  38 E0 00 00 */	li r7, 0
/* 80416FA0  4B F5 9D 35 */	bl cKF_SkeletonInfo_R_init
/* 80416FA4  3C 60 80 41 */	lis r3, Cottage_move_open_out@ha /* 0x80416FC8@ha */
/* 80416FA8  38 03 6F C8 */	addi r0, r3, Cottage_move_open_out@l /* 0x80416FC8@l */
/* 80416FAC  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 80416FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416FB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80416FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416FBC  7C 08 03 A6 */	mtlr r0
/* 80416FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80416FC4  4E 80 00 20 */	blr 
