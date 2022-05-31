lbl_8063B6A8:
/* 8063B6A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063B6AC  7C 08 02 A6 */	mflr r0
/* 8063B6B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063B6B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8063B6B8  4B A5 F8 1D */	bl func_8009AED4
/* 8063B6BC  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063B6C0  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063B6C4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063B6C8  7C 7D 1B 78 */	mr r29, r3
/* 8063B6CC  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063B6D0  38 7E 00 08 */	addi r3, r30, 8
/* 8063B6D4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063B6D8  90 1E 00 00 */	stw r0, 0(r30)
/* 8063B6DC  80 65 00 00 */	lwz r3, 0(r5)
/* 8063B6E0  4B DD 1C F5 */	bl _Matrix_to_Mtx_new
/* 8063B6E4  90 7E 00 04 */	stw r3, 4(r30)
/* 8063B6E8  88 1D 01 2C */	lbz r0, 0x12c(r29)
/* 8063B6EC  28 00 00 00 */	cmplwi r0, 0
/* 8063B6F0  41 82 00 40 */	beq lbl_8063B730
/* 8063B6F4  A8 1D 08 10 */	lha r0, 0x810(r29)
/* 8063B6F8  3C 80 80 6E */	lis r4, aSumTv02_on_anime@ha /* 0x806DD334@ha */
/* 8063B6FC  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8063B700  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8063B704  7C 00 0E 70 */	srawi r0, r0, 1
/* 8063B708  38 C4 D3 34 */	addi r6, r4, aSumTv02_on_anime@l /* 0x806DD334@l */
/* 8063B70C  7C 00 07 34 */	extsh r0, r0
/* 8063B710  38 85 00 08 */	addi r4, r5, 8
/* 8063B714  54 07 10 3A */	slwi r7, r0, 2
/* 8063B718  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 8063B71C  7C 66 38 2E */	lwzx r3, r6, r7
/* 8063B720  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 8063B724  90 05 00 00 */	stw r0, 0(r5)
/* 8063B728  90 65 00 04 */	stw r3, 4(r5)
/* 8063B72C  48 00 00 28 */	b lbl_8063B754
lbl_8063B730:
/* 8063B730  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8063B734  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8063B738  3C 60 81 0C */	lis r3, int_sum_tv02_front1_TA_tex_txt@ha /* 0x810C2B40@ha */
/* 8063B73C  38 05 00 08 */	addi r0, r5, 8
/* 8063B740  38 84 00 20 */	addi r4, r4, 0x0020 /* 0xDB060020@l */
/* 8063B744  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063B748  38 03 2B 40 */	addi r0, r3, int_sum_tv02_front1_TA_tex_txt@l /* 0x810C2B40@l */
/* 8063B74C  90 85 00 00 */	stw r4, 0(r5)
/* 8063B750  90 05 00 04 */	stw r0, 4(r5)
lbl_8063B754:
/* 8063B754  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063B758  3C 80 81 0C */	lis r4, int_sum_tv02_on_model@ha /* 0x810C3920@ha */
/* 8063B75C  3C 60 81 0C */	lis r3, int_sum_tv02_off_model@ha /* 0x810C3AD8@ha */
/* 8063B760  3C A0 DE 00 */	lis r5, 0xde00
/* 8063B764  38 06 00 08 */	addi r0, r6, 8
/* 8063B768  38 84 39 20 */	addi r4, r4, int_sum_tv02_on_model@l /* 0x810C3920@l */
/* 8063B76C  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063B770  38 03 3A D8 */	addi r0, r3, int_sum_tv02_off_model@l /* 0x810C3AD8@l */
/* 8063B774  90 A6 00 00 */	stw r5, 0(r6)
/* 8063B778  90 86 00 04 */	stw r4, 4(r6)
/* 8063B77C  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063B780  38 64 00 08 */	addi r3, r4, 8
/* 8063B784  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063B788  90 A4 00 00 */	stw r5, 0(r4)
/* 8063B78C  90 04 00 04 */	stw r0, 4(r4)
/* 8063B790  39 61 00 20 */	addi r11, r1, 0x20
/* 8063B794  4B A5 F7 8D */	bl func_8009AF20
/* 8063B798  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063B79C  7C 08 03 A6 */	mtlr r0
/* 8063B7A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8063B7A4  4E 80 00 20 */	blr 
