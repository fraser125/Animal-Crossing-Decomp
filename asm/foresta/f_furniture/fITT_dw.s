lbl_8063E7CC:
/* 8063E7CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063E7D0  7C 08 02 A6 */	mflr r0
/* 8063E7D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063E7D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E7DC  4B A5 C6 F5 */	bl func_8009AED0
/* 8063E7E0  7C BD 2B 78 */	mr r29, r5
/* 8063E7E4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063E7E8  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063E7EC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063E7F0  7C 7C 1B 78 */	mr r28, r3
/* 8063E7F4  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063E7F8  38 7E 00 08 */	addi r3, r30, 8
/* 8063E7FC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063E800  90 1E 00 00 */	stw r0, 0(r30)
/* 8063E804  80 65 00 00 */	lwz r3, 0(r5)
/* 8063E808  4B DC EB CD */	bl _Matrix_to_Mtx_new
/* 8063E80C  90 7E 00 04 */	stw r3, 4(r30)
/* 8063E810  88 1C 01 2C */	lbz r0, 0x12c(r28)
/* 8063E814  28 00 00 00 */	cmplwi r0, 0
/* 8063E818  41 82 00 54 */	beq lbl_8063E86C
/* 8063E81C  A8 1C 00 02 */	lha r0, 2(r28)
/* 8063E820  2C 00 00 01 */	cmpwi r0, 1
/* 8063E824  40 82 00 0C */	bne lbl_8063E830
/* 8063E828  80 7D 20 90 */	lwz r3, 0x2090(r29)
/* 8063E82C  48 00 00 08 */	b lbl_8063E834
lbl_8063E830:
/* 8063E830  80 7D 00 A0 */	lwz r3, 0xa0(r29)
lbl_8063E834:
/* 8063E834  38 00 00 06 */	li r0, 6
/* 8063E838  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063E83C  7C 03 03 D6 */	divw r0, r3, r0
/* 8063E840  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8063E844  38 A6 00 08 */	addi r5, r6, 8
/* 8063E848  3C 60 80 6E */	lis r3, fITT_switch_on_texture_table@ha /* 0x806DF0CC@ha */
/* 8063E84C  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 8063E850  38 84 00 20 */	addi r4, r4, 0x0020 /* 0xDB060020@l */
/* 8063E854  90 86 00 00 */	stw r4, 0(r6)
/* 8063E858  54 00 17 3A */	rlwinm r0, r0, 2, 0x1c, 0x1d
/* 8063E85C  38 63 F0 CC */	addi r3, r3, fITT_switch_on_texture_table@l /* 0x806DF0CC@l */
/* 8063E860  7C 03 00 2E */	lwzx r0, r3, r0
/* 8063E864  90 06 00 04 */	stw r0, 4(r6)
/* 8063E868  48 00 00 28 */	b lbl_8063E890
lbl_8063E86C:
/* 8063E86C  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8063E870  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8063E874  3C 60 80 EB */	lis r3, int_iku_turkey_TV_f_tex_txt@ha /* 0x80EB7160@ha */
/* 8063E878  38 05 00 08 */	addi r0, r5, 8
/* 8063E87C  38 84 00 20 */	addi r4, r4, 0x0020 /* 0xDB060020@l */
/* 8063E880  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063E884  38 03 71 60 */	addi r0, r3, int_iku_turkey_TV_f_tex_txt@l /* 0x80EB7160@l */
/* 8063E888  90 85 00 00 */	stw r4, 0(r5)
/* 8063E88C  90 05 00 04 */	stw r0, 4(r5)
lbl_8063E890:
/* 8063E890  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063E894  3C 80 80 EB */	lis r4, int_iku_turkey_TV_model_b_model@ha /* 0x80EB77A0@ha */
/* 8063E898  3C 60 80 EB */	lis r3, int_iku_turkey_TV_model_a_model@ha /* 0x80EB7800@ha */
/* 8063E89C  3C A0 DE 00 */	lis r5, 0xde00
/* 8063E8A0  38 06 00 08 */	addi r0, r6, 8
/* 8063E8A4  38 84 77 A0 */	addi r4, r4, int_iku_turkey_TV_model_b_model@l /* 0x80EB77A0@l */
/* 8063E8A8  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063E8AC  38 03 78 00 */	addi r0, r3, int_iku_turkey_TV_model_a_model@l /* 0x80EB7800@l */
/* 8063E8B0  90 A6 00 00 */	stw r5, 0(r6)
/* 8063E8B4  90 86 00 04 */	stw r4, 4(r6)
/* 8063E8B8  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063E8BC  38 64 00 08 */	addi r3, r4, 8
/* 8063E8C0  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063E8C4  90 A4 00 00 */	stw r5, 0(r4)
/* 8063E8C8  90 04 00 04 */	stw r0, 4(r4)
/* 8063E8CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E8D0  4B A5 C6 4D */	bl func_8009AF1C
/* 8063E8D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063E8D8  7C 08 03 A6 */	mtlr r0
/* 8063E8DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8063E8E0  4E 80 00 20 */	blr 
