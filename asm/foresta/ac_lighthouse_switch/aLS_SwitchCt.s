lbl_8042C238:
/* 8042C238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042C23C  7C 08 02 A6 */	mflr r0
/* 8042C240  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042C244  39 61 00 20 */	addi r11, r1, 0x20
/* 8042C248  4B C6 EC 8D */	bl func_8009AED4
/* 8042C24C  3C 80 80 68 */	lis r4, pos_497@ha /* 0x80684938@ha */
/* 8042C250  7C 7D 1B 78 */	mr r29, r3
/* 8042C254  39 04 49 38 */	addi r8, r4, pos_497@l /* 0x80684938@l */
/* 8042C258  3C 60 80 8E */	lis r3, cKF_ba_r_obj_toudai_switch@ha /* 0x808E1874@ha */
/* 8042C25C  80 E8 00 00 */	lwz r7, 0(r8)
/* 8042C260  3C 80 80 8E */	lis r4, cKF_bs_r_obj_toudai_switch@ha /* 0x808E1904@ha */
/* 8042C264  80 C8 00 04 */	lwz r6, 4(r8)
/* 8042C268  38 03 18 74 */	addi r0, r3, cKF_ba_r_obj_toudai_switch@l /* 0x808E1874@l */
/* 8042C26C  7C BE 2B 78 */	mr r30, r5
/* 8042C270  3B FD 00 10 */	addi r31, r29, 0x10
/* 8042C274  90 FD 00 00 */	stw r7, 0(r29)
/* 8042C278  7C 05 03 78 */	mr r5, r0
/* 8042C27C  38 84 19 04 */	addi r4, r4, cKF_bs_r_obj_toudai_switch@l /* 0x808E1904@l */
/* 8042C280  7F E3 FB 78 */	mr r3, r31
/* 8042C284  90 DD 00 04 */	stw r6, 4(r29)
/* 8042C288  38 DD 00 80 */	addi r6, r29, 0x80
/* 8042C28C  38 FD 00 8C */	addi r7, r29, 0x8c
/* 8042C290  80 08 00 08 */	lwz r0, 8(r8)
/* 8042C294  90 1D 00 08 */	stw r0, 8(r29)
/* 8042C298  4B F4 47 FD */	bl cKF_SkeletonInfo_R_ct
/* 8042C29C  2C 1E 00 01 */	cmpwi r30, 1
/* 8042C2A0  40 82 00 24 */	bne lbl_8042C2C4
/* 8042C2A4  38 00 00 01 */	li r0, 1
/* 8042C2A8  3C 60 80 8E */	lis r3, cKF_ba_r_obj_toudai_switch_off@ha /* 0x808E18D8@ha */
/* 8042C2AC  B0 1D 00 0C */	sth r0, 0xc(r29)
/* 8042C2B0  38 83 18 D8 */	addi r4, r3, cKF_ba_r_obj_toudai_switch_off@l /* 0x808E18D8@l */
/* 8042C2B4  7F E3 FB 78 */	mr r3, r31
/* 8042C2B8  38 A0 00 00 */	li r5, 0
/* 8042C2BC  4B F4 48 39 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8042C2C0  48 00 00 20 */	b lbl_8042C2E0
lbl_8042C2C4:
/* 8042C2C4  38 00 00 00 */	li r0, 0
/* 8042C2C8  3C 60 80 8E */	lis r3, cKF_ba_r_obj_toudai_switch@ha /* 0x808E1874@ha */
/* 8042C2CC  B0 1D 00 0C */	sth r0, 0xc(r29)
/* 8042C2D0  38 83 18 74 */	addi r4, r3, cKF_ba_r_obj_toudai_switch@l /* 0x808E1874@l */
/* 8042C2D4  7F E3 FB 78 */	mr r3, r31
/* 8042C2D8  38 A0 00 00 */	li r5, 0
/* 8042C2DC  4B F4 48 19 */	bl cKF_SkeletonInfo_R_init_standard_stop
lbl_8042C2E0:
/* 8042C2E0  3C 80 80 64 */	lis r4, lit_475@ha /* 0x806440A0@ha */
/* 8042C2E4  7F E3 FB 78 */	mr r3, r31
/* 8042C2E8  C0 04 40 A0 */	lfs f0, lit_475@l(r4)  /* 0x806440A0@l */
/* 8042C2EC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042C2F0  4B F4 4D 25 */	bl cKF_SkeletonInfo_R_play
/* 8042C2F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8042C2F8  4B C6 EC 29 */	bl func_8009AF20
/* 8042C2FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042C300  7C 08 03 A6 */	mtlr r0
/* 8042C304  38 21 00 20 */	addi r1, r1, 0x20
/* 8042C308  4E 80 00 20 */	blr 
