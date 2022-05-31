lbl_80416D7C:
/* 80416D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416D80  7C 08 02 A6 */	mflr r0
/* 80416D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416D88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416D8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80416D90  7C 7E 1B 78 */	mr r30, r3
/* 80416D94  3B FE 01 78 */	addi r31, r30, 0x178
/* 80416D98  4B FF F0 85 */	bl func_80415E1C
/* 80416D9C  3C 80 80 64 */	lis r4, lit_461@ha /* 0x80643BA4@ha */
/* 80416DA0  3C C0 80 64 */	lis r6, lit_681@ha /* 0x80643CA8@ha */
/* 80416DA4  C0 24 3B A4 */	lfs f1, lit_461@l(r4)  /* 0x80643BA4@l */
/* 80416DA8  3C 80 80 64 */	lis r4, lit_462@ha /* 0x80643BA8@ha */
/* 80416DAC  3C A0 80 64 */	lis r5, lit_682@ha /* 0x80643CAC@ha */
/* 80416DB0  39 06 3C A8 */	addi r8, r6, lit_681@l /* 0x80643CA8@l */
/* 80416DB4  38 C5 3C AC */	addi r6, r5, lit_682@l /* 0x80643CAC@l */
/* 80416DB8  38 E4 3B A8 */	addi r7, r4, lit_462@l /* 0x80643BA8@l */
/* 80416DBC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80416DC0  FC 60 08 90 */	fmr f3, f1
/* 80416DC4  C0 86 00 00 */	lfs f4, 0(r6)
/* 80416DC8  7F E3 FB 78 */	mr r3, r31
/* 80416DCC  C0 A7 00 00 */	lfs f5, 0(r7)
/* 80416DD0  38 C0 00 00 */	li r6, 0
/* 80416DD4  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80416DD8  C0 48 00 00 */	lfs f2, 0(r8)
/* 80416DDC  38 E0 00 00 */	li r7, 0
/* 80416DE0  4B F5 9E F5 */	bl cKF_SkeletonInfo_R_init
/* 80416DE4  3C 60 80 41 */	lis r3, Cottage_move_open_in@ha /* 0x80416E08@ha */
/* 80416DE8  38 03 6E 08 */	addi r0, r3, Cottage_move_open_in@l /* 0x80416E08@l */
/* 80416DEC  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 80416DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416DF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80416DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416DFC  7C 08 03 A6 */	mtlr r0
/* 80416E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80416E04  4E 80 00 20 */	blr 
