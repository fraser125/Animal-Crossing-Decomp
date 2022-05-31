lbl_804AC1F0:
/* 804AC1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AC1F4  7C 08 02 A6 */	mflr r0
/* 804AC1F8  3C 80 80 C5 */	lis r4, cKF_bs_r_obj_romtrain_door@ha /* 0x80C49AD0@ha */
/* 804AC1FC  38 A0 00 00 */	li r5, 0
/* 804AC200  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AC204  38 84 9A D0 */	addi r4, r4, cKF_bs_r_obj_romtrain_door@l /* 0x80C49AD0@l */
/* 804AC208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AC20C  7C 7F 1B 78 */	mr r31, r3
/* 804AC210  38 7F 01 7C */	addi r3, r31, 0x17c
/* 804AC214  38 DF 02 10 */	addi r6, r31, 0x210
/* 804AC218  38 FF 02 2E */	addi r7, r31, 0x22e
/* 804AC21C  4B EC 48 79 */	bl cKF_SkeletonInfo_R_ct
/* 804AC220  3C 80 80 64 */	lis r4, data_80645EAC@ha /* 0x80645EAC@ha */
/* 804AC224  3C 60 80 64 */	lis r3, lit_433@ha /* 0x80645EB4@ha */
/* 804AC228  38 A4 5E AC */	addi r5, r4, data_80645EAC@l /* 0x80645EAC@l */
/* 804AC22C  C0 83 5E B4 */	lfs f4, lit_433@l(r3)  /* 0x80645EB4@l */
/* 804AC230  C0 25 00 00 */	lfs f1, 0(r5)
/* 804AC234  3C 80 80 64 */	lis r4, lit_432@ha /* 0x80645EB0@ha */
/* 804AC238  38 64 5E B0 */	addi r3, r4, lit_432@l /* 0x80645EB0@l */
/* 804AC23C  FC A0 20 90 */	fmr f5, f4
/* 804AC240  3C 80 80 C5 */	lis r4, cKF_ba_r_obj_romtrain_door@ha /* 0x80C49354@ha */
/* 804AC244  FC 60 08 90 */	fmr f3, f1
/* 804AC248  38 A4 93 54 */	addi r5, r4, cKF_ba_r_obj_romtrain_door@l /* 0x80C49354@l */
/* 804AC24C  C0 43 00 00 */	lfs f2, 0(r3)
/* 804AC250  80 9F 01 94 */	lwz r4, 0x194(r31)
/* 804AC254  38 7F 01 7C */	addi r3, r31, 0x17c
/* 804AC258  38 C0 00 00 */	li r6, 0
/* 804AC25C  38 E0 00 00 */	li r7, 0
/* 804AC260  4B EC 4A 75 */	bl cKF_SkeletonInfo_R_init
/* 804AC264  3C 80 80 64 */	lis r4, lit_433@ha /* 0x80645EB4@ha */
/* 804AC268  38 7F 01 7C */	addi r3, r31, 0x17c
/* 804AC26C  C0 04 5E B4 */	lfs f0, lit_433@l(r4)  /* 0x80645EB4@l */
/* 804AC270  D0 1F 01 9C */	stfs f0, 0x19c(r31)
/* 804AC274  4B EC 4D A1 */	bl cKF_SkeletonInfo_R_play
/* 804AC278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AC27C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AC280  7C 08 03 A6 */	mtlr r0
/* 804AC284  38 21 00 10 */	addi r1, r1, 0x10
/* 804AC288  4E 80 00 20 */	blr 
