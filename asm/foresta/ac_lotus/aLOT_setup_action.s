lbl_805B2C54:
/* 805B2C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B2C58  7C 08 02 A6 */	mflr r0
/* 805B2C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B2C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B2C64  7C 9F 23 79 */	or. r31, r4, r4
/* 805B2C68  93 C1 00 08 */	stw r30, 8(r1)
/* 805B2C6C  7C 7E 1B 78 */	mr r30, r3
/* 805B2C70  40 82 00 50 */	bne lbl_805B2CC0
/* 805B2C74  3C 60 80 65 */	lis r3, lit_497@ha /* 0x8064A8B8@ha */
/* 805B2C78  3C A0 80 65 */	lis r5, lit_498@ha /* 0x8064A8BC@ha */
/* 805B2C7C  C0 23 A8 B8 */	lfs f1, lit_497@l(r3)  /* 0x8064A8B8@l */
/* 805B2C80  3C 80 80 65 */	lis r4, lit_479@ha /* 0x8064A8A8@ha */
/* 805B2C84  3C 60 80 65 */	lis r3, lit_482@ha /* 0x8064A8B4@ha */
/* 805B2C88  39 05 A8 BC */	addi r8, r5, lit_498@l /* 0x8064A8BC@l */
/* 805B2C8C  38 E4 A8 A8 */	addi r7, r4, lit_479@l /* 0x8064A8A8@l */
/* 805B2C90  FC 60 08 90 */	fmr f3, f1
/* 805B2C94  38 C3 A8 B4 */	addi r6, r3, lit_482@l /* 0x8064A8B4@l */
/* 805B2C98  3C 60 80 B9 */	lis r3, cKF_ba_r_obj_s_lotus@ha /* 0x80B887E0@ha */
/* 805B2C9C  C0 87 00 00 */	lfs f4, 0(r7)
/* 805B2CA0  38 A3 87 E0 */	addi r5, r3, cKF_ba_r_obj_s_lotus@l /* 0x80B887E0@l */
/* 805B2CA4  C0 A6 00 00 */	lfs f5, 0(r6)
/* 805B2CA8  80 9E 01 90 */	lwz r4, 0x190(r30)
/* 805B2CAC  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B2CB0  C0 48 00 00 */	lfs f2, 0(r8)
/* 805B2CB4  38 C0 00 01 */	li r6, 1
/* 805B2CB8  38 E0 00 00 */	li r7, 0
/* 805B2CBC  4B DB E0 19 */	bl cKF_SkeletonInfo_R_init
lbl_805B2CC0:
/* 805B2CC0  3C 60 80 6C */	lis r3, process@ha /* 0x806C58D4@ha */
/* 805B2CC4  57 E0 10 3A */	slwi r0, r31, 2
/* 805B2CC8  38 63 58 D4 */	addi r3, r3, process@l /* 0x806C58D4@l */
/* 805B2CCC  7C 03 00 2E */	lwzx r0, r3, r0
/* 805B2CD0  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 805B2CD4  93 FE 02 B4 */	stw r31, 0x2b4(r30)
/* 805B2CD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B2CDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B2CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B2CE4  7C 08 03 A6 */	mtlr r0
/* 805B2CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B2CEC  4E 80 00 20 */	blr 
