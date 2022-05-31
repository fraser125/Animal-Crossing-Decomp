lbl_8063B4E0:
/* 8063B4E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063B4E4  7C 08 02 A6 */	mflr r0
/* 8063B4E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063B4EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8063B4F0  4B A5 F9 E5 */	bl func_8009AED4
/* 8063B4F4  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063B4F8  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063B4FC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063B500  7C 7D 1B 78 */	mr r29, r3
/* 8063B504  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063B508  38 7E 00 08 */	addi r3, r30, 8
/* 8063B50C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063B510  90 1E 00 00 */	stw r0, 0(r30)
/* 8063B514  80 65 00 00 */	lwz r3, 0(r5)
/* 8063B518  4B DD 1E BD */	bl _Matrix_to_Mtx_new
/* 8063B51C  90 7E 00 04 */	stw r3, 4(r30)
/* 8063B520  88 1D 01 2C */	lbz r0, 0x12c(r29)
/* 8063B524  28 00 00 00 */	cmplwi r0, 0
/* 8063B528  41 82 00 40 */	beq lbl_8063B568
/* 8063B52C  A8 1D 08 10 */	lha r0, 0x810(r29)
/* 8063B530  3C 80 80 6E */	lis r4, aSumTv01_on_anime@ha /* 0x806DD280@ha */
/* 8063B534  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8063B538  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8063B53C  7C 00 0E 70 */	srawi r0, r0, 1
/* 8063B540  38 C4 D2 80 */	addi r6, r4, aSumTv01_on_anime@l /* 0x806DD280@l */
/* 8063B544  7C 00 07 34 */	extsh r0, r0
/* 8063B548  38 85 00 08 */	addi r4, r5, 8
/* 8063B54C  54 07 10 3A */	slwi r7, r0, 2
/* 8063B550  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 8063B554  7C 66 38 2E */	lwzx r3, r6, r7
/* 8063B558  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 8063B55C  90 05 00 00 */	stw r0, 0(r5)
/* 8063B560  90 65 00 04 */	stw r3, 4(r5)
/* 8063B564  48 00 00 28 */	b lbl_8063B58C
lbl_8063B568:
/* 8063B568  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8063B56C  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8063B570  3C 60 81 0C */	lis r3, int_sum_tv01_front1_TA_tex_txt@ha /* 0x810C1F00@ha */
/* 8063B574  38 05 00 08 */	addi r0, r5, 8
/* 8063B578  38 84 00 20 */	addi r4, r4, 0x0020 /* 0xDB060020@l */
/* 8063B57C  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063B580  38 03 1F 00 */	addi r0, r3, int_sum_tv01_front1_TA_tex_txt@l /* 0x810C1F00@l */
/* 8063B584  90 85 00 00 */	stw r4, 0(r5)
/* 8063B588  90 05 00 04 */	stw r0, 4(r5)
lbl_8063B58C:
/* 8063B58C  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063B590  3C 80 81 0C */	lis r4, int_sum_tv01_on_model@ha /* 0x810C29C0@ha */
/* 8063B594  3C 60 81 0C */	lis r3, int_sum_tv01_off_model@ha /* 0x810C2AC0@ha */
/* 8063B598  3C A0 DE 00 */	lis r5, 0xde00
/* 8063B59C  38 06 00 08 */	addi r0, r6, 8
/* 8063B5A0  38 84 29 C0 */	addi r4, r4, int_sum_tv01_on_model@l /* 0x810C29C0@l */
/* 8063B5A4  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063B5A8  38 03 2A C0 */	addi r0, r3, int_sum_tv01_off_model@l /* 0x810C2AC0@l */
/* 8063B5AC  90 A6 00 00 */	stw r5, 0(r6)
/* 8063B5B0  90 86 00 04 */	stw r4, 4(r6)
/* 8063B5B4  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063B5B8  38 64 00 08 */	addi r3, r4, 8
/* 8063B5BC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063B5C0  90 A4 00 00 */	stw r5, 0(r4)
/* 8063B5C4  90 04 00 04 */	stw r0, 4(r4)
/* 8063B5C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063B5CC  4B A5 F9 55 */	bl func_8009AF20
/* 8063B5D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063B5D4  7C 08 03 A6 */	mtlr r0
/* 8063B5D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8063B5DC  4E 80 00 20 */	blr 
